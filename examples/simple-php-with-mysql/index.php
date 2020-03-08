<?php

echo "<h3>Testing...</h3>";

echo "print text in php... 100%" . "<hr>";

$link = mysqli_connect("localhost", "root", "", "khaledalamDBNAME") or die("Can't Connect... 0%");

echo "MySQL connect successfully... 100%" . "<hr><br>";


echo "Data from DB:" . "<br>";

$r = mysqli_query($link, "SELECT * from users");

while($row = $r->fetch_assoc())
{
        var_dump($row);
	echo " 100%<hr>";
}

