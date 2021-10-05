import { Stack } from './stack';
import { TargetMarkets } from './targetMarkets';

export type Product = {
  id: number;
  name: string;
  description: string;
  price: number;
  imgUrl: string;
  stacks: Stack[];
  targetMarkets: TargetMarkets[];
};
