<?php

session_start();
session_unset(); //equivalent to setting session to empty array
session_destroy(); //removes all files from temp directory -- clears cache
header("Location../index.php");
exit();