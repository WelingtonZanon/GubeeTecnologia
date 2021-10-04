import './styles.css';
import 'bootstrap/js/src/collapse.js';
import ImgLogo from 'assets/img/logotipo.png';
import { Link, NavLink } from 'react-router-dom';

const Navbar = () => {
  return (
    <nav className="navbar navbar-expand-md bg-primary navbar-dark main-nav ">
      <div className="container-fluid">
        <Link to="/" className="nav-logo-text">
          <img src={ImgLogo} alt="Gubee tecnologi" width="180" />
        </Link>
        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#Gubee-navbar"
          aria-controls="Gubee-navbar"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="Gubee-navbar">
          <ul className="navbar-nav offset-md-2 main-menu">
            <li>
              <NavLink to="/" activeClassName="active" exact>
                HOME
              </NavLink>
            </li>
            <li>
              <NavLink to="/products" activeClassName="active">CATÁLOGO</NavLink>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
