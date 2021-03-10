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
  table, tr {
    border: 1px solid black;
    width: 100%;
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

  form {
  width: 90%;
  display: inline-block;
  margin-left: 5%;
  margin-right:5%;

  background-color: #f1f1f1;
}

input[type=text], input[type=password], input[type=date] {
  background-color: #08D1B2;
  color: white;
  border-radius: 8px;
  border: none;
}

input[type=text], input[type=password], input[type=date] {
  border: 2px solid grey;
}
  </style>
  
  <title>Billing History</title>
</head>
<body onload="fetchBillingHistory()">
<div class="card-body">
  <h5>Billing History</h5>
  <hr class="rounded">
  <form>
  <table id="table">
    <thead>
        <th>Adjustment</th>
        <th>Amount Paid</th>
        <th>Posted Date</th>
        <th>Balance</th>
        <th>Billing Status</th>
        <th>Payment Method</th>
        <th>Status</th>
        <th>Notes</th>
        <th>Time of Visit</th>
    </thead>
  </table>
  </form>
  <p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?></p>
</div>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="scripts/billing.js"></script>
</body>
</html>