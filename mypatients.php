<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <?php 
  #include './includes/connect.php';
  include './components/dashboard.php'; 
  #include './components/navtabs.php'; 
  include './functions/session.php'; 
  ?>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css" />

  <title>My Patients</title>
  <style>
    table, tr {
      border: 1px solid black;
    }

    .delete-button {
      background-color: #f44336;
    }

    button {
      border-radius: 5px;
      width: 100px;
    }

    #addButton {
      width: 150px;
    }

    tr {
      text-align: center; 
      vertical-align: middle;
    }

    #content {
      margin: 25px;
    }
  </style>
  <title>Conditions</title>
  </style>
</head>
<body>
  <div id="content" class="card-body">
    <h5>My Patients</h5>
    <hr class="rounded">
    <form>
    <button onclick="window.open('connectors/add_record_form.php')" style="width: auto;">Add New Patient</button>
    <br><br>
    <table id="patientTable"  style="width: 100%;">
      <thead>
        <th>PID</th>
        <th>Name</th>
        <th>DOB</th>
        <th>Email</th>
        <th>Phone</th>
      </thead>
      <tbody>
      </tbody>
    </table>
  </form>
  </div>
  <p id="pid" style="visibility: hidden"><?php echo $_SESSION['pid'];?></p>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
  <script src="scripts/mypatients.js"></script>
</body>
</html>