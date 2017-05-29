<?php

include_once('../database/users.php');

$names = getUsers();

echo json_encode($names);