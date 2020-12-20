<?php

function execRequete($pdo,$req,$params = array()){

        // Sanitize
        if ( !empty($params)){
            foreach($params as $key => $value){
                $params[$key] = trim(strip_tags($value));
            }
        }
        //global $pdo; // globalisation de $pdo

        $r = $pdo->prepare($req);
        $r->execute($params);
        if( !empty($r->errorInfo()[2]) ){
            die('Erreur rencontrée lors de la requête : '.$r->errorInfo()[2]);
        }

        return $r;
}
