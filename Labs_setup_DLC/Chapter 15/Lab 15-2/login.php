<?php

if (!isset($_POST['user']) || !isset($_POST['password'])){
	die("parameter error");
}

$user = $_POST['user'];
$pass = $_POST['password'];

$conn = mysql_connect("localhost","root","toor");
mysql_query("SET character_set_results = 'gbk', character_set_client = 'gbk', character_set_connection = 'gbk', character_set_database = 'gbk', character_set_server = 'gbk'", $conn);

mysql_select_db("gh4book");

#Uncomment below line if want to prevent Multi-byte injection
#$pass= mb_convert_encoding($pass,'utf-8','gbk');

$u = mysql_real_escape_string($user);
$p = mysql_real_escape_string($pass);
 
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
