import CONSTANT from "@nutech/utils/constant";
import axios from "axios";

const axiosInstance = axios.create({
  baseURL: CONSTANT.BASE_URL,
  // timeout: 5000,
});

// Interceptor request
axiosInstance.interceptors.request.use(
  (config) => {
    // Modifikasi config request sebelum dikirim
    // Misalnya, tambahkan header Authorization
    config.headers["Authorization"] = "Bearer token";

    return config;
  },
  (error) => {
    // Tangani kesalahan request
    return Promise.reject(error);
  }
);

// Interceptor response
axiosInstance.interceptors.response.use(
  (response) => {
    // Tangani respons sukses
    return response;
  },
  (error) => {
    // Tangani kesalahan respons
    return Promise.reject(error);
  }
);

export default axiosInstance;
