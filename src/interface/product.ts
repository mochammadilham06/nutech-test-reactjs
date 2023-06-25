export interface ProductResposne {
  uuid: string;
  name: string;
  images: string;
  purchase_price: number;
  selling_price: number;
  stock: number;
}

export interface ProductProps {
  fetchData: () => void;
  initialData?: ProductResposne;
  mode?: "add" | "update";
}
