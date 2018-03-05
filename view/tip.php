<?php

    require("../server/database.php");

    $cash = htmlspecialchars_decode($_GET["pay"], ENT_QUOTES);
    $twid = htmlspecialchars_decode($_GET["twid"], ENT_QUOTES);
    $tiptype = htmlspecialchars_decode($_GET["sendbutton"], ENT_QUOTES);
    $comment = htmlspecialchars_decode($_GET["comment"], ENT_QUOTES);;
    $serverurl = '%20http%3a%2f%2fwww%2etip%2dvideo%2enet';
    $hashtag = '%20%23tipvideo';

    if( $tiptype == "tipnem"){
        $tweeturl = 'https://twitter.com/intent/tweet?text=%40'.$tiptype.'%20tip%20%40'.$twid.'%20'.$cash.'%20xem%20'.urlencode($comment).$serverurl.$hashtag.'&related=_hirony';
    } else {
        $tweeturl = 'https://twitter.com/intent/tweet?text=%40'.$tiptype.'%20tip%20%40'.$twid.'%20'.$cash.'%20'.urlencode($comment).$serverurl.$hashtag.'&related=_hirony';
    }


    // sql文
    // $update_sql = 'update Posts set tipcount = ?;';
    // $select_sql = 'select tipcount from Posts;';
    // $count = 0;

    // tipcountをupdateする。
    // $stmt = $pdo->query($select_sql);
    // $row = $stmt -> fetch(PDO::FETCH_ASSOC);
    // $old_count = $row["tipcount"];
    // $count = (int)$old_count + 1;
    // $stmt = $pdo -> prepare($update_sql);
    // $stmt->bindValue(1, $count, PDO::PARAM_INT);

    // $stmt->execute();

    header("Location: $tweeturl");
?>