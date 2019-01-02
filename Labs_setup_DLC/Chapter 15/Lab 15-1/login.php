<?php
header ('Content-type: text/html; charset=latin1');
if (!isset($_POST['user']) || !isset($_POST['password'])){
	die("parameter error");
}

$user = $_POST['user'];
$pass = $_POST['password'];
 
mysql_connect("localhost","root","toor");
mysql_select_db("gh4book");
 
$u = mysql_real_escape_string($user);
$pass = mysql_real_escape_string($pass);
$p = hash("md5",$pass, true);
 
$query = "select user, pass from users where user='$u' and pass='$p'";

// Perform Query
echo $query;
$result = mysql_query($query);
$row = mysql_fetch_assoc($result);

if (isset($row['user'])) {
        echo "<br>User found!!";
} else {
        echo "<br>Login failed";
}
?>
