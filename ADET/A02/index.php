<?php 
$page = "coffee";

if (isset($_GET['page'])) {
  $page = $_GET['page'];
  switch ($page) {
    case "coffee":
      $page = "coffee";
      break;
    case "cream":
      $page = "cream";
      break;
    case "soda":
      $page = "soda";
      break;
    default:
      header("Location: ?page=coffee");
      break;
  }
} else {
  header("Location: ?page=coffee");
}
?>


<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Kopi Juan</title>
  <link rel="icon" href="img/icon.png">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">

  <style>
    body {
      background-color:rgb(249, 227, 213);
      font-family: 'Poppins', sans-serif;
      overflow: hidden;
    }

    .navbar {
      background-color: #3c2415; 
      border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }

    .navbar-brand {
      font-weight: bold;
      font-size: 35px;
      letter-spacing: 1px;
      color: #e6d5c3;
    }

    .navbar-brand:hover {
      color: #e6d5c3;
    }

    .card {
      background-color: #e6d5c3;
      border: none;
      margin-bottom: 20px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }
    
    .btn-primary {
      background-color: #6d4c41;
      border-color: #5d4037;
      margin-top: 15px;
    }

    .btn-primary:hover {
      background-color: #5d4037;
      border-color: #4e342e;
    }

    .btn-primary:focus, 
    .btn-primary:active,
    .btn-primary.active {
      background-color: #4e342e;
      border-color: #3e2723;
    }

    .container-fluid {
      padding: 0 2rem;
    }

    .card h4 {
      font-weight: bold;
      color: #3c2415;
    }

    .card-img-top {
      height: 450px;
      object-fit: cover;
      border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    }

    .price {
      font-weight: bold;
      color: #5d4037;
      font-size: 1.1em;
      margin-top: 10px;
    }

    .card-title {
      color: #3c2415;
      font-weight: bold;
    }

    .card-text {
      color: #5d4037;
    }

    .menu-sidebar {
      background-color: #e6d5c3;
      border-radius: 15px;
      padding: 20px;
    }

    .menu-title {
      color: #3c2415;
      margin-bottom: 20px;
      font-size: 30px;
    }

    h2 {
      font-weight: bold;
      color: #3c2415;
      font-size: 30px;
    }

    .logo-img {
      display: block;
      margin-left: auto;
      margin-right: auto;
      width: 300px;
      height: auto;
    }
  </style>
</head>

<body>
  <nav class="navbar">
    <div class="container-fluid">
      <a class="navbar-brand">Kopi Juan</a>
    </div>
  </nav>

  <div class="container-fluid mt-3">
    <div class="row">

      <div class="col-1 col-sm-1 col-md-2 col-lg-3">
        <div class="card shadow rounded-5 p-3" style="height: 85vh">
          <img src="img/kopi.jpg" alt="Logo" class="logo-img mb-3">
          <h4 class="my-1 menu-title"> Menu <span class=""></span></h4>
          <a href="?page=coffee" class="btn btn-primary position-relative my-1">
            Coffee
          </a>
          <a href="?page=cream" class="btn btn-primary position-relative my-1">
            Cream Based
          </a>
          <a href="?page=soda" class="btn btn-primary position-relative my-1">
            Italian Soda
          </a>
        </div>
      </div>
      <div class="col-10 col-sm-10 col-md-8 col-lg-9">
        <div class="card shadow rounded-5 p-4" style="height: 85vh; overflow-y: scroll;">
          <?php include("shared/" . $page . ".php"); ?>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
</body>
</html>