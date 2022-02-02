<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="bootstrap/js/bootstrap.min.js"></script>
  

    <title>Bootstrap 5</title>
    <style>
       
        a{
            text-decoration: none;
            color:#fff;
        }
        a:hover{
            color:black;
            text-decoration: none;
        }
        i{
            margin-left: 10px;
            margin-top: 20px;
        }
        #d2
        {
            font-size:30px;
            color:red;
            font-family:Cooper;
        }
        #d3
        {
            font-size: 20px;
            color:black;
            font-family:elephant;
        }
        video {
  max-width: 100%;
  height: auto;
}
        
     
    </style>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Action</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
    <img src="b.jpg" class="img-fluid" alt="Responsive image">



    <!-- vedio section -->
    <div class="container my-4" >
        <div class="row ">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
              
            <video width="500" controls>
                <source src="yalgar.mp4" type="video/mp4">
                <source src="yalgar.ogg" type="video/ogg">
                Your browser does not support HTML5 video.
              </video>
            </div>
           
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                <p>
                <h4>Yalgar</h4>
                Song& Lyrics - Ajey Nagar (CarryMinati)
                Music composed & Produced by - Wily Frenzy
                Managed by - Deepak Char
                Shot by - Shlok Mishra & Lakshay Bhoria
                Engineered at Noisy Gates studio
                below as a natural lead-in to additional content. This card has even longer content than the first
                to show that equal height action. This is a wider card with supporting text below as a natural
                lead-in to additional content. This card has even longer content than the first to show that equal
                height action. This is a wider card with supporting text below as a natural lead-in to additional
                content. This card has even longer content than the first to show that equal height action.
                </p>
            </div>
        </div>
    </div>
    <div class="container-fluid" style="background-color: black;">
        
       <br><br>
        <center>
            <h4 style="color: #fff;" >Featured Topics</h4><br><br>
        </center>
 <div class="container">
            <div class="card-deck">
                <div class="card bg-secondary">
                    <i class="fas fa-cloud" style="font-size:50px;color: orange;"></i>
                    <div class="card-body   ">
                        <h5 class="card-title text-warning ">Cloud</h5>
                        <p class="card-text text-light">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                    </div>

                </div>
                <div class="card bg-secondary">
                    <i class="fas fa-desktop" style="font-size:50px;color: orange;"></i>
                    <div class="card-body "> 
                        <h5 class="card-title text-warning">Nature</h5>
                        <p class="card-text text-light">This card has supporting text below as a natural lead-in to additional
                            content.
                        </p>
                    </div>

                </div>
                <div class="card bg-secondary">
                    <i class="fas fa-lock" style="font-size:50px;color: orange;"></i>
                    <div class="card-body ">
                        <h5 class="card-title text-warning">Laptop</h5>
                        <p class="card-text text-light">This is a wider card with supporting text below as a natural lead-in to
                            additional content.</p>
                    </div>

                </div>
            </div>

            <div class="card-deck my-4">
                <div class="card bg-secondary">
                    <i class="fas fa-car" style="font-size:50px;color: orange;"></i>
                    <div class="card-body">
                        <h5 class="card-title text-warning">Shape</h5>
                        <p class="card-text text-light">This is a wider card with supporting text below.</p>
                    </div>

                </div>
                <div class="card bg-secondary">
                    <i class="fas fa-file" style="font-size:50px;color: orange;"></i>
                    <div class="card-body">
                        <h5 class="card-title text-warning">Chess</h5>
                        <p class="card-text text-light">This card has supporting text below as a natural lead-in to additional
                            content.
                        </p>
                    </div>

                </div>
                <div class="card bg-secondary">
                    <i class="fas fa-coffee" style="font-size:50px;color: orange;"></i>
                    <div class="card-body">
                        <h5 class="card-title text-warning">Rummy</h5>
                        <p class="card-text text-light">This is a wider card with supporting text below as a natural lead-in to
                            additional content.</p>
                    </div>
                   
                </div>
            </div>
            <br><br>
    </div>
</div>
    <br>
    <br>

    <footer class="page-footer font-small unique-color-dark">

        <div style="background-color:orange;">
          <div class="container">
    
      
            <!-- Grid row-->
            <div class="row py-4 d-flex align-items-center">
      
              <!-- Grid column -->
              <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                <h6 class="mb-0">Get connected with us on social networks!</h6>
              </div>
              <!-- Grid column -->
      
              <!-- Grid column -->
              <div class="col-md-6 col-lg-7 text-center text-md-right">
      
                <!-- Facebook -->
                <a class="fb-ic">
                  <i class="fab fa-facebook-f white-text mr-4"> </i>
                </a>
                <!-- Twitter -->
                <a class="tw-ic">
                  <i class="fab fa-twitter white-text mr-4"> </i>
                </a>
                <!-- Google +-->
                <a class="gplus-ic">
                  <i class="fab fa-google-plus-g white-text mr-4"> </i>
                </a>
                <!--Linkedin -->
                <a class="li-ic">
                  <i class="fab fa-linkedin-in white-text mr-4"> </i>
                </a>
                <!--Instagram-->
                <a class="ins-ic">
                  <i class="fab fa-instagram white-text"> </i>
                </a>
      
              </div>
              <!-- Grid column -->
      
            </div>
            <!-- Grid row-->
      
          </div>
        </div>
      
        <!-- Footer Links -->
    <div class="container-fluid bg-secondary">
        <div class="container text-center  ">
          <br>
          <!-- Grid row -->
          <div class="row ">
      
            <!-- Grid column -->
            <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
      
              <!-- Content -->
              <h6 class="text-uppercase font-weight-bold  text-light"><span id="d2">Fit </span><span id="d3">Lab5 </span></h6><br>
            
              <p class=" text-light">Here you can use rows and columns to organize your footer content. Lorem ipsum dolor sit amet,
                consectetur
                adipisicing elit.</p>
      
            </div>
            <!-- Grid column -->
      
            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
      
              <!-- Links -->
              <h6 class="text-uppercase font-weight-bold  text-light">Products</h6><br>
             
              <p>
                <a href="#!">Navbar</a>
              </p>
              <p>
                <a href="#!">Home</a>
              </p>
              <p>
                <a href="#!">About</a>
              </p>
              <p>
                <a href="#!">Contact us</a>
              </p>
      
            </div>
            <!-- Grid column -->
      
            <!-- Grid column -->
            <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
      
              <!-- Links -->
              <h6 class="text-uppercase font-weight-bold  text-light">Useful links</h6><br>
             
              <p>
                <a href="#!">Your Account</a>
              </p>
              <p>
                <a href="#!">Become an Affiliate</a>
              </p>
              <p>
                <a href="#!">Shipping Rates</a>
              </p>
              <p>
                <a href="#!">Help</a>
              </p>
      
            </div>
            <!-- Grid column -->
      
            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3  text-light ">
      
              <!-- Links -->
              <h6 class="text-uppercase font-weight-bold">Contact</h6><br>
              <p>
                Address:New York, NY 10012, US</p>
              <p>
                Gmail:info@example.com</p>
              <p>
                Phoneno:9481751940</p>
              <p>
                Tel:+ 01 234 567 89</p>
      
            </div>
            <!-- Grid column -->
      
          </div>
          <!-- Grid row -->
      
        </div>
        <!-- Footer Links -->
    </div> 
        <!-- Copyright -->
        <div class="footer-copyright text-center py-3 bg-secondary ">© 2020 Copyright:
          <a class=" text-dark" href="#">Nishanth</a>
        </div>
        <!-- Copyright -->
      
      </footer>
      <!-- Footer -->

    




    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>
</body>

</html>