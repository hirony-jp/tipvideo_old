<?php require("../header.php"); ?>

<div class="container">
    <div class="card">
        <div class="card-block">
            <form action="../server/insert.php" method="post">
                自分のTwitter IDを入力してください。<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">自分のTwitterID</span>
                <input type="text" name="twid" class="form-control" placeholder="Input Your Twitter ID" aria-describedby="basic-addon1" required>
                </div>
                動画タイトルを入力してください。<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon2">動画タイトル</span>
                <input type="text" name="vtitle"class="form-control" placeholder="Input Your Video Title" aria-describedby="basic-addon2" required>
                </div>
                動画のURLを入力してください。<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon3">動画URL</span>
                <input type="text" name="vurl" class="form-control" placeholder="Input Your Video URL" aria-describedby="basic-addon3" required>
                </div>
                動画説明文を入力してください。<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon4">動画説明文</span>
                <input type="text" name="vdesc" class="form-control" placeholder="Input Your Video description" aria-describedby="basic-addon4" required>
                </div>
                <br>
                <button type="submit" class="btn btn-primary">投稿する</button>
            </form>
        </div>
    </div>
</div>

<?php require("../footer.php"); ?>