<?php require("header.php"); ?>
<?php 
    if (isset($_GET['page'])) {
        if ((int)$_GET['page'] >= 0 ){
            $page = (int)$_GET['page'];
        } else {
            $page = 0;
        }
    } else {
        $page = 0;
    }
?>

<section class="jumbotron text-center">
    <div class="container">
    <h1 class="jumbotron-heading">Videoman</h1>
    <p class="lead text-muted">動画を投稿して投げ銭をもらおう！お気に入りの動画に投げ銭しよう！</p>
    <p>
        <a href="view/help.php" class="btn btn-primary">ヘルプ</a>
        <a href="view/post.php" class="btn btn-primary">投稿する</a>
    </p>
    </div>
</section>


<!-- ページネーション -->
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
    <li class="page-item">
        <a class="page-link" href="index.php?page=<?php echo $page - 1; ?>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
        </a>
    </li>
    <?php
        $pageitem = $page;
        switch($page){
            case 0:
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 3).'">'.($page + 4).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 4).'">'.($page + 5).'</a></li>');
                break;
            case 1:
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 1).'">'.($page - 1).'</a></li>');
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 3).'">'.($page + 4).'</a></li>');
                break;
            default:
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 2).'">'.($page - 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 1).'">'.$page.'</a></li>');
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
        }
    ?>
        <a class="page-link" href="index.php?page=<?php echo $page + 1; ?>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
        </a>
    </li>
    </ul>
</nav>

<!-- 動画群 -->
<div class="container">
    <div class="row">
        <?php
            require("server/database.php");

            $page = $_GET["page"];
            $hoge = $page * 9;
            $select_sql = 'select * from Posts order by postdate desc limit 9 offset '.$hoge.';';


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
                $videodata = '  <h4 class="card-title">'.$videotitle.'</h4>
                            <p class="card-text">'.$videodescription.'</p>
                            '.$videourl.'
                            <br>
                            <p>postid   : '.$postid.'</p>
                            <a href="#" class="btn btn-primary">tip</a>
                        ';
                print($div_class_card);
                print($videodata);
                print($div_end);
                print($div_end);
                print($div_end);
            }
        ?>
    </div>
</div>

<br><br>
<!-- ページネーション -->
<nav aria-label="Page navigation example">
    <ul class="pagination justify-content-center">
    <li class="page-item">
        <a class="page-link" href="index.php?page=<?php echo $page - 1; ?>" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
        </a>
    </li>
    <?php
        $pageitem = $page;
        switch($page){
            case 0:
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 3).'">'.($page + 4).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 4).'">'.($page + 5).'</a></li>');
                break;
            case 1:
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 1).'">'.($page - 1).'</a></li>');
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 3).'">'.($page + 4).'</a></li>');
                break;
            default:
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 2).'">'.($page - 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 1).'">'.$page.'</a></li>');
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
        }
    ?>
        <a class="page-link" href="index.php?page=<?php echo $page + 1; ?>" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
        </a>
    </li>
    </ul>
</nav>
<br>


<?php require("footer.php"); ?>