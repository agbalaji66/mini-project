<!DOCTYPE html>
<html>
<body>
<style>
body 
{
              font-size:80%; 
              margin:0.5em;
               margin-right:150px;		
               margin-left:250px;				   
              font-family: Verdana; 
              display:block; 
              } 
div { 
            color:green;
             font-size:20px; 
              display:block; 		  
              border: 1px solid silver; 
              margin:0.5em;  
              padding:5em;  
              background-color:whitesmoke; 
              }
h1 { 
      display:block; 
      font-weight:bolder; 
      text-align:center; 
      font-size:30px; 
      background-color: green; 
      color: white; 
  
      } 
</style>
<?php
echo "<h1>";
$xml=simplexml_load_file("feed.xml") or die("Error: Cannot create object");
echo $xml->title . "<br>";
echo "</h1>";
$xml=simplexml_load_file("feed.xml") or die("Error: Cannot create object");
//echo $books->title . ", ";
foreach($xml->children() as $books) 
{ 
   echo "<div>";
    echo $books->name . ", <br>"; 
    echo $books->topic1 . ", <br>"; 
    echo $books->topic2 . ",<br> ";
    echo $books->topic3. "<br>"; 
	echo "</div>";
} 
?>
</body>
</html>