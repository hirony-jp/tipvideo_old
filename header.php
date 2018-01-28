<!DOCTYPE html>
<html lang="jp">
  <head>
    <title>tipVideo</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    <link rel="stylesheet" type="text/css" href="/css/layout.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-113188685-1"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-113188685-1');
    </script>

    <!-- Google Adsense -->
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script>
    (adsbygoogle = window.adsbygoogle || []).push({
        google_ad_client: "ca-pub-1596202342418621",
        enable_page_level_ads: true
    });
    </script>
  </head>
  <body>

  <!-- Navbar -->
    <nav class="navbar navbar-inverse navbar-toggleable-md navbar-light bg-faded bg-primary">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="/index.php">tipVideo</a>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/view/post.php">投稿する</a>
            </li>
            <!-- <li class="nav-item">
                <a class="nav-link" href="/view/help.php">ヘルプ</a>
            </li> -->
            <li class="nav-item">
                <a class="nav-link" href="/view/about.php">作った人</a>
            </li>
            </ul>
            <form class="form-inline" method="post" action="/view/serch.php">
            <div class="input-group">
                <input class="form-control input-serch-nav" type="text" name="serch" placeholder="Search">
                <span class="input-group-btn">
                    <button class="btn btn-secondary" type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                </span>
            </div>
          </form>
        </div>
    </nav>