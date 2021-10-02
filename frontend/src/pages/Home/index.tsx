import './styles.css';
import ButtonIcon from 'components/ButtonIcon';
import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <div className="home-container bg-primary">
      <div className="home-content-container ">
        <h1>Conheça o melhor catálogo de produtos</h1>
        <p>
          Alavanque as vendas do seu e-commerce com a GuBee, o hub de integração
          com marketplaces. Comece agora mesmo integrando com os principais
          marketplaces do mercado.
        </p>
        <Link to="/products">
          <ButtonIcon />
        </Link>
      </div>
    </div>
  );
};
export default Home;
