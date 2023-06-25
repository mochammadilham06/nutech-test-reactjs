import React, { ReactNode, MouseEvent, CSSProperties } from "react";

type ButtonProps = {
  children?: ReactNode;
  onClick?: (event: MouseEvent<HTMLButtonElement>) => void;
  className?: string;
  style?: CSSProperties;
  btnType?: "button" | "submit" | "reset";
};

const Button: React.FC<ButtonProps> = ({
  children,
  onClick,
  className,
  style,
  btnType = "button",
}) => {
  return (
    <button
      type={`${btnType}`}
      className={`${className}`}
      onClick={onClick}
      style={style}
    >
      {children}
    </button>
  );
};

export default Button;
