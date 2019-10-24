var attempt = 3;
document.getElementById('submit').disabled=true;
var url="login.html"; // Variable to count number of attempts.
// Below function Executes on click of login button.
function val()
{
var firstname = document.getElementById("fname").value;
var lastname = document.getElementById('lname').value;
var password = document.getElementById("password").value;
var email = document.getElementById("email").value;
var uname = document.getElementById("uname").value;
//var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

if (firstname=="")
{
	alert ("Please enter  First name");
	return false;
}
if (lastname=="")
{
	alert ("Please enter  Last name");
	return false;
}
if (email=="" && reg.test(email.value) == false)
{
	alert ("Please enter  Email");
	return false;
}

if (uname=="")
{
	alert ("Please enter  user name");
	return false;
}
if (password =="")
{
	alert ("Please enter Password");
	return false;
}
else{
// Decrementing by one.
alert("You have registered Successfully;");
//window.location.assign("login.html");
window.location = "pages/login.html"; // Redirecting to other page.

return false;
}

/*else{
attempt --;// Decrementing by one.
alert("You have left "+attempt+" attempt;");
// Disabling fields after 3 attempts.
if( attempt == 0){
document.getElementById("fname").disabled = true;
document.getElementById("password").disabled = true;
document.getElementById("submit").disabled = true;
return false;
}
}*/
}


function validateEmail(email)
{
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if (reg.test(email.value) == false)
        {
            alert('Invalid Email Address');
            return false;
        }

        //return true;
//if (password.length=>5 && password.lenght=<8)
//{
//alert ("password must be min 5 char and max 8");
  //          return false;

//}
}
