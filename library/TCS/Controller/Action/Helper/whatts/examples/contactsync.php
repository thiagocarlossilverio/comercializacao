<?php

set_time_limit(30);

require_once '../src/whatsprot.class.php';

$username = $_GET['phone'];
$password = $_GET['pass'];
$u = $_GET['u'];

if (!is_array($u)) {
    $u = [$u];
}

$numbers = [];
foreach ($u as $number) {
    if ($number[0] != '+') {
        //add leading +
        $number = "+$number";
    }
    $numbers[] = $number;
}

//event handler
/**
 * @param $result SyncResult
 */
function onSyncResult($result)
{
    foreach ($result->existing as $number) {
        echo "$number exists<br />";
    }
    foreach ($result->nonExisting as $number) {
        echo "$number does not exist<br />";
    }
    die(); //to break out of the while(true) loop
}

$wa = new WhatsProt($username, 'WhatsApp', false);

//bind event handler
$wa->eventManager()->bind('onGetSyncResult', 'onSyncResult');

$wa->connect();
$wa->loginWithPassword($password);

//send dataset to server
$wa->sendSync($numbers);

//wait for response
while (true) {
    $wa->pollMessage();
}
