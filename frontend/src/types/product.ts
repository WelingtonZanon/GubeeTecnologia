import { Stack } from './stack';
import { targetMarkets } from './targetMarkets';

export type Product = {
  id: number;
  name: string;
  description: string;
  price: number;
  imgUrl: string;
  stacks: Stack[];
  targetMarkets: targetMarkets[];
};
