<?php
    $page = $_GET["page"];

    require("server/database.php");

    // SQL文の作成
    $select_sql = 'select * from Posts order by postdate desc limit 9 offset ?;';
    $maxdata = 'select count(*) from Posts;';
    $maxpage = $maxdata / 9;

    $i = 1;
    $page = 1;

    $div_class_card = '<div class="col-lg-4 col-sm-6 portfolio-item" style="display:-webkit-box;display:-webkit-flex; display:-ms-flexbox; display: flex;"><div class="card"><div class="card-body">';
    $div_end = '</div>';
    $videodata = '  <h4 class="card-title">'.$videotitle.'</h4>
                    <p class="card-text">'.$videodescription.'</p>
                    '.$videourl.'
                    <br>
                    <a href="#" class="btn btn-primary">tip</a>
                ';

    // テーブルの内容を全て取り出す。
    $stmt = $pdo->query($select_sql);
    while($row = $stmt -> fetch(PDO::FETCH_ASSOC)) {
        $postid = $row["postid"];
        $postdate = $row["postdate"];
        $twitterid = $row["twitterid"];
        $videotitle = $row["videotitle"];
        $videourl = $row["videourl"];
        $videodescription = $row["videodescription"];
    }

    // データベースに登録されてるデータを表示する
    for($j=0; $j<9; $j++){
        print($div_class_card);
        print($videodata);
        print($div_end);
        print($div_end);
        print($div_end);
    }
?>

<!-- ページネーション -->
<nav aria-label="Page navigation">
    <ul class="pagination">
    <li class="page-item">
        <a class="page-link" href="index.php?page=<?php $page - 1; ?>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
        </a>
    </li>
    <?php
        $pagenumber = '<li class="page-item"><a class="page-link" href="index.php?page='.$i.'">'.$i.'</a></li>';

        if($page < 0){ $page = 1; }
        if($page == 1){ $page = $page + 2; }
        if($page == 2){ $page = $page + 1; }
        if($page == $maxpage){ $page = $page - 2; }
        if($page == $maxpage - 1){ $page = $page - 1; }
        if($page > $maxpage){ $page = $maxpage; }

        for($i=$page - 2; $i<$page + 2; $i++){
            print($pagenumber);
        }
    ?>
        <a class="page-link" href="index.php?page=<?php $page + 1; ?>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
        </a>
    </li>
    </ul>
</nav>