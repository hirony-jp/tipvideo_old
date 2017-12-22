<?php
    require("database.php");

    // SQLの生成
    $insert_sql = 'insert into Posts(postid, postdate, twitterid, videotitle, videourl, videodescription) value(0, now(), ?, ?, ?, ?);';

    // テーブルにデータを挿入する。
    $tw_id = "twitterman";
    $v_title = "titleman";
    $v_url = "urlman";
    $v_description = "descriptionman";
    
    $stmt = $pdo -> prepare($insert_sql);
    $stmt->bindParam(1, $tw_id, PDO::PARAM_STR);
    $stmt->bindParam(2, $v_title, PDO::PARAM_STR);
    $stmt->bindParam(3, $v_url, PDO::PARAM_STR);
    $stmt->bindParam(4, $v_description, PDO::PARAM_STR);

    $stmt->execute();

?>