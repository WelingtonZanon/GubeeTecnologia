import axios from 'axios';
import Pagination from 'components/Pagination';
import ProductCard from 'components/ProductCard';
import ProductFilter from 'components/ProductFilter';
import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Product } from 'types/product';
import { AxiosParams } from 'types/vendor/axios';
import { SpringPage } from 'types/vendor/spring';
import { BASE_URL } from 'util/requests';
import './styles.css';

const Catalog = () => {
  const [page, setPage] = useState<SpringPage<Product>>();

  const getProducts = (pageNumber: number) => {
    const params: AxiosParams = {
      method: 'GET',
      url: `${BASE_URL}/products`,
      params: {
        page: pageNumber,
        size: 12,
      },
    };

    axios(params).then((response) => {
      setPage(response.data);
    });
  };

  useEffect(() => {
    getProducts(0);
  }, []);

  return (
    <div className="container my-4 catalog-container">
      <div className="row catalog-title-container">
        <h1>Catálogo de Produtos</h1>
        <ProductFilter/>
      </div>
      <div className="row">
        {page?.content.map((product) => (
          <div className="col-sm-6 col-lg-4 col-xl-3" key={product.id}>
            <Link to={`products/${product.id}`} key={product.id}>
              <ProductCard product={product} />
            </Link>
          </div>
        ))}
        <div className="row">
          <Pagination
            pageCount={page ? page.totalPages : 0}
            range={3}
            onChange={getProducts}
          />
        </div>
      </div>
    </div>
  );
};
export default Catalog;
