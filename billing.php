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
  <link rel="stylesheet" type="text/css" href="styles.css"/>
  <title>Billing & Insurance</title>
  <style>
    table, tr {
      border: 1px solid black;
      width: 100%;
    }

    .delete-button {
      background-color: #f44336;
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
</head>
<body onload="fetchCoverage()">  
  <div id="content" class="card-body">
    <h5>Billing and Insurance</h5>
    <hr class="rounded">
    <form>
      <br>
      <button onclick="window.open('connectors/add_billing.php')">Bill</button>
      <button onclick="window.open('billing_history.php')">View Billing History</button>
      <button onclick="window.open('connectors/add_patient_coverage.php')">Add Patient Coverage</button>
    <hr class="rounded">
    <h5>Coverage</h5>
    <table id="table">
      <thead>
        <th>Policy Number</th>
        <th>Group Number</th>
        <th>Insurance Company</th>
        <th>Subscriber</th>
        <th>Insurance Number</th>
      </thead>
      <tbody>
      </tbody>
    </table>
    </form>
  </div>
  <p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?></p>
  <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
  <script src="scripts/billing.js"></script>
</body>
</html>