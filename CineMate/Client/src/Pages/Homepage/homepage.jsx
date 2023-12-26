// MoviesPage.js
import React from "react";
import "bootstrap/dist/css/bootstrap.css";
// Put any other imports below so that CSS from your
// components takes precedence over default styles.
import "./homepage.css";
const HomePage = () => {
  return (
    <>
      <nav className="navbar navbar-expand-lg navbar-dark">
        <a className="navbar-brand" href="#">
          Movies
        </a>
        <button
          className="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarNav">
          <ul className="navbar-nav ml-auto">
            <li className="nav-item">
              <a className="nav-link" href="#">
                Home
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">
                About Us
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">
                Contact Us
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">
                Login
              </a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">
                Movies
              </a>
            </li>
          </ul>
        </div>
      </nav>

      <div className="jumbotron text-center">
        <h1 className="display-4">Welcome to CINEMATE</h1>
        <p className="lead">Explore the latest movies and enjoy your time!</p>
      </div>

      <div class="carousel-heading"></div>
      <div
        id="carouselExampleIndicators"
        class="carousel slide caroo"
        data-ride="carousel"
      >
        <ol class="carousel-indicators">
          <li
            data-target="#carouselExampleIndicators"
            data-slide-to="0"
            class="active"
          ></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="d-flex justify-content-center align-items-center caroo">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img
                class="d-block w-100"
                src="https://images.unsplash.com/photo-1504805572947-34fad45aed93?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZWJvb2slMjBjb3ZlcnxlbnwwfHwwfHx8MA%3D%3D&fbclid=IwAR38gajnr5Df3G37CD3Sbion57KB34jC3dLxg64hmqEAJlEtfrPPTFfajHs"
                alt="First slide"
              />
            </div>
            <div class="carousel-item">
              <img
                class="d-block w-100"
                src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT5h-D8zRBcYeApKX24k_Z8aizDnsxnEg1VrWWwKP2E9o3TJ1Az&fbclid=IwAR0CH_JzUc73L4yz6jXD6nBue6nj_7SZWUOFVNMLHS_DXCFZUhEg403CvtY"
                alt="Second slide"
              />
            </div>
            <div class="carousel-item">
              <img
                class="d-block w-100"
                src="https://i.pinimg.com/736x/9c/2f/64/9c2f640021745f0170770925a9b68c6a.jpg"
                alt="Third slide"
              />
            </div>
          </div>
        </div>

        <a
          class="carousel-control-prev"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="prev"
        >
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a
          class="carousel-control-next"
          href="#carouselExampleIndicators"
          role="button"
          data-slide="next"
        >
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <h3>
        <em>Now Showing</em>
      </h3>

      {/* <!-- Movie Cards (Sample) --> */}
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="card">
              <img
                src="https://via.placeholder.com/150"
                class="card-img-top"
                alt="Movie 1"
              />
              <div class="card-body">
                <h5 class="card-title">Movie 1</h5>
                <p class="card-text">Description for Movie 1.</p>
                <a href="#" class="btn btn-primary">
                  Details
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <img
                src="https://via.placeholder.com/150"
                class="card-img-top"
                alt="Movie 2"
              />
              <div class="card-body">
                <h5 class="card-title">Movie 2</h5>
                <p class="card-text">Description for Movie 2.</p>
                <a href="#" class="btn btn-primary">
                  Details
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <img
                src="https://via.placeholder.com/150"
                class="card-img-top"
                alt="Movie 3"
              />
              <div class="card-body">
                <h5 class="card-title">Movie 3</h5>
                <p class="card-text">Description for Movie 3.</p>
                <a href="#" class="btn btn-primary">
                  Details
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <h3>
        <em>Coming Soon</em>
      </h3>
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <div class="card">
              <img
                src="https://via.placeholder.com/150"
                class="card-img-top"
                alt="Movie 1"
              />
              <div class="card-body">
                <h5 class="card-title">Movie 1</h5>
                <p class="card-text">Description for Movie 1.</p>
                <a href="#" class="btn btn-primary">
                  Details
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <img
                src="https://via.placeholder.com/150"
                class="card-img-top"
                alt="Movie 2"
              />
              <div class="card-body">
                <h5 class="card-title">Movie 2</h5>
                <p class="card-text">Description for Movie 2.</p>
                <a href="#" class="btn btn-primary">
                  Details
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-4">
            <div class="card">
              <img
                src="https://via.placeholder.com/150"
                class="card-img-top"
                alt="Movie 3"
              />
              <div class="card-body">
                <h5 class="card-title">Movie 3</h5>
                <p class="card-text">Description for Movie 3.</p>
                <a href="#" class="btn btn-primary">
                  Details
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </>
  );
};

export default HomePage;