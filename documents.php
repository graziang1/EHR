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
  <title>Patient Documents</title>
  <style>
  
  </style>
</head>
<body>
  <div class="card-body">
    <h5 class="card-title">Patient Documents</h5>
    <hr class="rounded">  
    <div class="card-text2">
      <br>
      <div class="fileupload">
        <form action="documents.php" method="get" enctype="multipart/form-data">
          <h6>Upload Documents Pertaining to the Patient</h6>
          <br>
          <label for="file">Select files:</label>
          <input type="file" name="uploaded_file"><br><br>
          <label for="pid_in"></label>
          <input style="visibility: hidden" type="text" name="pid_in" value=<?php echo $_SESSION["pid"]; ?>>
          <input type="submit" class="button is-primary">
        </form>
      </div>
      <hr class="rounded">
      <ul id="doc-list">
      </ul>
    </div>
  </div>
</div>
<p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?><</p>  
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="scripts/documents.js"></script>
</body>
</html>

<?php
  if(!empty($_FILES['uploaded_file']))
  {
    $pid =  $_GET["pid_in"];

    $path = "./documents/" . $pid;

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