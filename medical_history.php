<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <?php 
  #include './includes/connect.php';
  include './components/dashboard.php'; 
  include './components/navtabs.php';  
  ?>
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css" />

  <style>
  .blank-cell {
    width: 10px;
  }
  .button-cell {
    width: 400px;
  }
  #button-table {
    border: none;
    width: 80%;
    display: inline-block;
    margin-left: 10%;
    margin-right: 10%;
  }
  #btn {
    border-radius: 10px;
    width: 300px;
    height: 100px;
    
  }
  tr {
    text-align: center; 
    vertical-align: middle;
  }
  </style>
  
  <title>Medical History</title>
</head>
<body>
<div class="card-body">
  <h5>Patient Medical History</h5>
  <hr class="rounded">
  <br>
  <form>
  <table id="button-table">
      <tr class="button-row">
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('vitals.php')">View Vitals</button>
        </td class="button-cell">
        <td class="blank-cell"></td>
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('connectors/add_patient_vitals.php')">Add Vitals</button>
        </td>
      </tr>
      <tr class="button-row">
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('medications.php')">View Medications</button>
        </td>
        <td class="blank-cell"></td>
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('connectors/add_patient_medication.php')">Add Medication</button>
        </td>
      </tr>
      <tr class="button-row">
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('operations.php')">View Operations</button>
        </td>
        <td class="blank-cell"></td>
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('connectors/add_patient_operations.php')">Add Operation</button>
        </td>
      </tr>
      <tr class="button-row">
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('substances.php')">View Substances</button>
        </td>
        <td class="blank-cell"></td>
        <td class="button-cell">
          <button class="button is-primary" id="btn" onclick="window.open('connectors/add_patient_substance.php')">Add Substance</button>
        </td>
      </tr>
  </table>
  </form>
  <p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?></p>
</div>
</body>
</html>