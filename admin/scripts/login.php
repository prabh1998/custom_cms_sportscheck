<?php 
function login($username, $password, $ip){
    $pdo = Database::getInstance()->getConnection();
    //Check existance
    $check_exist_query = 'SELECT COUNT(*) FROM `tbl_user` WHERE user_name =:username';
    $user_set = $pdo->prepare($check_exist_query);
    $user_set->execute(
        array(
            ':username'=>$username
        )
    );

    if($user_set->fetchColumn()>0){
        //Check if match
        $check_match_query = 'SELECT * FROM `tbl_user` WHERE user_name =:username';
        $check_match_query .=' AND user_pass=:password';
        $user_match = $pdo->prepare($check_match_query);
        $user_match->execute(
            array(
                ':username'=>$username,
                ':password'=>$password
            )
        );

        while($founduser = $user_match->fetch(PDO::FETCH_ASSOC)){
            $id = $founduser['user_id'];

            $_SESSION['user_id'] = $id;
            $_SESSION['user_name'] = $founduser['user_fname'];

            //TODO: update the user table and set the user_ip column to be $ip 
            //Hint: 1. Write the proper SQL query to do update
            //      2. Refer the syntax above about how to execute query properly
            $update = 'UPDATE tbl_user SET user_ip=:ip WHERE user_id = :id';
            $user_update = $pdo->prepare($update);
            $user_update->execute(
                array(
                    ':ip'=>$ip,
                    ':id'=>$id
                )
            );
        }
        
        if(isset($id)){
            redirect_to('index.php');
        }else{
            return 'Wrong pass';
        }
    }else{

        return 'User does not exist!';
    }
}

function confirm_logged_in(){
    if(!isset($_SESSION['user_id'])){
        redirect_to('admin_login.php');
    }
}

function logout(){
    session_destroy();
    redirect_to('admin_login.php');
}