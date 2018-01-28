<?php
    if( $_POST["serch"] == "" ){
        header("Location: index.php");
    } else {
        require("database.php");

        $serch = htmlspecialchars($_POST["serch"]);
        $serch_select_sql = 'select * from Posts where videotitle like \'%'.$serch.'%\' or videodescription like \'%'.$serch.'%\';';
        $count_serch_select_sql = 'select count(*) from Posts where videotitle like \'%'.$serch.'%\' or videodescription like \'%'.$serch.'%\';';

    }
?>