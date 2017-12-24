<?php
    require("database.php");

    // SQLの生成
    $insert_sql = 'insert into Posts(postid, postdate, twitterid, videotitle, videourl, videodescription) value(0, now(), ?, ?, ?, ?);';

    // POSTされたデータを取得する。
    $tw_id = $_POST["twid"];
    $v_title = $_POST["vtitle"];
    $v_url = $_POST["vurl"];
    $v_description = $_POST["vdesc"];
    $tw_id = htmlspecialchars($tw_id, ENT_QUOTES);
    $v_title = htmlspecialchars($v_title, ENT_QUOTES);
    $v_url = htmlspecialchars($v_url, ENT_QUOTES);
    $v_description = htmlspecialchars($v_description, ENT_QUOTES);
    $cut = 19;
    $addiframetext = '<iframe width="100%"';
    $replace = substr( $v_url, $cut, strlen($v_url)-$cut);
    $new_v_url = $addiframetext.$replace;

    // テーブルにデータを挿入する。
    $stmt = $pdo -> prepare($insert_sql);
    $stmt->bindParam(1, $tw_id, PDO::PARAM_STR);
    $stmt->bindParam(2, $v_title, PDO::PARAM_STR);
    $stmt->bindParam(3, $new_v_url, PDO::PARAM_STR);
    $stmt->bindParam(4, $v_description, PDO::PARAM_STR);

    $stmt->execute();

    header( "Location: ../index.php" ) ;

?>