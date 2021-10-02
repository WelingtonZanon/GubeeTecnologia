import './styles.css';
import 'bootstrap/js/src/collapse.js';
import ImgLogo from 'assets/img/logotipo.png';

const Navbar = () => {
  return (
    <nav className="navbar navbar-expand-md bg-primary navbar-dark main-nav ">
      <div className="container-fluid">
        <a href="link" className="nav-logo-text">
          <img src={ImgLogo} alt="Gubee tecnologi" width="120"/>
        </a>
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
              <a href="link" className="active">
                HOME
              </a>
            </li>
            <li>
              <a href="link">CATÁLOGO</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
