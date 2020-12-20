<?php
class Connect{

	private static $pdo = null;

    private function __construct() {}

    public static function getPDO(){
    	$host = "localhost";
    	$dbname = "fetch_chat";
    	$username = "root";
    	$password = "";

        if (self::$pdo === null) {
            $pdo = new PDO(
                'mysql:host='.$host.';dbname='.$dbname,
                $username,
                $password,
                array(
                    PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
                    PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
                )
            );
        }

        return $pdo;
    }

}