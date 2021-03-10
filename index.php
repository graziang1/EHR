<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <?php 
  #include './includes/connect.php';
  include './components/dashboard.php'; 
  include './components/employee_card.php';
  #include './components/navtabs.php'
  ?>

  <?php
  #print_r($_SESSION['username']);
  ?>
  

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <style>
    .btn {
      background-color: #08D1B2;;
      color: #ffffff;
      font-weight: bold;
      width: 275px;
      line-height: 200px;
      text-align: center;
      margin: 2px;
    }
    .home-tiles {
      margin-left: auto;
      margin-right: auto;
    }
  </style>
  <title>EHR Dashboard</title>
</head>
<body>
  <div class="card-body">
    <table class="home-tiles">
        <tr>
          <th><a class="btn" href="./patientchart.php">Patient Chart</a></th>
          <th><a class="btn" href="./labwork.php">Lab Work</a></th>
          <th><a class="btn" href="./immunizations.php">Immunizations</a></th>
          <th><a class="btn" href="./conditions.php">Conditions & Diagnoses</a></th>
        </tr>
        <tr>  
          <th><a class="btn" href="./medical_history.php">Medical History</a></th>
          <th><a class="btn" href="./recommendations.php">Recommendations</a></th>
          <th><a class="btn" href="./documents.php">Documents</a></th>
          <th><a class="btn" href="./billing.php">Billing & Insurance</a></th>
        </tr>
    </table>
    <div class="company-updates">
      <br><br>
      <h4>Recent Company Updates:</h4> 
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vulputate rutrum ex, et pellentesque justo pulvinar in. Morbi condimentum tortor id risus finibus tristique. Morbi eu lorem lacinia, porta odio sit amet, efficitur metus. Morbi efficitur velit odio, vel mattis leo sagittis et. Proin felis libero, fringilla a purus ut, euismod iaculis elit. Morbi malesuada luctus nisl, ut fringilla sapien convallis id. Duis scelerisque, nunc id dapibus volutpat, metus elit mollis sapien, in vehicula diam sem sed justo. Suspendisse finibus rhoncus justo in bibendum.
      <hr class="rounded">
      <p>Donec suscipit odio non erat suscipit ornare. Proin scelerisque, augue posuere molestie interdum, urna mauris tincidunt mauris, vitae hendrerit lacus velit id sem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce egestas neque at leo pellentesque ullamcorper. Phasellus ultricies dignissim aliquet. Sed dignissim, risus quis interdum venenatis, sapien mi mollis est, vel sodales lorem lorem eu dui. Vivamus eget purus id arcu sollicitudin aliquam nec vitae nunc. Etiam aliquet sapien lorem, non tristique elit tristique quis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
      <hr class="rounded">
      <p>Donec viverra rutrum blandit. Praesent semper, odio et porttitor mollis, nulla eros varius metus, quis imperdiet est massa maximus sem. Curabitur bibendum elit at enim imperdiet, vitae mollis enim sodales. Aliquam tellus ante, scelerisque eget eros at, elementum dapibus sapien. Vestibulum at sapien convallis, varius neque posuere, hendrerit velit. Sed pellentesque fermentum vehicula. Curabitur volutpat, lacus vel rutrum imperdiet, augue eros efficitur lectus, nec lobortis augue sem sed nunc. Nulla at sagittis est. Aliquam tempus, magna non varius euismod, urna ex venenatis enim, laoreet sodales elit enim vel ante. Morbi vehicula mi vitae condimentum tempor.</p>
      <hr class="rounded">
      <p>Integer et rhoncus elit. Vestibulum vitae velit nulla. Nunc bibendum posuere nibh, eu vulputate ex luctus sed. Sed blandit augue at nulla porta auctor. Mauris diam sapien, laoreet in elementum sit amet, venenatis sed risus. Nullam a commodo mauris, maximus interdum felis. Phasellus accumsan ante nibh, non laoreet nunc auctor a. Suspendisse dui ipsum, suscipit non nunc eu, vestibulum tempus leo. Cras lectus dolor, fringilla et venenatis in, condimentum a eros. Aenean eget est vel orci blandit condimentum. Nunc ultrices elementum euismod. Vivamus ac orci a lectus vehicula maximus. Donec consectetur purus ligula, pellentesque dignissim enim fermentum nec. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque et augue eu nunc consectetur imperdiet. Vivamus scelerisque tincidunt tristique.</p>   
    </div>
  </div>  
</body>
</html>