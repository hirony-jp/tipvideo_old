<?php
    if ( !isset($_POST["twid"]) || !isset($_POST["vtitle"]) || !isset($_POST["vurl"]) || !isset($_POST["vdesc"]) ) {
        header("Location: index.php");
    } else {

        require("database.php");

        // SQLの生成
        $insert_sql = 'insert into Posts(postid, postdate, twitterid, videotitle, videourl, videodescription, tipcount) value(0, now(), ?, ?, ?, ?, 0);';

        // POSTされたデータを取得する。
        $tw_id = $_POST["twid"];
        $v_title = $_POST["vtitle"];
        $v_url = $_POST["vurl"];
        $v_description = $_POST["vdesc"];
        $tw_id = htmlspecialchars($tw_id, ENT_QUOTES);
        $v_title = htmlspecialchars($v_title, ENT_QUOTES);
        $v_url = htmlspecialchars($v_url, ENT_QUOTES);
        $v_description = htmlspecialchars($v_description, ENT_QUOTES);
        $cut = 32;
        $cut_back = -19;
        $addiframetext = '<iframe width="100%"';
        $addiframetext_back = '></iframe>';

        $replace = substr( $v_url, $cut, strlen($v_url)-$cut);
        $replace = substr( $replace, 0, $cut_back);
        $new_v_url = $addiframetext.$replace.$addiframetext_back;

        // テーブルにデータを挿入する。
        $stmt = $pdo -> prepare($insert_sql);
        $stmt->bindParam(1, $tw_id, PDO::PARAM_STR);
        $stmt->bindParam(2, $v_title, PDO::PARAM_STR);
        $stmt->bindParam(3, $new_v_url, PDO::PARAM_STR);
        $stmt->bindParam(4, $v_description, PDO::PARAM_STR);

        $stmt->execute();

        header( "Location: ../index.php" ) ;
    }
?>