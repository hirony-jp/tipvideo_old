<?php require("header.php"); ?>

<section class="jumbotron text-center">
    <div class="container">
    <h1 class="jumbotron-heading">Videoman</h1>
    <p class="lead text-muted">動画を投稿して投げ銭をもらおう！お気に入りの動画に投げ銭しよう！</p>
    <p>
        <a href="/view/help.php" class="btn btn-primary">ヘルプ</a>
        <a href="/view/fund.php" class="btn btn-primary">募金</a>
    </p>
    </div>
</section>

<!-- 投稿フォーム -->
<div class="card">
    <div class="card-block">
        <form action="" method="post">
            自分のTwitter IDを入力してください。<br>
            <div class="input-group">
            <span class="input-group-addon" id="basic-addon1">自分のTwitterID</span>
            <input type="text" class="form-control" placeholder="Input Your Twitter ID" aria-describedby="basic-addon1">
            </div>
            動画タイトルを入力してください。<br>
            <div class="input-group">
            <span class="input-group-addon" id="basic-addon1">動画タイトル</span>
            <input type="text" class="form-control" placeholder="Input Your Video Title" aria-describedby="basic-addon1">
            </div>
            動画のURLを入力してください。<br>
            <div class="input-group">
            <span class="input-group-addon" id="basic-addon1">動画URL</span>
            <input type="text" class="form-control" placeholder="Input Your Video URL" aria-describedby="basic-addon1">
            </div>
            動画説明文を入力してください。<br>
            <div class="input-group">
            <span class="input-group-addon" id="basic-addon1">動画説明文</span>
            <input type="text" class="form-control" placeholder="Input Your Video description" aria-describedby="basic-addon1">
            </div>
        </form>
    </div>
</div>
<!-- 投稿された動画群を表示 -->
<div class="container">
    <?php require("view/list.php"); ?>
</div>


<?php require("footer.php"); ?>