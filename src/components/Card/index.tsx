import { TrashIcons } from "@nutech/assets/index";
import { ProductResposne } from "src/interface/product";
import Swal from "sweetalert2";
import { storage } from "@nutech/configs/firebase";
import { ref, deleteObject } from "firebase/storage";
import Modal from "../Modal";
import ApiProducts from "@nutech/apis/product.api";

interface ProductProps {
  product: ProductResposne;
  fetchData: () => void;
}
const ProductCard = ({ product, fetchData }: ProductProps) => {
  const handleDelete = (id: string, imageUrl: string) => {
    Swal.fire({
      title: "Hapus Produk?",
      text: "Data akan dihapus permanen",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#d33",
      cancelButtonColor: "#3085d6",
      confirmButtonText: "Hapus",
      reverseButtons: true,
    }).then(async (result) => {
      if (result.isConfirmed) {
        try {
          const storageRef = ref(storage, imageUrl);
          await deleteObject(storageRef);
          ApiProducts.functionDeleteData(id);
          Swal.fire("Berhasil", "Data berhasil dihapus", "success").then(() => {
            fetchData();
          });
        } catch (error) {
          Swal.fire({
            icon: "error",
            title: "Gagal",
            text: "Gagal menghapus data",
          });
          console.log(error);
        }
      }
    });
  };
  return (
    <div className="flex font-sans border border-1 rounded-2xl shadow-xl">
      <div className="flex-none w-36 lg:w-44 relative">
        <img
          src={product.images}
          alt=""
          className="absolute inset-0 w-full h-full object-cover rounded-lg"
          loading="lazy"
        />
      </div>
      <div className="flex-auto p-6">
        <div className="flex flex-wrap">
          <h1 className="flex-auto font-medium text-slate-900">
            {product.name}
          </h1>
          <div className="w-full flex-none mt-2 order-1 text-xl font-bold text-violet-600">
            {`Rp. ${product.selling_price}`}
          </div>
        </div>

        <div className="flex space-x-4 my-5 justify-center text-sm font-medium">
          <div className="flex justify-center space-x-4">
            <Modal mode="update" initialData={product} fetchData={fetchData} />
            <button
              onClick={() => handleDelete(product.uuid, product.images)}
              className="h-10 px-6 font-semibold rounded-full border border-red-600 text-slate-900 hover:bg-red-300"
              type="button"
            >
              <img src={TrashIcons} />
            </button>
          </div>
        </div>
        <div className="text-sm font-medium text-slate-400">
          {product.stock} stock
        </div>
      </div>
    </div>
  );
};

export default ProductCard;
