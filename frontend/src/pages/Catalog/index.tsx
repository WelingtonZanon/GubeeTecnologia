import Pagination from 'components/Pagination';
import ProductCard from 'components/ProductCard';
import { Link } from 'react-router-dom';
import { Product } from 'types/product';
import './styles.css';

const Catalog = () => {
  const product: Product = {
    id: 4,
    name: 'Gubee ',
    description: 'Ferramenta de integração para marketplaces',
    price: 1800.0,
    imgUrl:
      'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/25-big.jpg',
    stacks: [
      {
        id: 3,
        name: 'Kafka',
      },
      {
        id: 1,
        name: 'Java 10',
      },
    ],
    targetMarkets: [
      {
        id: 1,
        name: 'Ecommerce',
      },
    ],
  };

  return (
    <div className="container my-4 catalog-container">
      <div className="row catalog-title-container">
        <h1>Catálogo de Produtos</h1>
      </div>
      <div className="row">
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <Link to="/products/1">
            <ProductCard product={product} />
          </Link>
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="row">
          <Pagination />
        </div>
      </div>
    </div>
  );
};
export default Catalog;
