// Import the functions you need from the SDKs you need
import CONSTANT from "@nutech/utils/constant";
import { initializeApp } from "firebase/app";
import { getStorage } from "firebase/storage";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
const firebaseConfig = {
  apiKey: CONSTANT.FIREBASE_API_KEY,
  authDomain: CONSTANT.FIREBASE_AUTH_DOMAIN,
  projectId: CONSTANT.FIREBASE_PROJECT_ID,
  storageBucket: CONSTANT.FIREBASE_STORAGE_BUCKET,
  messagingSenderId: CONSTANT.FIREBASE_MESSAGING_SENDER,
  appId: CONSTANT.FIREBASE_API_ID,
};

// Initialize Firebase
export const app = initializeApp(firebaseConfig);
export const storage = getStorage();
