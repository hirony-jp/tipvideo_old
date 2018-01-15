<?php require("header.php"); ?>
<?php 
    if (isset($_GET['page'])) {
        if ((int)$_GET['page'] >= 0 ){
            $page = (int)htmlspecialchars($_GET['page'], ENT_QUOTES);
        } else {
            $page = 0;
        }
    } else {
        $page = 0;
    }

    if (isset($_GET['tip'])) {
        if ((int)$_GET['tip'] >= 0 ){
            $tip = (int)htmlspecialchars($_GET['tip'], ENT_QUOTES);
        } else {
            $tip = 0;
        }
    } else {
        $tip = 0;
    }
?>

<section class="jumbotron text-center">
    <div class="container">
    <h1 class="jumbotron-heading">tipVideo</h1>
    <p class="lead text-muted">動画を投稿しろ！ゼニなげるぞ！<br>tipmonaやzenyhimeを使って投げゼニをします。</p>
    <p>
        <a href="view/about.php" class="btn btn-primary">あばうと</a>
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
        switch($page){
            case 0:
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 3).'">'.($page + 4).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 4).'">'.($page + 5).'</a></li>');
                break;
            case 1:
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 1).'">'.$page.'</a></li>');
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

            $hoge = $page * 6;
            $select_sql = 'select * from Posts order by postdate desc limit 6 offset '.$hoge.';';


            // cardを表示する
            $stmt = $pdo->query($select_sql);
            while($row = $stmt -> fetch(PDO::FETCH_ASSOC)) {
                $postid = $row["postid"];
                $postdate = $row["postdate"];
                $twitterid = $row["twitterid"];
                $videotitle = $row["videotitle"];
                $videourl = $row["videourl"];
                $videodescription = $row["videodescription"];
                $videourl = htmlspecialchars_decode($videourl, ENT_QUOTES);

                // $pay = '0';

                $div_class_card = '<div class="col-lg-6 col-sm-12""><div class="card"><div class="card-body">';
                // $tipbuttons = '<center>
                //                 <a href="https://twitter.com/intent/tweet?url=<URL>&text=%40tipmona%20tip%20%40'.$twitterid.'%20'.$pay.'%20%e3%81%82%e3%81%aa%e3%81%9f%e3%81%ae%e5%8b%95%e7%94%bb%e3%81%abtip%e3%82%92%e8%b4%88%e3%82%8a%e3%81%be%e3%81%99&related=_hirony" class="btn btn-warning">MONA</a> 
                //                 <a href="https://twitter.com/intent/tweet?url=<URL>&text=%40zenyhime%20tip%20%40'.$twitterid.'%20'.$pay.'%20%e3%81%82%e3%81%aa%e3%81%9f%e3%81%ae%e5%8b%95%e7%94%bb%e3%81%abtip%e3%82%92%e8%b4%88%e3%82%8a%e3%81%be%e3%81%99&related=_hirony" class="btn btn-secondary">ZNY</a> 
                //                 <a href="https://twitter.com/intent/tweet?url=<URL>&text=%40tipxem%20tip%20%40'.$twitterid.'%20'.$pay.'%20%e3%81%82%e3%81%aa%e3%81%9f%e3%81%ae%e5%8b%95%e7%94%bb%e3%81%abtip%e3%82%92%e8%b4%88%e3%82%8a%e3%81%be%e3%81%99&related=_hirony" class="btn btn-success">XEM</a> 
                //                 <a href="https://twitter.com/intent/tweet?url=<URL>&text=%40tipxrp%20tip%20%40'.$twitterid.'%20'.$pay.'%20%e3%81%82%e3%81%aa%e3%81%9f%e3%81%ae%e5%8b%95%e7%94%bb%e3%81%abtip%e3%82%92%e8%b4%88%e3%82%8a%e3%81%be%e3%81%99&related=_hirony" class="btn btn-primary">XRP</a>
                //                 <p> </p>
                //                 </center>
                //                 ';
                $div_end = '</div>';
                $videodata = $videourl.'<div class="card-block">
                                        <a class="btn btn-primary btn-block" href="https://twitter.com/intent/tweet?text=%e3%80%90tipvideo%e3%80%91'.$videotitle.'%20http%3a%2f%2fwww%2etip%2dvideo%2enet%2fview%2ftweet%2ephp%3fpostid%3d'.$postid.'%20%23tipvideo" role="button"><i class="fa fa-twitter" aria-hidden="true"></i> この動画をTwitterで共有する</a>
                                        <p> </p>
                                        <h4 class="card-title">'.$videotitle.'</h4>
                                        <a href="https://twitter.com/'.$twitterid.'">@'.$twitterid.'</a><br>
                                        <p class="card-text">id:'.$postid.'<br>date:'.$postdate.'</p>
                                        <p class="card-text">'.$videodescription.'</p>
                                        ';

                $paydata = '
                            <center>
                            <form class="tipinput" target="_blank" action="view/tip.php" method="get">
                            <div class="input-group">
                            <span class="input-group-addon" id="basic-addon-tip">tip</span>
                            <input type="text" name="pay" class="form-control" aria-describedby="basic-addon-tip" placeholder="How much" maxlength="10" required>
                            </div>
                            <br>
                            <div class="input-group">
                            <span class="input-group-addon" id="basic-addon-comment"><i class="fa fa-commenting-o" aria-hidden="true"></i></span>
                            <input type="text" name="comment" class="form-control" aria-describedby="basic-addon-comment" placeholder="comment (max:50)" maxlength="50" required>
                            </div>
                            <input type="hidden" name="twid" class="form-control" value="'.$twitterid.'">
                            <p> </p>
                            <button type="submit" name="sendbutton" value="tipmona" class="btn btn-warning">MONA</button> 
                            <button type="submit" name="sendbutton" value="zenyhime" class="btn btn-secondary">ZNY</button> 
                            <button type="submit" name="sendbutton" value="tipnem" class="btn btn-success">XEM</button> 
                            <button type="submit" name="sendbutton" value="tipxrp" class="btn btn-primary">XRP</button>
                            </form>
                            </center>
                            ';

                print($div_class_card);
                print($videodata);
                // print($tipbuttons);
                print($paydata);
                print($div_end);
                print($div_end);
                print($div_end);
                print($div_end);
            }
        ?>
    </div>
</div>


<br>
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
        switch($page){
            case 0:
                print('<li class="page-item active"><a class="page-link" href="index.php?page='.$page.'">'.($page + 1).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 1).'">'.($page + 2).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 2).'">'.($page + 3).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 3).'">'.($page + 4).'</a></li>');
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page + 4).'">'.($page + 5).'</a></li>');
                break;
            case 1:
                print('<li class="page-item"><a class="page-link" href="index.php?page='.($page - 1).'">'.$page.'</a></li>');
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