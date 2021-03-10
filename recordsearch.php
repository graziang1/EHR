<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <?php 
  #include './includes/connect.php';
  include './components/dashboard.php';  
  ?>

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.0/css/bulma.min.css">  
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <title>Record Search</title>
</head>
<body>
  <div class="card-body">
    <h5 class="card-title">Record Search</h5>
    <hr class="rounded">

    <form action="connectors/get_record_data.php" method="get">
      <h6>Search for a Specific Record</h6><br>

      <label for="f_name">First name:</label>
      <input type="text" id="f_name" name="f_name">
      <label for="m_name">Middle name:</label>
      <input type="text" id="m_name" name="m_name">
      <label for="l_name">Last name:</label>
      <input type="text" id="l_name" name="l_name">
      <label for="pid">Patient ID:</label>
      <input type="text" id="pid" name="pid">
      <label for="dob">Date of birth:</label>
      <input type="date" id="dob" name="dob">
      <br>
      <input type="submit" class="button is-primary" value="Search">
    </form>
  </div>
</body>
</html>
