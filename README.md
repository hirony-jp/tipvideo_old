# tipvideo

第三者が作成したTwitter tip botの力をお借りして動画投稿者に投げ銭するサイトです。  
仮想通貨の規制強化に伴ってのtipbotのサービス終了に伴い、当サイトも閉鎖しました。  
ありがとう、仮想通貨。

ちなみに、使ってたドメインはオンラインカジノ（）に関するページになってます（）（）（）
https://www.tip-video.net

動かしてみるには
```sh
on host machine
$ git clone https://github.com/scotch-io/scotch-box.git
$ cd scotch-box/public
$ mv index.php index.php.org
$ git clone https://github.com/hirony-jp/tipvideo_old.git
$ cd ../
$ vagrant up && vagrant ssh

on vm
$ curl https://raw.githubusercontent.com/hirony-jp/tipvideo_old/master/database.sql > database.sql
$ sudo mysql -u root -p < database.sql ,,,password is root,,,

access to 192.168.33.10
```

※イメージ
![image](20180210004324.png "サンプル")
