import { Fragment, useState } from "react";
import Button from "@nutech/components/Button";
import { storage } from "@nutech/configs/firebase";
import {
  ref,
  uploadBytesResumable,
  getDownloadURL,
  deleteObject,
} from "firebase/storage";
import axiosInstance from "@nutech/configs/axiosInstance";
import Swal from "sweetalert2";
import { ProductResposne } from "src/interface/product";
import { PenIcons } from "@nutech/assets/index";
interface ProductProps {
  fetchData: () => void;
  initialData?: ProductResposne;
  mode?: "add" | "update";
}
const Modal = ({ fetchData, mode, initialData }: ProductProps) => {
  const [isOpen, setIsOpen] = useState(false);
  const data = {
    id: initialData?.uuid || "",
    name: initialData?.name || "",
    images: initialData?.images || "",
    purchase_price: initialData?.purchase_price || 0,
    selling_price: initialData?.selling_price || 0,
    stock: initialData?.stock || 0,
  };
  const [form, setForm] = useState(data);
  const handleChangeForm = (event: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = event.target;
    setForm((prevState) => ({
      ...prevState,
      [name]: value,
    }));
  };
  const handleOpenModal = () => {
    setIsOpen(true);
  };

  const handleCloseModal = () => {
    setIsOpen(false);
    setForm(data);
  };
  const handleImageChange = async (e: any) => {
    e.preventDefault();
    const file = e.target.files?.[0];

    if (!file) return;
    const allowedTypes = ["image/png", "image/jpeg"];
    const allowedSize = 100 * 1024; // 100 KB

    // Validate file type
    if (!allowedTypes.includes(file.type)) {
      alert("Tipe file yang diperbolehkan hanya PNG dan JPG.");
      return;
    }

    // Validate file size
    if (file.size > allowedSize) {
      alert("Ukuran file melebihi batas maksimal 100 KB.");
      return;
    }

    const storageRef = ref(storage, `files/${file.name}`);
    const uploadTask = uploadBytesResumable(storageRef, file);

    uploadTask.on("state_changed", async () => {
      try {
        const downloadURL = await getDownloadURL(uploadTask.snapshot.ref);
        if (form.images.length !== 0) {
          const previousImageRef = ref(storage, `files/${form.images}`);
          deleteObject(previousImageRef);
        }
        setForm((prevState) => ({
          ...prevState,
          images: downloadURL,
        }));
      } catch (error) {
        console.log(error);
      }
    });
  };

  const handleSubmit = async () => {
    try {
      if (mode === "add") {
        const REQ = {
          name: form.name,
          images: form.images,
          purchase_price: form.purchase_price,
          selling_price: form.selling_price,
          stock: form.stock,
        };
        await axiosInstance.post(`/products`, REQ);
        Swal.fire("Berhasil", "Data berhasil ditambahkan", "success").then(
          () => {
            setForm(data);
            setIsOpen(false);
            fetchData();
          }
        );
      } else if (mode === "update") {
        await axiosInstance.put(`/products/${form.id}`, form);
        Swal.fire("Berhasil", "Data berhasil Diubah", "success").then(() => {
          setForm(data);
          setIsOpen(false);
          fetchData();
        });
      }
    } catch (error: any) {
      console.log(error);
      if (
        error.response.data.errors.name[0] == "The name has already been taken."
      ) {
        Swal.fire({
          icon: "error",
          title: "Gagal",
          text: "Nama Product sudah terdaftar",
        });
      } else if (error.message == "Request failed with status code 422") {
        Swal.fire({
          icon: "error",
          title: "Gagal",
          text: "Gagal Memproses",
        });
      }
    }
  };
  console.log(form);
  return (
    <Fragment>
      <div className="flex justify-center">
        {mode === "add" ? (
          <Button
            onClick={handleOpenModal}
            className="rounded-lg bg-green-50 px-8 py-2.5 text-sm font-medium text-green-500 hover:bg-green-100 hover:text-green-600"
          >
            Tambah
          </Button>
        ) : (
          <button
            type="button"
            onClick={handleOpenModal}
            className="h-10 px-6 font-semibold rounded-full hover:bg-violet-300 text-white bg-white border border-1 border-violet-600"
          >
            <img src={PenIcons} />
          </button>
        )}
      </div>

      {isOpen && (
        <div className="fixed inset-0 flex items-center justify-center z-40">
          <div
            className="absolute inset-0 bg-gray-600 bg-opacity-75"
            onClick={handleCloseModal}
          ></div>

          <div className="bg-white rounded-lg shadow-xl max-w-lg p-8 z-50 w-full mx-auto">
            <h1 className="text-center font-bold text-lg text-slate-800 mb-3">
              Tambah Barang
            </h1>
            <form onSubmit={handleSubmit} className="space-y-3 px-3 ">
              <>
                <div className="">
                  <label
                    className="block text-gray-700 text-sm font-bold mb-2"
                    htmlFor="images"
                  >
                    Foto Barang
                  </label>
                  <input
                    className="hidden"
                    type="file"
                    id="images"
                    accept="image/png, image/jpg"
                    onChange={handleImageChange}
                    required
                  />
                  <label
                    className="w-full h-32 flex items-center justify-center border border-gray-300 rounded-md cursor-pointer"
                    htmlFor="images"
                  >
                    {form.images ? (
                      <img src={form.images} alt="Preview" className="h-full" />
                    ) : (
                      <span className="text-gray-500">Pilih Gambar</span>
                    )}
                  </label>
                </div>
                <div className="">
                  <label
                    className="block text-gray-700 text-sm font-bold mb-2"
                    htmlFor="name"
                  >
                    Nama Barang
                  </label>
                  <input
                    className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-indigo-500"
                    type="text"
                    id="name"
                    name="name"
                    value={form.name}
                    placeholder="Product 1"
                    required
                    onChange={handleChangeForm}
                  />
                </div>
                <div className="flex gap-3">
                  <div className="w-1/2">
                    <label
                      className="block text-gray-700 text-sm font-bold mb-2"
                      htmlFor="purchase_price"
                    >
                      Harga Beli
                    </label>
                    <input
                      className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-indigo-500"
                      type="number"
                      id="purchase_price"
                      name="purchase_price"
                      placeholder="40000"
                      value={form.purchase_price}
                      required
                      onChange={handleChangeForm}
                    />
                  </div>
                  <div className="w-1/2">
                    <label
                      className="block text-gray-700 text-sm font-bold mb-2"
                      htmlFor="selling_price"
                    >
                      Harga Jual
                    </label>
                    <input
                      className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-indigo-500"
                      type="number"
                      id="selling_price"
                      name="selling_price"
                      placeholder="40000"
                      value={form.selling_price}
                      required
                      onChange={handleChangeForm}
                    />
                  </div>
                </div>
                <div className="">
                  <label
                    className="block text-gray-700 text-sm font-bold mb-2"
                    htmlFor="stock"
                  >
                    Stok
                  </label>
                  <input
                    className="w-full px-3 py-2 border border-gray-300 rounded-md focus:outline-none focus:border-indigo-500"
                    type="number"
                    id="stock"
                    name="stock"
                    placeholder="40000"
                    value={form.stock}
                    required
                    onChange={handleChangeForm}
                  />
                </div>
              </>

              <div className="flex justify-between">
                <Button
                  onClick={handleCloseModal}
                  className="rounded-lg bg-blue-50 px-8 py-2.5 text-sm font-medium border border-1 border-red-400 text-red-600"
                >
                  Cancel
                </Button>
                <Button
                  btnType="button"
                  onClick={handleSubmit}
                  className="rounded-lg  px-8 py-2.5 text-sm font-medium text-blue-500 bg-blue-100 hover:text-blue-600"
                >
                  Save
                </Button>
              </div>
            </form>
          </div>
        </div>
      )}
    </Fragment>
  );
};

export default Modal;
