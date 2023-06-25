import { FC } from "react";

type PaginationProps = {
  currentPage: number;
  lastPage: number;
  handlePageChange: (pageNumber: number) => void;
};

const Pagination: FC<PaginationProps> = ({
  currentPage,
  lastPage,
  handlePageChange,
}) => {
  return (
    <div className="flex justify-center my-5">
      {Array.from({ length: lastPage }, (_, index) => index + 1).map((page) => (
        <button
          key={page}
          className={`px-3 py-2 rounded-md mx-1 ${
            page === currentPage
              ? "bg-blue-500 text-white"
              : "bg-gray-300 text-gray-600"
          }`}
          onClick={() => handlePageChange(page)}
        >
          {page}
        </button>
      ))}
    </div>
  );
};

export default Pagination;
