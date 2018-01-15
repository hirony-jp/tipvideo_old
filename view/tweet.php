<?php
    require("../header.php");
    require("../server/database.php");

    // GETメソッドに値が入ってるかチェック
    if (isset($_GET["postid"]) == false) {
        header("Location: ../index.php");
    } else {
        $postid = htmlspecialchars($_GET["postid"], ENT_QUOTES);
    }
    // SQL文
    $single_select_sql = 'select * from Posts where postid = '.$postid;
?>

<!-- 動画表示箇所 -->
<br><br>
<div class="container">
    <div class="row justify-content-md-center">
    <?php

        // cardを表示する
        $stmt = $pdo->query($single_select_sql);
        while($row = $stmt -> fetch(PDO::FETCH_ASSOC)) {
            $postid = $row["postid"];
            $postdate = $row["postdate"];
            $twitterid = $row["twitterid"];
            $videotitle = $row["videotitle"];
            $videourl = $row["videourl"];
            $videodescription = $row["videodescription"];
            $videourl = htmlspecialchars_decode($videourl, ENT_QUOTES);

            $div_class_card = '<div class="col-lg-6 col-sm-12"><div class="card"><div class="card-body">';

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
            print($paydata);
            print($div_end);
            print($div_end);
            print($div_end);
            print($div_end);
        }
    ?>
    </div>
</div>

<?php
    require("../footer.php");
?>