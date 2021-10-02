import Navbar from 'components/Navbar';
import './styles.css';
import ButtonIcon from 'components/ButtonIcon';

const Home = () => {
  return (
    <>
      <Navbar />
      <div className="home-container bg-primary">
        <div className="home-content-container ">
          <h1>Conheça o melhor catálogo de produtos</h1>
          <p>
            Alavanque as vendas do seu e-commerce com a GuBee, o hub de
            integração com marketplaces. Comece agora mesmo integrando com os
            principais marketplaces do mercado.
          </p>
          <ButtonIcon />
        </div>
      </div>
    </>
  );
};
export default Home;
