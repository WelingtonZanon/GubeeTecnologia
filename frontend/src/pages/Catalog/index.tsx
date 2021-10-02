import ProductCard from 'components/ProductCard';
import { Product } from 'types/product';
import './styles.css';

const Catalog = () => {
  const product: Product = {
    id: 4,
    name: 'Gubee ',
    description: 'Ferramenta de integração para marketplaces',
    price: 1800.0,
    imgUrl: 'https://raw.githubusercontent.com/devsuperior/dscatalog-resources/master/backend/img/25-big.jpg',
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
    <div className="container bg-primary my-4">
      <div className="row">
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>
        <div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div><div className="col-sm-6 col-lg-4 col-xl-3">
          <ProductCard product={product} />
        </div>

      </div>
    </div>
  );
};
export default Catalog;
