import { AxiosRequestConfig } from 'axios';
import Pagination from 'components/Pagination';
import ProductCard from 'components/ProductCard';
import ProductFilter, { ProductFilterData } from 'components/ProductFilter';
import { useCallback, useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { Product } from 'types/product';
import { SpringPage } from 'types/vendor/spring';
import { requestBackend } from 'util/requests';
import './styles.css';

type ControlComponentsData = {
  activePage: number;
  filterData : ProductFilterData;
}

const Catalog = () => {
  const [page, setPage] = useState<SpringPage<Product>>();

  const [controlComponentsData, setControlComponentsData] = useState<ControlComponentsData>({
    activePage: 0,
    filterData: { name:'', stack: null, targetMarket: null},
  });

  const handlePageChange = (pageNumber: number) => {
    setControlComponentsData({ activePage: pageNumber, filterData: controlComponentsData.filterData });
  };

  const handleSubmitFilter =(data: ProductFilterData) => {
    setControlComponentsData({ activePage: 0, filterData: data }); 
  }

  const getProducts = useCallback(() => {
    const config: AxiosRequestConfig = {
      method: 'GET',
      url: '/products',
      params: {
        page: controlComponentsData.activePage,
        size: 12,
        name: controlComponentsData.filterData.name,
        stackId: controlComponentsData.filterData.stack?.id,
        targetMarketId: controlComponentsData.filterData.targetMarket?.id
      },
    };

    requestBackend(config).then((response) => {
      setPage(response.data);
    });
  }, [controlComponentsData]);

  useEffect(() => {
    getProducts();
  }, [getProducts]);

  return (
    <div className="container my-4 catalog-container">
      <div className="row catalog-title-container">
        <h1>Catálogo de Produtos</h1>
        <ProductFilter onSubmitFilter={handleSubmitFilter} />
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
            forcePage={page?.number}
            pageCount={page ? page.totalPages : 0}
            range={3}
            onChange={handlePageChange}
          />
        </div>
      </div>
    </div>
  );
};
export default Catalog;
