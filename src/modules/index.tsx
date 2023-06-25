import ApiProducts from "@nutech/apis/product.api";
import ProductCard from "@nutech/components/Card";
import Modal from "@nutech/components/Modal";
import Navbar from "@nutech/components/Navbar";
import Pagination from "@nutech/components/Pagination";
import Spinner from "@nutech/components/Spinner";
import useDebounce from "@nutech/utils/useDebounce";
import { Fragment, useEffect, useState } from "react";
import { ProductResposne } from "src/interface/product";

const HomePage = () => {
  const [product, setProduct] = useState<ProductResposne[]>();
  const [currentPage, setCurrentPage] = useState<number>(1);
  const [lastPage, setLastPage] = useState<number>(1);
  const [totalProducts, setTotalProducts] = useState(0);
  const [search, setSearch] = useState<string>("");
  const debouncedSearchTerm = useDebounce(search, 1000);
  const [loading, setLoading] = useState<boolean>(false);
  const per_page = 6;

  const fetchData = async () => {
    try {
      setLoading(true);
      const { products, last_page, total } = await ApiProducts.functionGetData(
        debouncedSearchTerm,
        per_page,
        currentPage
      );
      setProduct(products);
      setLastPage(last_page);
      setTotalProducts(total);
    } catch (error) {
      console.error(error);
    } finally {
      setLoading(false);
    }
  };
  useEffect(() => {
    fetchData();
    if (currentPage > lastPage) {
      setCurrentPage(currentPage - 1);
    }
  }, [currentPage, debouncedSearchTerm, lastPage]);

  const handlePageChange = (pageNumber: number) => {
    setCurrentPage(pageNumber);
  };
  const handleSearch = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { value } = e.target;
    setSearch(value);
  };
  return (
    <Fragment>
      <Navbar />
      <div className="flex gap-5 justify-center mb-5 md:justify-end items-center me-5">
        <label htmlFor="search">Cari : </label>
        <input
          className="w-1/2 md:w-1/4 px-3 py-1 border border-gray-300 rounded-md focus:outline-none focus:border-indigo-500"
          type="text"
          id="search"
          placeholder="Search....."
          value={search}
          onChange={handleSearch}
        />
      </div>
      <Modal fetchData={fetchData} mode="add" />
      {loading ? (
        <Spinner />
      ) : product?.length !== 0 ? (
        <Fragment>
          <section id="main">
            <div className="grid md:grid-cols-4 xl:grid-cols-3 gap-2">
              {product?.map((item) => (
                <div
                  className="col-span-3 md:col-span-2 xl:col-span-1 mb-4"
                  key={item.uuid}
                >
                  <ProductCard product={item} fetchData={fetchData} />
                </div>
              ))}
            </div>
          </section>
          <Pagination
            currentPage={currentPage}
            lastPage={lastPage}
            handlePageChange={handlePageChange}
          />
        </Fragment>
      ) : (
        <p className="text-center text-3xl font-bold mt-36">Tidak ada data</p>
      )}
    </Fragment>
  );
};

export default HomePage;
