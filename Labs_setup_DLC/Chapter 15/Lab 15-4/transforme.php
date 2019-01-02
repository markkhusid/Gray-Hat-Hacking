<html><body>
<form name=forma method=POST action=transforme.php>
<?php
$v = "";
$char_1 = "";
if (isset($_POST['data'])){
   $v = htmlspecialchars($_POST['data'], ENT_QUOTES, 'UTF-8');
   $c = normalizer_normalize( $v, Normalizer::FORM_KC );
}
?>
Enter value: <input type='text' size=25 name='data' value='<?php echo $c ?>'>
<input type="submit" value="Submit">
</form></body></html>
