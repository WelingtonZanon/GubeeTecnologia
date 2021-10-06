import './styles.css';
import { ReactComponent as SearchIcon } from 'assets/img/search-icon.svg';
import { Stack } from 'types/stack';
import Select from 'react-select';
import { useEffect, useState } from 'react';
import { requestBackend } from 'util/requests';
import { TargetMarkets } from 'types/targetMarkets';
import { Controller, useForm } from 'react-hook-form';

export type ProductFilterData = {
  name: string;
  stack: Stack | null;
  targetMarket: TargetMarkets | null;
};

type Props = {
  onSubmitFilter: (data: ProductFilterData) => void;
};

const ProductFilter = ({ onSubmitFilter }: Props) => {

  const [selectStacks, setSelectStacks] = useState<Stack[]>([]);

  const [selectTargetMarkets, setSelectTargetMarkets] = useState<TargetMarkets[]>([]);

  

  const { register, handleSubmit, setValue, getValues, control } =
    useForm<ProductFilterData>();

  const onSubmit = (FormData: ProductFilterData) => {
    onSubmitFilter(FormData);
  };

  const handleFormClear = () => {
    setValue('name', '');
    setValue('stack', null);
    setValue('targetMarket', null)
  };

  const handleChangeStacks = (value: Stack) => {
    setValue('stack', value);
  
    const obj: ProductFilterData = {
      name: getValues('name'),
      stack: getValues('stack'),
      targetMarket: getValues('targetMarket')
    };
    onSubmitFilter(obj);
  };

  const handleChangeTargetMarket = (value: TargetMarkets) => {
    setValue('targetMarket', value);
  
    const obj: ProductFilterData = {
      name: getValues('name'),
      stack: getValues('stack'),
      targetMarket: getValues('targetMarket')
    };
    onSubmitFilter(obj);
  };

  useEffect(() => {
    requestBackend({ url: '/stacks' }).then((response) => {
      setSelectStacks(response.data);
    });
  }, []);

  useEffect(() => {
    requestBackend({ url: '/targetmarkets' }).then((response) => {
      setSelectTargetMarkets(response.data);
    });
  }, []);

  return (
    <div className="product-filter-container">
      <form onSubmit={handleSubmit(onSubmit)} className="product-filter-form">
        <div className="product-filter-name-container">
          <input
            {...register('name')}
            type="text"
            className="form-control"
            placeholder="Produto"
            name="name"
          />
          <button className="product-filter-search-icon">
            <SearchIcon />
          </button>
        </div>
        <div className="product-filter-bottom-container">
          <div className="product-filter-select-container">
            <Controller
              name="stack"
              control={control}
              render={({ field }) => (
                <Select
                  {...field}
                  options={selectStacks}
                  isClearable
                  onChange={(value) => handleChangeStacks(value as Stack)}
                  classNamePrefix="selector-select"
                  placeholder="tecnologia"
                  getOptionLabel={(stack: Stack) => stack.name}
                  getOptionValue={(stack: Stack) => String(stack.id)}
                />
              )}
            />
          </div>
          <div className="product-filter-select-container">
            <Controller
              name="targetMarket"
              control={control}
              render={({ field }) => (
                <Select
                  {...field}
                  options={selectTargetMarkets}
                  isClearable
                  onChange={(value) => handleChangeTargetMarket(value as TargetMarkets)}
                  classNamePrefix="selector-select"
                  placeholder="merdado"
                  getOptionLabel={(targetMarket: TargetMarkets) => targetMarket.name}
                  getOptionValue={(targetMarket: TargetMarkets) => String(targetMarket.id)}
                />
              )}
            />
          </div>
          <button onClick={handleFormClear} className="btn btn-primary">
            LIMPAR
          </button>
        </div>
      </form>
    </div>
  );
};

export default ProductFilter;
