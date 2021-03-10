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

  <title>Lab Work</title>
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

  #content {
    margin: 25px;
  }
  </style>
</head>
<body>
<div class="card-body">
    <h5 class="card-title">Patient Lab Work</h5>
    <hr class="rounded">
    <form>
    <h6>Add New Lab Work Results</h6>
    <div class="card-text2">
      <br>
      <button id="addButton" class="button is-primary" onclick="openAddLabworkPage()">Add</button><br>
      <hr class="rounded">
      <div class="fileupload">
        <h6>Upload Lab Work Documents</h6>
        <form action="labwork.php" method="POST" enctype="multipart/form-data">
          <label for="files">Select files:</label>
          <input type="file" name="uploaded_file"><br><br>
          <input type="submit" class="button is-primary" value="Upload">
        </form>
      </div>
      <hr class="rounded">
      <div class="view-labwork">
      </div>
      <h6>Lab Work Results</h6>
      <br>
      <table id="table">
        <thead>
          <th>DOV</th>
          <th>Type</th>
          <th>Results<th>
        </thead>
        <tbody>
        </tbody>
      </table>
      <p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?></p>
    </div>
  </div>
</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="scripts/labwork.js"></script>  
</body>
</html>
<?php
  if(!empty($_FILES['uploaded_file']))
  {
    $pid = $_POST["pid"];

    $path = "./documents/" . $pid;

    if (!is_dir($path)) {
      mkdir($path);
    } 

    $path = $path . "/labwork";

    if (!is_dir($path)) {
      mkdir($path);
    } 

    $path = $path . "/" . basename( $_FILES['uploaded_file']['name']);

    if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $path)) {
      echo "The file ".  basename( $_FILES['uploaded_file']['name']). 
      " has been uploaded";
    } else{
        echo "There was an error uploading the file, please try again!";
    }
  }
?>