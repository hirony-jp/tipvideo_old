<?php require("../header.php"); ?>

<?php
    if (isset($_POST['twid']) == false) {
        header("Location: post.php");
    }
    if (isset($_POST['vtitle']) == false) {
        header("Location: post.php");
    }
    if (isset($_POST['vurl']) == false) {
        header("Location: post.php");
    }
    if (isset($_POST['vdesc']) == false) {
        header("Location: post.php");
    }
    
    $tw_id = $_POST["twid"];
    $v_title = $_POST["vtitle"];
    $v_url = $_POST["vurl"];
    $v_description = $_POST["vdesc"];
    $tw_id = htmlspecialchars($tw_id, ENT_QUOTES);
    $v_title = htmlspecialchars($v_title, ENT_QUOTES);
    $v_url = htmlspecialchars($v_url, ENT_QUOTES);
    $v_description = htmlspecialchars($v_description, ENT_QUOTES);
?>

<br>
<div class="container">
    <h2>以下の内容で送信しますか？</h2><br>
    <div class="card">
        <div class="card-block">
            <form action="../server/insert-niko.php" method="post">
                Tiwtter ID<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">@</span>
                <input type="text" name="twid" class="form-control" value="<?php echo $tw_id ?>" placeholder="Input Your Twitter ID" aria-describedby="basic-addon1" readonly>
                </div>
                <br>
                動画タイトル<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon2"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
                <input type="text" name="vtitle"class="form-control" value="<?php echo $v_title ?>" placeholder="Input Your Video Title" aria-describedby="basic-addon2" readonly>
                </div>
                <br>
                動画URL<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon3"><i class="fa fa-youtube" aria-hidden="true"></i></span>
                <!-- <input type="text" name="vurl" class="form-control" value="" placeholder="Input Your Video URL" aria-describedby="basic-addon3" readonly> -->
                <textarea type="text" name="vurl" class="form-control" cols="100%" rows="10" placeholder="url" aria-describedby="basic-addon3" readonly><?php echo $v_url ?></textarea>
                </div>
                <br>
                動画説明文<br>
                <div class="input-group">
                <span class="input-group-addon" id="basic-addon4"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></span>
                <!-- <input type="text" name="vdesc" class="form-control" value="" placeholder="Input Your Video description" aria-describedby="basic-addon4" readonly> -->
                <textarea type="text" name="vdesc" class="form-control" cols="100%" rows="10" placeholder="Description" aria-describedby="basic-addon4" readonly><?php echo $v_description ?></textarea>
                </div>
                <br>
                <div class="alert alert-warning" role="alert">
                    <h4 class="alert-heading">注意</h4>
                    <p>一度投稿したら削除できません。今のうちに確認しましょう。</p>
                </div>
                <button type="submit" class="btn btn-primary">投稿</button>
            </form>
        </div>
    </div>
</div>
<br>

<?php require("../footer.php"); ?>