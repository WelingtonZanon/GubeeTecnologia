import './styles.css';
import { ReactComponent as ArrowIcon } from 'assets/img/Seta.svg';
import ProductPrice from 'components/ProductPrice';
import { Link } from 'react-router-dom';
import { Product } from 'types/product';
import axios from 'axios';
import { BASE_URL } from 'util/requests';

const ProductDetails = () => {

  let product : Product;

  axios.get(BASE_URL + "/products/2")
  .then(response => {
    console.log(response.data)
  });


  return (
    <div className="base-card produc-details-container">
      <div className="product-details-card">
        <Link to="/products">
          <div className="goback-container">
            <ArrowIcon />
            <h2>VOLTAR</h2>
          </div>
        </Link>
        <div className="row">
          <div className="col-xl-6">
            <div className="img-container">
              <img
                src="https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/25-big.jpg"
                alt=""
              />
            </div>
            <div className="name-price-container">
              <h1>Nome Produto</h1>
              <ProductPrice price={1000.0} />
            </div>
          </div>
          <div className="col-xl-6">
            <div className="description-container">
              <h2>Descrição do produto</h2>
              <p>
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. Qui,
                officia?
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};
export default ProductDetails;
