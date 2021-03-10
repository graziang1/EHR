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
  <title>Settings</title>

<style>

</style>

</head>
<body>
  <div class="card-body">
    <h5 class="card-title">User Settings</h5>
    <hr class="rounded">

    <form action="functions/..." method="post" class="form">
      <label for="name">Display Name:</label>
      <input type="text" id="name" name="name">

      <label for="x">Profile Photo:</label>
      <p><input type="file"  accept="image/*" name="x" id="file"  onchange="loadFile(event)" style="display: none;"></p>
      <p><label for="file" name="x" style="cursor: pointer;"><strong>Choose a Different Photo</strong></strong></label></p>
      <p><img id="output" width="200" name="x" /></p>


      <label for="email">Email Address:</label>
      <input type="text" id="email" name="email">
      <label for="pw">Password:</label>
      <input type="password" id="pw" name="pw">
      <label for="phone">Phone:</label>
      <input type="text" id="phone" name="phone">
      <label for="title">Title:</label>
      <input type="text" id="title" name="title">
      <label for="dept">Department:</label>
      <input type="text" id="dept" name="dept">
      <br>
      <input type="submit" class="button is-primary" value="Update">
    </form>
  </div>
</body>
<script>
var loadFile = function(event) {
    var image = document.getElementById('output');
    image.src = URL.createObjectURL(event.target.files[0]);
};
</script>
</html>
