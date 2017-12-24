<?php

    $cash = htmlspecialchars_decode($_GET["pay"], ENT_QUOTES);
    $twid = htmlspecialchars_decode($_GET["twid"], ENT_QUOTES);
    $tiptype = htmlspecialchars_decode($_GET["sendbutton"], ENT_QUOTES);
    $comment = htmlspecialchars_decode($_GET["comment"], ENT_QUOTES);;
    $serverurl = '%20https%3a%2f%2fwww%2etipvideo%2ecom';
    $hashtag = '%20%23tipvideo';

    if( $tiptype == "tipnem"){
        $tweeturl = 'https://twitter.com/intent/tweet?text=%40'.$tiptype.'%20tip%20%40'.$twid.'%20'.$cash.'%20xem%20'.urlencode($comment).$serverurl.$hashtag.'&related=_hirony';
    } else {
        $tweeturl = 'https://twitter.com/intent/tweet?text=%40'.$tiptype.'%20tip%20%40'.$twid.'%20'.$cash.'%20'.urlencode($comment).$serverurl.$hashtag.'&related=_hirony';
    }

    header("Location: $tweeturl");
?>