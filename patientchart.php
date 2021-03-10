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

  </style>
  <title>Patient Chart</title>
</head>
<body>
<div class="card-body">
  <h5 class="card-title">Patient Chart</h5>

  <hr class="rounded">

  <div class="card-text2">
  <form id="patient-chart">
    <div class="row">
      <div class="column">
        <ul>
          <li><label for="x">Patient Photo:</label></li>
          <li><input type="file"  accept="image/*" name="x" id="file"  onchange="loadFile(event)" style="display: none;"></li>
          <li><label for="file" name="x" style="cursor: pointer;"><strong>Choose a Different Photo</strong></strong></label></li>
          <li><img id="output" width="200" name="x" /></li>
        </ul>
      </div>
      <div class="column">
        <ul>
          <li class="button is-primary" style="display: flex; justify-content: center; width: 150px" onclick="savePatientInfo()"><strong>Save</strong></li>
        </ul>
      </div>
    </div>
    <div class="row">
      <div class="column">
        <ul>
          <li><label for="f_name">First Name: </label> <input type="text" id="f_name"></li>
          <li><label for="m_name">Middle Name: </label> <input type="text" id="m_name"></li>
          <li><label for="l_name">Last Name: </label> <input type="text" id="l_name"></li>
          <li><label for="p_name">Previous Name: </label> <input type="text" id="p_name"></li>
          <hr class="rounded">

          <li><label for="ss_number">Social Security Number: </label> <input type="text" id="ss_number"></li>
          <li><label for="email">Email Address: </label> <input type="text" id="email"></li>
          <li><label for="ec_name">Emergency Contact Full Name: </label> <input type="text" id="ec_name"></li>
          <li><label for="ec_name">Emergency Contact Phone: </label> <input type="text" id="ec_number"></li>
          <hr class="rounded">

          <li><label for="address_one">Address Line 1: </label> <input type="text" id="address_one"></li>
          <li><label for="city">City: </label> <input type="text" id="city"></li>
        </ul>
      </div>

      <div class="column">
        <ul>
          <li><label for="dob">Date of Birth: </label><br><input type="date" id="dob" name="dob"></li><br>
          <li><label for="sex">Sex: </label> <input type="text" id="sex"></li>
          <li><label for="marital_status">Marital Status: </label> <input type="text" id="marital_status"></li>
          <li><label for="race">Ethnicity: </label> <input type="text" id="race"></li>
          <hr class="rounded">

          <li><label for="phone_one">Primary Phone: </label> <input type="text" id="phone_one"></li>
          <li><label for="phone_two">Secondary Phone: </label> <input type="text" id="phone_two"></li>
          <li><label for="occupation">Occupation: </label> <input type="text" id="occupation"></li>
          <li><label for="employment">Employer: </label> <input type="text" id="employment"></li>


          <hr class="rounded">
          <li><label for="address_two">Address Line 2: </label> <input type="text" id="address_two"></li>
          <li><label for="state">State: </label> <input type="text" id="state"></li>
          <li><label for="zip">Zip Code: </label> <input type="text" id="zip"></li>
          <br><br>
        </ul>       
      </div>
  </form> 
  </div>
</div>
<p id="pid" style="visibility: hidden"><?php echo $_SESSION["pid"]; ?></p>
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
<script src="scripts/patient_chart.js"></script> 
<script>
var loadFile = function(event) {
    var image = document.getElementById('output');
    image.src = URL.createObjectURL(event.target.files[0]);
};
</script> 
</body>
</html>