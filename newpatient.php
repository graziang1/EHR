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
  <title>Create New Patient</title>
  <style>
    #content {
      margin: 25px
    }
  </style>
</head>
<body>
  <div id="content" class="card-body">
    <h5 class="card-title">Create New Patient</h5>
    <hr class="rounded">

    <form action="functions/add_patient.php" method="post">
      <h6>Add New Patient Details</h6><br>

      <label for="f_name">First name:</label>
      <input type="text" id="f_name" name="f_name">
      <label for="m_name">Middle name:</label>
      <input type="text" id="m_name" name="m_name">
      <label for="l_name">Last name:</label>
      <input type="text" id="l_name" name="l_name">
      <label for="dob">Date of birth:</label><br>
      <input type="date" id="dob" name="dob">
      <br><br>
      <label for="marital_status">Marital status:</label>
      <input type="text" id="marital_status" name="marital_status">
      <label for="email">Email:</label>
      <input type="text" id="email" name="email">
      <label for="sex">Sex:</label>
      <input type="text" id="sex" name="sex">
      <label for="address_one">Address 1:</label>
      <input type="text" id="address_one" name="address_one">
      <label for="address_two">Address 2:</label>
      <input type="text" id="address_two" name="address_two">
      <label for="city">City:</label>
      <input type="text" id="city" name="city">
      <label for="state">State:</label>
      <input type="text" id="state" name="state">
      <label for="zip">Zip:</label>
      <input type="text" id="zip" name="zip">
      <label for="phone_one">Phone 1:</label>
      <input type="text" id="phone_one" name="phone_one">
      <label for="phone_two">Phone 2:</label>
      <input type="text" id="phone_two" name="phone_two">
      <input type="submit" class="button is-primary" value="Submit">
    </form>
  </div>
</body>
</html>