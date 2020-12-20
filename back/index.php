<?php

header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: OPTIONS,GET,POST,PUT,DELETE");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

require_once("Connect.php");
require_once("func.php");

$response = [];
$response["status"] = 1;
$response["datas"] = [];

$method = $_SERVER['REQUEST_METHOD'];
$url = $_SERVER["REQUEST_URI"];

$pdo = Connect::getPDO();
if($method == 'GET'){
	$tab = explode('/',$url);
	$id = $tab[1];
	$req = "select * from message where id > :id";
	$result = execRequete($pdo,$req,["id"=>$id]);
	$response["datas"] = $result->fetchAll();
	$response["method"] = "get";
}
if($method == 'POST'){
	$data = json_decode(file_get_contents("php://input"));
	$req = "insert into message (user,content) values (:user,:content)";
	execRequete($pdo,$req,[
		"user" => $data->user,
		"content" => $data->content
	]);
	$response["method"] = "post";
}

header('Content-type:application/json;charset=utf-8');
echo json_encode($response);