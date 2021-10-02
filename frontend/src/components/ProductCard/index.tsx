import './styles.css';
import ProductImg from 'assets/img/product.png';

const ProductCard = () => {
  return (
    <div>
      <div>
        <img src={ProductImg} alt="Imagen do produto"></img>
      </div>
      <div>
        <h6>Nome do produto</h6>
        <p>2345.67</p>
      </div>
    </div>
  );
};

export default ProductCard;
