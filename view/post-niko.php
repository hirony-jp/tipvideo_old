<?php require("../header.php"); ?>

<br>
<div class="container">
    <div class="card">
        <div class="card-block">
        <h2><strong>ニコ動投稿フォーム</strong></h2>
        <a class="btn btn-primary btn-block" href="post.php" role="button">Youtube投稿フォームはこちら</a>
        <a class="btn btn-info btn-block" href="help.php" role="button">どうやって投稿したらいいの？</a>
        <hr>
            <form action="confirm-niko.php" method="post">
                自分のTwitter IDを入力してください。<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">@</span>
                <input type="text" name="twid" class="form-control" placeholder="Twitter ID" aria-describedby="basic-addon1" maxlength="50" pattern="^(?!.*@).*$" title="@マークは入力しなくていいよ" required>
                </div>
                <br>
                動画タイトルを入力してください。(50文字くらいまで)<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
                <input type="text" name="vtitle"class="form-control" placeholder="Video Title" aria-describedby="basic-addon2" maxlength="50" required>
                </div>
                <br>
                動画ID(sm00000000)を入力してください。<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon3"><i class="fa fa-film" aria-hidden="true"></i></span>
                <input type="text" name="vurl" class="form-control" placeholder="sm00000000" aria-describedby="basic-addon3" pattern="^sm[0-9]+$" title="sm00000000の形式で入力してください。" maxlength="10" required>
                <!-- <textarea type="text" name="vurl" class="form-control"  cols="100%" rows="10" placeholder="Embed URL" aria-describedby="basic-addon3" maxlength="200" required></textarea> -->
                </div>
                <br>
                動画説明文を入力してください。(200文字くらいまで)<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon4"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
                <!-- <input type="text" name="vdesc" class="form-control" placeholder="Input Your Video description" aria-describedby="basic-addon4" required> -->
                <textarea type="text" name="vdesc" class="form-control"  cols="100%" rows="10" placeholder="Video Description" aria-describedby="basic-addon4" maxlength="200"　required></textarea>
                </div>
                <br>
                <div class="alert alert-danger" role="alert">
                    <h4 class="alert-heading">警告</h4>
                    <p>他人の動画を投稿するのはダメです。絶対にやめましょう。</p>
                </div>
                <button type="submit" class="btn btn-primary">確認</button>
            </form>
        </div>
    </div>
</div>
<br>

<?php require("../footer.php"); ?>