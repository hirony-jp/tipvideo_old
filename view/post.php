<?php require("header.php"); ?>

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

<?php require("footer.php"); ?>