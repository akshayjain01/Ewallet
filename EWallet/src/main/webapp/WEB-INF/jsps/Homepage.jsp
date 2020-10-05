<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 40%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

.border{
	border-style: ridge;
    padding: 5%;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2>Welcome User</h2><br>
<div class="border">
    <h3>Add Money to Wallet</h3>
    <div class="fr966">
    <div class="_3nWSp">
    <span class="_2wFvp">₹</span>
        <input type="text" value="" name="" placeholder="Enter Amount">
        <button name="subject">Add Money</button></div><div class="QHwZS">
     </div>
     </div>
</div>
<br><br>
<div class="border">
    <h3>Send Money</h3>
    <div class="fr966">
    <div class="_3nWSp">
    	<input type="text" value="" name="" placeholder="Enter Username">
        <span class="_2wFvp">₹</span>
        <input type="text" value="" name="" placeholder="Enter Amount">
        <br>
        <button name="subject">Send Money</button></div><div class="QHwZS">
     </div>
     </div>
</div>
<div class="border">
    <h3>Veiw Passbook</h3>
    <div class="fr966">
    <div class="_3nWSp">
    	<a href=passbook?id=${user.id}>Show Passbook</a>
     </div>
     </div>
</div>
</body>
</html>