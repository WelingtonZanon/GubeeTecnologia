import './styles.css';
import { ReactComponent as SearchIcon } from 'assets/img/search-icon.svg';
import { Stack } from 'types/stack';
import { Controller, useForm } from 'react-hook-form';
import { Product } from 'types/product';
import Select from 'react-select';
import { useEffect, useState } from 'react';

type ProductFilterData = {
  name: string;
  stack: Stack;
};

const ProductFilter = () => {
 
    const [selectStacks, setSelectStacks] = useState<Stack[]>([]);
    
  const {
    register,
    handleSubmit,
    formState: { errors },
    setValue,
    control,
  } = useForm<ProductFilterData>();

  const onSubmit = (FormData: ProductFilterData) => {
    console.log('enviou', FormData);
  };
/*
  useEffect(() => {
      requestBackend ({ url : '/stacks'}).then((response) => {
          setSelectStacks(response.data.content);
      });
  }, []); **/

  return (
    <div className="base-card product-filter-container">
      <form onSubmit={handleSubmit(onSubmit)} className="product-filter-form">
        <div className="product-filter-name-container">
          <input
            {...register('name')}
            type="text"
            className="Nome do produto"
            name="name"
          />
          <button>
            <SearchIcon />
          </button>
        </div>
        <div className="product-filter-bottom-container">
          <div className="product-filter-stack-container">
  
          </div>
          <button className="btn btn-outline-secondary">LIMPAR</button>
        </div>
      </form>
    </div>
  );
};

export default ProductFilter;
function requestBackend(arg0: { url: string; }) {
    throw new Error('Function not implemented.');
}

