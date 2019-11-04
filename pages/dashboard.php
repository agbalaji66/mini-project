<!DOCTYPE html>
<html>
<head>
<style>
#kk
{
width:100%;
height:11%;
background-image: linear-gradient(to bottom right,violet, #B8E9FE);
position:fixed;

}

#ll
{
position:fixed;
float:left;
margin-top:70px;
border-right-color:grey;

}
#lk
{
position:fixed;
float:right;
margin-top:70px;
border-right-color:grey;
margin-left:20px;

}
#pp
{
border:none;
margin-top:70px;
border-right-color:grey;
}
body
{
margin:0px;
}
h1 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
#left
{
margin-left:350px;
float:left;
}
#right
{
margin-right:10px;
float:right;
}
input[type=submit]
{
margin-top:20px;
margin-right:60px;
border: 1px solid #e5a900;
color: #4E4D4B;
background: linear-gradient(#DAFE92 5%, yellow 100%);
font-weight: bold;
cursor: pointer;
width: 100%;
border-radius: 5px;
padding: 10px 0;
outline:none;
}
input[type=submit]:hover{
background: linear-gradient(#ffdd7f 5%, #ffbc00 100%);
font-size: 16px;
background: linear-gradient(#ffbc00 5%, #ffdd7f 100%);
border: 1px solid #e5a900;
color: #4E4D4B;
font-weight: bold;
cursor: pointer;
width: 100%;
border-radius: 5px;
padding: 10px 0;
outline:none;	
}
</style>
</head>

<body>
<div id=kk >
<div id="left">
<h1 align="left">Welcome To Food Waste management</h1>

</div>
<div id="right">
<form id="form_id" method="post" name="myform">
<input type="submit" value="Logout" name="submit"/>
</form>
<?php
if(isset($_POST['submit']))
{
echo '<script type="text/javascript">

          //window.onload = function () { alert("Registration Successfull"); }
		  window.location = "login.php"; // Redirecting to other page.

</script>';
//session_start();
session_destroy();
}
?>
</div>
 </div>
<iframe id=ll src="profile.html" height="800" width="200" >  </iframe>
<iframe id=pp src="lol.php" height="800" width="1125" >  </iframe>
<iframe id=lk src="1.html" height="800" width="200"  >  </iframe>
</body>

</html>