import CONSTANT from "@nutech/utils/constant";
import axios from "axios";

const axiosInstance = axios.create({
  baseURL: CONSTANT.BASE_URL,
  // timeout: 5000,
});

export default axiosInstance;
