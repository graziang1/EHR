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
  <title>Health Recommendations</title>
  <script>
    function submitRecommendation() {
      document.getElementById('add').value = sum;
    }
  </script>
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
  </style>
</head>
<body>
  <div class="card-body">
    <h5 class="card-title">Patient Health Recommendations</h5>
    <hr class="rounded">
    <form>
    <div class="card-text2">
      <h6>Enter Recommendations for the Patient's Health</h6>
      <button onclick="window.open('connectors/add_patient_recommendation.php')" style="width: auto;">Add Recommendation</button>
      <hr class="rounded">
      <br>
      <h6>Recommendations</h6>
      <br>
      <table id="table">
        <thead>
          <th>Recommendation</th>
          <th>Date</th>
          <th>Time</th>
        </thead>
        <tbody>
        </tbody>
      </table>
      <p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?></p>
    </div>
    </form>
  </div>
</div>  
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="scripts/recommendations.js"></script>
</body>
</html>