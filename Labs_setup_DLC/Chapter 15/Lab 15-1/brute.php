<?php
$v = 'a';
while(1)
{
        $hash = hash("md5",$v, true);
        if( substr_count( $hash, "'='" ) == 1 ) die($v);
        $v++;
}

?>
