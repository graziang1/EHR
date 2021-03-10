<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <?php 
  #include './includes/connect.php';
  include './components/dashboard.php';  
  include './components/navtabs.php'; 
  include './functions/session.php';
  ?>
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css"/>

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
    width: auto;
  }

  tr {
    text-align: center; 
    vertical-align: middle;
  }
  </style>
  <title>Conditions & Diagnoses</title>
  
</head>
<body>
  <div id="content" class="card-body">
    <h5>Patient Conditions and Diagnoses</h5>
    <hr class="rounded">
    <p id="status" style="color: red"></p>
    <form>
    <button id="addButton" class="button is-primary" onclick="openAddDiagnosisPage()">Add Diagnosis or Condition</button>
    <br><br>
    <table id="diagnosisTable" style="width: 100%;">
      <thead>
        <th>DCID</th>
        <th>ICD-10 Code</th>
        <th>Description</th>
        <th>Start Date</th>
        <th>Actions</th>
      </thead>
      <tbody>
      </tbody>
    </table>
    <p id="pid" style="visibility: hidden;"><?php echo $_SESSION["pid"]; ?></p>
  </form>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
  <script src="scripts/conditions.js"></script>
</body>
</html>