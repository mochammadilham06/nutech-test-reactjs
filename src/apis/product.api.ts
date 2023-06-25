import axiosInstance from "@nutech/configs/axiosInstance";

const ApiProducts = {
  async functionGetData(
    debouncedSearchTerm?: string,
    per_page?: number,
    currentPage?: number
  ) {
    try {
      const { data } = await axiosInstance.get(`/products`, {
        params: {
          search: debouncedSearchTerm,
          per_page: per_page,
          page: currentPage,
        },
      });
      return data.data;
    } catch (error) {
      console.log(error);
    }
  },

  async functionStoreData(props?: any) {
    try {
      const res = await axiosInstance.post(`/products`, props);
      return res;
    } catch (error) {
      console.log(error);
    }
  },

  async functionUpdateData(props?: any) {
    try {
      const res = await axiosInstance.put(`/products/${props.id}`, props);
      return res;
    } catch (error) {
      console.log(error);
    }
  },

  async functionDeleteData(id?: string) {
    try {
      const res = await axiosInstance.delete(`/products/${id}`);
      return res;
    } catch (error) {
      console.log(error);
    }
  },
};

export default ApiProducts;
