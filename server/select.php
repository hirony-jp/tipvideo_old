<?php
    require("database.php");

    $page = $_GET["page"] - 9;
    $page = $page + 9;
    $select_sql = 'select * from Posts order by postdate desc limit 9 offset '.$page.';';


    // cardを表示する
    $stmt = $pdo->query($select_sql);
    while($row = $stmt -> fetch(PDO::FETCH_ASSOC)) {
        $postid = $row["postid"];
        $postdate = $row["postdate"];
        $twitterid = $row["twitterid"];
        $videotitle = $row["videotitle"];
        $videourl = $row["videourl"];
        $videodescription = $row["videodescription"];
        $div_class_card = '<div class="col-lg-4 col-sm-6 portfolio-item" style="display:-webkit-box;display:-webkit-flex; display:-ms-flexbox; display: flex;"><div class="card"><div class="card-body">';
        $div_end = '</div>';
        $videodata = $videourl.'<h4 class="card-title">'.$videotitle.'</h4><p class="card-text">'.$videodescription.'</p><a href="#" class="btn btn-primary btn-block">tip</a>';
        print($div_class_card);
        print($videodata);
        print($div_end);
        print($div_end);
        print($div_end);
    }

?>