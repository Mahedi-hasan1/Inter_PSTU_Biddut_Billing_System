<?php
$serverHost = "localhost";
$user = "root";
$password = "";
$database = "biddyutBill";

$connectionNow = new mysqli($serverHost,$user,$password,$database);
header("Access-Control-Allow-Origin: *");

$sqlFetchQuery = "SELECT * FROM houses";
$houseRecord = [];
$responseOfFetchQuery = $connectionNow->query($sqlFetchQuery);

if(!$responseOfFetchQuery){
    die('Could not get data: '.mysql_error());
}
if($responseOfFetchQuery->num_rows>0){
    //echo json_encode(array("Success"=>true));
    while($rowFound = $responseOfFetchQuery->fetch_assoc()){
        //printf("\n");
        $houseRecord[] = $rowFound;      
    }
    
}
echo json_encode(
    $houseRecord
    );

