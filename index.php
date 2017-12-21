<?php require("header.php"); ?>

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


<!-- 投稿された動画群を表示 -->
<div class="container">
    <div class="row">
        <?php require("view/list.php"); ?>
    </div>
</div>


<?php require("footer.php"); ?>