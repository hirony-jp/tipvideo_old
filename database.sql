set names utf8mb4;
drop database if exists video;
create database video;

grant all privileges on video.* to root@localhost identified by 'root';

use video;

create table Posts(
    postid int auto_increment not null primary key,
    postdate datetime not null,
    twitterid varchar(255) not null,
    videotitle varchar(255) not null,
    videourl varchar(255) not null,
    videodescription varchar(255) not null,
    tipcount int default 0 not null
);

create table comments(
    postid int not null,
    comment varchar(255) not null,
    commentdate datetime not null
);


-- ページネーション
-- limit には表示したい項目数を、offset にはページ数(0はじめ)を。
-- select * from Posts order by postdate desc limit 2 offset 0;

-- 投稿する
-- insert into Posts(postid, postdate, twitterid, videotitle, videourl, videodescription) value(0, now(), ?, ?, ?, ?);

-- 文字コード確認
-- show variables like '%char%';







-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: videoman
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Posts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `postdate` datetime NOT NULL,
  `twitterid` varchar(255) NOT NULL,
  `videotitle` varchar(255) NOT NULL,
  `videourl` varchar(255) NOT NULL,
  `videodescription` varchar(255) NOT NULL,
  `tipcount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`postid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES (1,'2017-12-28 01:18:07','_hirony','Test Video','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/BOfg1w2vY64\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','投稿テスト',60),(2,'2017-12-28 13:46:28','gufutokku999','朗読『ごん狐』新美南吉','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/o2_cUklEqnE\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','VOICEROID2 紲星あかりちゃんが家にやってきたので、\r\n新美南吉先生の『ごん狐』を朗読してもらいました。',60),(4,'2017-12-28 13:55:02','kikiriko200','【1時間耐久】ピンポン音1','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/_e21-D2nM94?rel=0\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','友人から&quot;作って?(はぁと)&quot;と言われたので作った。\r\n後悔はしていない。',60),(5,'2017-12-28 13:59:50','MO_N0_','Bitzeny Promotion','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/MQ33eZui3nE\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','がんばってつくりました',60),(6,'2017-12-28 14:02:59','retoruto_carry','モナコインの歌','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/F25R-yxOshw\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','もな～もな〜もなもなな～\r\n\r\ntipvideo公開お疲れ様です！',60),(7,'2017-12-28 14:08:16','comet_snow','【Noise】Clean Room','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/yezKh23DUUw\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','※この動画には気分を害するノイズが含まれております。\r\nまた実験的なものですので、用法容量を守って聴きましょう。',60),(8,'2017-12-28 14:33:01','Shiyaku','Welcome! monacoin','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/lVCejAVfUqA\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','niconico\r\nhttp://www.nicovideo.jp/watch/sm22711424',60),(9,'2017-12-28 15:31:05','satojun56','石鹸をめちゃ泡立てる動画','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/9w6x89N0kxw\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','悶絶テクを見てくれ。',60),(10,'2017-12-28 15:39:45','satojun56','Civic 非公式日本語訳','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/wMsqdiInklo\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','ブロックチェーンで個人認証。これさえあればユーザーIDもパスワードももう要らない!?\r\nCivicなるアプリが便利そうだったので、公式動画を日本語訳してみました。',60),(11,'2017-12-28 16:27:40','gufutokku999','朗読『ごん狐』新美南吉【圧縮版】','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/zl4oBw7KAJ0\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','【動画サイズが大き過ぎたようなのでエンコードして再掲しました】\r\nVOICEROID2 紲星あかりちゃんが家にやってきたので、\r\n新美南吉先生の『ごん狐』を朗読してもらいました\r\n',60),(12,'2017-12-28 17:46:37','harukarobo','./drum&#039;n bass','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/NytIh9Gg-8g\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','Ipadで適当に作った曲でテスト投稿です',60),(13,'2017-12-28 17:54:50','harukarobo','フィギュアヘッズfacelig配信録画','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/xHpJgOAL0r8\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','少し前ですがフィギュアヘッズというスクエニの無料オンラインTPSxRTSを流行らせるべくfacelig使ってるテスト配信出します\r\n大体3分辺りからハジマルヨ',60),(17,'2017-12-28 18:20:37','henn6com','非バーチャルyoutuber（無職）','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/JZCl-cROivI\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','上京して8ヶ月で無職になり、再就職も失敗した人の末路です。\r\n\r\n足を怪我してしまい就職活動すらできなくなりました。\r\nそのため何もしないよりマシという考え方からyoutuberになりました。えらいねー\r\n\r\n50円～50億円の間で僕の一日を投げ売りしています。bitzenyやmonacoinでの依頼も待ってるょ\r\n人を支えたり助けたり楽しませることが生きがいなので何か困ってることあったらご連絡ください♥\r\n',60),(19,'2017-12-28 19:45:50','cat25_house','猫20匹に餌をあげてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/1ex6RW4UeYY\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','猫たちに無計画に餌をあげるとこうなります(^_^;)\r\n餌をあげるときは計画的に行いましょうヽ(=´▽`=)ﾉ\r\n\r\n',60),(20,'2017-12-28 20:04:18','hijikiishituka','【 MV 】すきやき王子 / ワラビーズ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/xKNB8WpvFA0\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','作詞 ひじき石塚 / 作曲 ワラビーズ\r\n\r\n振り付け・指導　Ballet tutu主宰Ai\r\nhttp://ballet-tutu.crayonsite.net/\r\n\r\nタイトルクッキー制作　UNO\r\nhttp://unoharuka.web.fc2.com/index.html\r\n\r\nすきやき王国ダンサーズ\r\nいずみ かいせい\r\nいずみ こうせい\r\nさとう ひなた\r\nみずかみ たかし\r\n\r\n撮影日　2017年10月21日',60),(21,'2017-12-28 21:11:24','Selenium_jinro','アコギ　スラム奏法　手癖','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/57hVixkXAbU\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','曲名などはありません。普段練習のときに手癖で弾いてる曲を撮りました。\r\n動画撮影に慣れておらず、お見苦しいところもあるかもしれませんが、、、',60),(22,'2017-12-28 21:30:46','jmworks','BitZeny in Rain','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/-_qBag29fTk\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','tipVideo試すようにBitZenyのロゴをかっこよさげにrain降らせた。',60),(23,'2017-12-28 22:46:41','blu_rayrecorder','BABYBABY カバー 弾き語り風','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/mWb5NU1gs14\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','僕が大好きな銀杏BOYZの名曲をカバーしました。\r\ntipVideoってこういうのありなのか？',60),(25,'2017-12-28 22:58:02','kisaragi24','UNDERTALE - FDD','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/wFVJ2_En664\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','FDD(フロッピーディスクドライブ)8台で「UNDERTALE」の好きな曲をいくつか演奏しました。\r\n「Moppy-Advanced」を使用し「Arduino Nano」で制御しています。',60),(26,'2017-12-28 23:05:06','kisaragi24','Yayyayyayyayyayyay!!','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/LnkKG_X1YK8\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','冬はつとめて。雪の降りたるは言ふべきにもあらず、霜のいと白きも、またさらでもいと寒きに、リグなど急ぎおこして、GTX1080持て回すも、いとつきづきし。',60),(27,'2017-12-29 06:59:43','riku7770','夢と幻想の森','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/IynVOsgH-QE\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','スマホの横位置で撮った映像を編集したものです。\r\nよろしくお願いします。',60),(28,'2017-12-29 07:11:33','riku777','月の光にてらされて','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/4JjJAEFjf-s\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','5分の作品ですが、高校時代当時、\r\n部費20万と、3か月の期間を使って、\r\n徹夜を重ねて製作された、労作です。\r\n\r\n月の光は、ルナティックという言葉がありますが、\r\n「月狂い」というニュアンスがあると思います。\r\n20年以上前のHi8で作った作品ですが、\r\nこのような形で配信できる日が来るとは、\r\n技術革新に、感無量です。',60),(29,'2017-12-29 07:16:03','riku777','涼しさと雨の静けさ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/JXoxVvVJ8eE\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','雨粒は、すてきな空気の匂い\r\n深呼吸して、空を見上げよう\r\nあなたの空色は、なにいろ？',60),(30,'2017-12-29 07:50:57','riku777','あるき猫。','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/2ux3FgnJ9k8\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','猫は歩き出す。大好きなみーちゃんのいるところに向かって。 今日の天気はいい天気。明日の天気はどうかしら。',60),(31,'2017-12-29 08:03:19','riku777','かわいいふくろう','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/J4mVI9VCAss\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','かわいいふくろうの映像',60),(32,'2017-12-29 18:51:34','Su9_2jan','Crazy 4Deck DJ Live1','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/NMVEnZ_nZuY\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','Crazy 4Deck DJ Live Performance Vol.01',60),(34,'2017-12-29 23:27:46','yushapj','投げ合おう、モナコイン','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/M3D0r0aPtpY\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','「投げ合おう、モナコイン」動画を宇宙規模で作ってみた。',60),(35,'2017-12-29 23:55:01','rikukou00','CS:GO - Black heart','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/t-9WmWm5K-A\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','CS:GO FragMovie\r\n\r\nfrags by Rikukou\r\n\r\nhttps://www.twitch.tv/rikukou\r\nhttps://twitter.com/rikukou00\r\n\r\nedit by GuleruuN\r\n\r\n流れに乗って投稿。Donateは編集してくれた方に渡します',60),(37,'2017-12-30 00:10:18','takafuku0815','Bitzenyのマイニングを解説してみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/5X1emBALgvU\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','今更感ありますが、まだマイニングされてない方は参考にしてみてください！',60),(38,'2017-12-30 00:17:51','takafuku0815','仮想通貨元年のセキュリティ#１','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/afBYfG81YEs\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','マカおじもハックされてましたねｗ\r\n仮想通貨取引だけに限らず、普段から気をつけなければですね。',60),(39,'2017-12-30 04:02:21','goumanfactory','【RPGツクール】モナルーム　アルファ版','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/3R5tD-3_7XU\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','RPGツクールで作ったデモ版　\r\n最近モ投げが搭載されたゲーム投稿サイトplicy　https://plicy.netで公開予定?',60),(40,'2017-12-30 12:08:55','t7s_kuroro','TRIGGER弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/m5ipCJqZcpg\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','ナナシスのThe QUEEN of PURPLE / TRIGGER(short ver.) 弾いてみたです\r\nよろしくお願いします\r\nhttps://monappy.jp/u/xxkuroroxx',60),(41,'2018-01-01 06:38:53','Su9_2jan','RAM - ASK(Δ29 Edit)','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/LOd4AV8hFz4\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','Original Song - RAM / ASK.Edit OMEGA ZERO PROJECTION Δ29.',60),(43,'2018-01-06 23:03:49','t7s_kuroro','Fire and Rose弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/IBs5zU4bAaU\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','【ナナシス】The QUEEN of PURPLE / Fire and Rose(short ver.) 弾いてみた 【guitar cover】です。\r\n',60),(44,'2018-01-09 22:29:04','t7s_kuroro','Missing弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/Ei-T838dQNw\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>','ELLEGARDEN / Missing ギター弾いてみた【guitar cover】',60),(45,'2018-01-13 21:54:21','riku777','夢と幻想の森','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/IynVOsgH-QE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','底知れぬ海、見知らぬ海底、夢の跡\r\n窓から聞こえる静かな木立の音\r\n',60),(46,'2018-01-14 20:29:34','t7s_kuroro','ROUAGE/Queenギター弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/C-z-l1y0OLw\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','V系バンドrouage。新録の方です。よろしくお願いします(●´ϖ`●)',60),(47,'2018-01-16 00:37:19','t7s_kuroro',' STONE BUTTERFLY　ギター','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/TP-wnjGkrN4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>',' STONE BUTTERFLY　ギター弾いてみた',60),(48,'2018-01-16 00:37:55','t7s_kuroro','Lizard man ギター弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/sP96iVgtpBY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','Lizard man ギター弾いてみた',60),(49,'2018-01-16 00:38:32','t7s_kuroro','薔薇色の世界　ギター弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/QNkmm29-GrA\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','薔薇色の世界　ギター弾いてみた',60),(50,'2018-01-16 00:39:34','t7s_kuroro','PSYCHEDELIC LOVER弾いた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/Vxexdy0r468\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','PSYCHEDELIC LOVER / PIERROT ギター弾いてみた',60),(51,'2018-01-16 00:40:23','t7s_kuroro','Lively Passion!ギター弾い','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/WGwDwI-77co\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','Lively Passion! ギター弾いてみた',60),(53,'2018-01-16 12:35:00','nontarochannel','羊のヘイヘイホー','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/I5wBEoefr6w\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','羊のヘイヘイホー\r\n(take2)\r\n\r\n失敗したので\r\n上げ直しました。',60),(54,'2018-01-16 12:38:34','nontarochannel','【アンパンマン】モナコインを語る2','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/YrOzJZ6Y2eY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','あの人気キャラクター\r\nアンパンマンとか\r\nバイキンマンとか\r\nドキンちゃんらが\r\n何やらこそこそ\r\n仮想通貨を語ってますよ',60),(55,'2018-01-16 12:40:54','nontarochannel','アスクモナが異様に楽しい件','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/1-rcJbu_laI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','アスクモナ楽しいよね～',60),(56,'2018-01-16 12:44:01','nontarochannel','ウルトラマンティガ&amp;ガイア','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/SNyrIyEhitk\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','昔懐かしい\r\nプレステ2の\r\nFE3のプレイ動画。',60),(57,'2018-01-16 22:28:59','riku777','ロケット発射！','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/F_m9qYqARr8\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','どーん！',60),(58,'2018-01-17 13:06:00','dustyskyjp','明石家さんまラブメイト10！読モ出演MV','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/-Au-UJdin2w\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','2015年、27時間テレビの名物コーナー「ラブメイト10」であの明石家さんまに選出された読者モデル出演のMV！\r\nインストHIP HOPが大好きな人にオススメです！',60),(59,'2018-01-17 17:32:28','kikiriko200','【自作PC】2万円以下でKabylake','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/_jnSDvet2ec?rel=0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','このあと4000円でGTX780を、8980円で850EVO250GBを、あと転がってたWindows10Proを確保して今にいたる(*&#039;▽&#039;)',60),(60,'2018-01-18 19:01:38','nontarochannel','仮想通貨大暴落だけど気にすんじゃねーど','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/3GZ83VqGStM\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','中国の仮想通貨規制に\r\n先駆けビットコイン含む\r\n仮想通貨が軒並み大暴落致しました。\r\n\r\n純国産モナコインですら\r\nこの大きな波に引っ張られる形で\r\nついに500円台まで下がりました。\r\n\r\nどうなる？モナコイン？\r\nどうなる？仮想通貨市場！\r\n\r\n現役ファイナンシャルプランナー\r\nのんたろうが今後の\r\nモナコインについて答えます。',60),(61,'2018-01-18 19:04:59','nontarochannel','モナコイン投資の諸注意','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/tgSvglGAQQQ\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','モナコインは\r\n日本初の仮想通貨だから\r\n応援しようと思って\r\nいざ買ったら\r\nあまりの乱高下に\r\n幻滅したという話も少なくありません。\r\n\r\nそこで諸注意をまとめました',60),(62,'2018-01-18 19:50:30','nontarochannel','モナコイナーはデビルマン','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/jc5ZLqrpm8A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','モナコインは海外資産に\r\n\r\n食い荒らされない為にも\r\n\r\n本来であれば国内での\r\n\r\n需要を高めて行かなければならない。',60),(63,'2018-01-18 20:20:52','nontarochannel','太りすぎてボクシングジムを解雇されました','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/lUYToBvzrBE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','髪型をイメチェンし、やる気になっていた矢先。会長がさじをなげました。\r\n\r\nはじめの一歩2\r\nボクロー',60),(64,'2018-01-18 20:23:25','nontarochannel','WBAライト級世界タイトルマッチ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/G3zP9lhOC_A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','PS2版はじめの一歩 ボクサーズロードでの\r\n初の世界戦です。\r\n\r\n挑戦者:のんたろうは、果たしてベルトをもぎ取ることが出来るのか！？\r\n\r\n◯再生リスト\r\nはじめの一歩2 ボクサーズロード: http://www.youtube.com/playlist?list=...\r\nもっと見る\r\n',60),(65,'2018-01-18 20:26:29','nontarochannel','ピタゴラのんたろうスイッチ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/1O2SmPajayk\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','ビー玉が転がる様を撮ります\r\n\r\n世界中からアクセスがある\r\nのんたろうチャンネル代表作',60),(66,'2018-01-19 10:19:58','sei_umino','CLIPSTUDIOPAINT　イラスト','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/pXvg6joJ6Qg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','制作者　東雲飛鶴\r\nオリジナルイラストのメイキング動画です。\r\nHP　http://izuru01.tumblr.com/\r\n\r\nこのイラストのモナカードを販売中です。\r\nhttps://card.mona.jp/explorer/card_detail?asset=METATRON',60),(67,'2018-01-19 10:31:43','sei_umino','イラストメイキング「Jewel」 ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/XaFS8Sv6L4g\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','制作者　東雲飛鶴\r\nオリジナルイラストのメイキング動画です。\r\nHP　http://izuru01.tumblr.com/',60),(68,'2018-01-19 10:33:17','sei_umino','イラストメイキング「FF　白魔道士」 ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/zliZ6aBbGjI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','制作者　東雲飛鶴\r\nイラストのメイキング動画です。\r\nHP　http://izuru01.tumblr.com/',60),(69,'2018-01-19 22:02:36','t7s_kuroro','脳内モルヒネ　ギター弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/KkqgnBBNl4A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','PIERROT / 脳内モルヒネ　ギター弾いてみた',60),(70,'2018-01-21 13:05:58','t7s_kuroro','U&amp;I ギター弾いてみた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/lGpTkabCTGg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','けいおん!!',60),(71,'2018-01-24 10:15:53','nontarochannel','モナコインどうして上がらないの？？','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/Ty686KedCGg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','モナコイン\r\nいろんな上げ材料があるのに\r\nさっぱり上がらないのはどぼじで・・・',60),(72,'2018-01-24 10:18:30','nontarochannel','YOUTUBE収益化改正','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/PaPiJXe-Gg4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','登録者1000人の壁はかなり高い。\r\nそして再生時間4000時間の年間再生時間をクリアしなければいけない。\r\nこれはキッズには無理。\r\n\r\n',60),(73,'2018-01-24 10:21:27','nontarochannel','ガストのイチボステーキを食べる','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/UB6q7r2o54Q\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','ガストのイチボステーキを\r\n食べてみたら意外にあれだった話',60),(74,'2018-01-24 10:22:57','nontarochannel','一人スパルタンエックス【ファミコン】','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/eDcjh26TH3A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','スパルタンエックスのモノマネ\r\n',60),(75,'2018-01-24 10:25:26','nontarochannel','街中で動画撮影しても恥ずかしくない方法','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/OYYBabkA-Cg\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','私は基本顔出ししないので\r\n○○しながら動画するとうまくいきます。',60),(76,'2018-01-24 10:26:57','nontarochannel','【絵本】ころわんと、ちくちくもじょ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/I0YJE2lfeNI\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','絵本読み聞かせ\r\nお子様にどうぞ',60),(77,'2018-01-24 10:30:05','nontarochannel','金運を呼び強運を呼ぶのんたろう式アファメ','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/JnSeBZJT44w\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','のんたろう式アファメーションは\r\nあなたに強運と金運を呼び込みます。',60),(78,'2018-01-24 10:54:43','nontarochannel','巨大魚ドラドを釣りあげろ！','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/aPVjof98smE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','釣りオンでの巨大魚ドラドを釣れ！のミッションです。',60),(79,'2018-01-24 22:34:03','banikuma','了法寺の奉納祭ライブ寺ズッキュン愛の了法','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/_ecvWnseKSo\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','萌寺にてありがたい説法。。。',60),(80,'2018-01-25 23:08:09','t7s_kuroro','微熱からMystery弾いた','<iframe width=\"100%\" height=\"315\" src=\"https://www.youtube.com/embed/QHrkVY7UTD4\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>','微熱からMystery好き',60),(81,'2018-01-29 01:01:55','manate_anagram','【T.M.Revolution】HOT LIMIT(offvocal)【耳コピ】','<script type=\"application/javascript\" src=\"https://embed.nicovideo.jp/watch/sm29384672/script?w=1000&h=315\"></script>','大好きな大好きなT.M.RevolutionのHOT LIMITに\r\nオフボ音源が存在しないので耳コピしました。\r\nぜひT.M.Revolutionごっこして下さい。\r\n動画のページに音源へのリンクを記載しています。\r\nBPMは137.80、リンク先のWAVは32bit(float)で未マスタリングのものです。',0),(82,'2018-02-09 23:33:09','obatatunegorou','小畑常五郎のテーマ/小畑常五郎','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/1CsQ4KCXYJ0&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','小畑常五郎のテーマ\r\n\r\n作詞・作曲　小畑常五郎\r\n\r\n総合ギャグサイト、小畑常五郎万博２０１８年２月、日米仏同時公開。\r\n\r\n【小畑常五郎万博公式HP】\r\nhttp://tunegorou.xsrv.jp/\r\n\r\n【公式ツイッター】\r\nhttps://twitter.com/obatatunegorou\r\n\r\n【公式インスタグラム】\r\nhttps://www.instagram.com/obatatunegorou/',0),(83,'2018-02-10 12:09:10','sakanoshin','真夜中の王　/　 King of the Midnight','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/2AWQ0ebTJqM&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','気に入っていただけたら嬉しいです～\r\n\r\n曲、動画　坂乃新\r\n原作、イラスト　岩男\r\n歌　傷音ウサ\r\n調声　かんたんたん（骨抜きP）\r\nベース　ｓｓｗ１１４ｊｐ\r\n企画からじつに17ヶ月\r\nイラスト総数55カット\r\n岩男さんオリジナルキャラ「アデルバード」から生まれた曲です。\r\n魂を込めました。聴いて下さい。',0),(84,'2018-02-10 22:55:53','QWNIT','【MAD】 君の中の英雄 【Fate】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/EyY6yyTuVIg&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','機動戦士ガンダムAGEのed君の中の英雄　MAD Fate ver です。',0),(85,'2018-02-11 12:16:25','obatatunegorou','マイケルとひじき/小畑常五郎落語','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/KKGwLE7sGIU&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','小畑常五郎落語　第１回\r\n「マイケルとひじき」\r\n\r\n総合ギャグサイト、小畑常五郎万博２０１８年２月、日米仏同時公開。\r\n\r\n【小畑常五郎万博公式HP】\r\nhttp://tunegorou.xsrv.jp/\r\n【公式ツイッター】\r\nhttps://twitter.com/obatatunegorou\r\n【公式インスタグラム】\r\nhttps://www.instagram.com/obatatunegorou/',0),(86,'2018-02-13 16:38:39','obatatunegorou','ひじきの極み/小畑常五郎','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/Jil8OiBVhpA&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','寒い夜、大根おろしをすすりながら聞いてみてはいかがでしょうか？',0),(87,'2018-02-13 21:17:24','t7s_kuroro','WHITE PRAYER / Alice Nine ギター弾いてみた【guitar cover】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/SuKhc5_Rp2w&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','よろしくお願いします(●´ϖ`●)\r\ntwitter : https://twitter.com/t7s_kuroro\r\n\r\nニコニコ動画 : http://www.nicovideo.jp/mylist/57851861\r\n\r\n静画 : http://seiga.nicovideo.jp/user/illust...\r\n\r\npixiv : https://pixiv.me/t7s-kuroro',0),(88,'2018-02-15 12:57:51','obatatunegorou','歯ブラシ/小畑常五郎通販','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/r86pYP3y-KI&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','貴方の歯ブラシ感が変わる、そんな番組です。\r\n\r\n総合ギャグサイト、小畑常五郎万博２０１８年２月、日米仏同時公開。\r\n\r\n【小畑常五郎万博公式HP】\r\nhttp://tunegorou.xsrv.jp/\r\n【公式ツイッター】\r\nhttps://twitter.com/obatatunegorou\r\n【公式インスタグラム】\r\nhttps://www.instagram.com/obatatunegorou/',0),(89,'2018-02-18 13:03:54','t7s_kuroro','メモリーズ・ラスト（TVsize） / 黒崎真音 ギター弾いてみた【とある魔術の禁書目録Ⅱ】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/GeFcGtsZddk&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','よろしくお願いします(●´ϖ`●)\r\n',0),(90,'2018-02-27 14:56:30','azul_marino9','アイビス試作（Y・アリアケ）','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/bqZHGQWsJl8&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','アイビスは時間がかかる',0),(91,'2018-03-10 00:56:44','QWNIT','【MAD】敗北の少年　【終末なにしてますか 忙しいですか 救ってもらっていいですか】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/q_aZ5ITfVEQ&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','アニメ見て感動したので作りました(つд⊂)\r\n画質悪いの後から気づきました(つд⊂)',0),(92,'2018-03-13 02:54:24','riku777','hikari-nokioku','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/4XRI7xORAdE&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','清瀬の遊水地',0),(93,'2018-03-21 22:28:41','t7s_kuroro','完全感覚Dreamer / ONE OK ROCK ギター弾いてみた【guitar cover】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/qOsQY0Wy9FY&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','よろしくお願いします(●´ϖ`●)\r\ntwitter : https://twitter.com/t7s_kuroro\r\nニコニコ動画 : http://www.nicovideo.jp/mylist/57851861',0),(94,'2018-03-29 01:43:04','dec5th1','英語発音講座の動画に字幕付けてみた','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/YGxX3UINatA&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','テスト兼お遊び初投稿。ネタ元は動画ページの説明にて。原稿用紙半分程度を埋め尽くすほどの説明が思いつかんので、今回はこれにて。',0),(95,'2018-04-13 21:28:43','aya_emn','艦これの長月ちゃんを描いてみた【ibisPaintX】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/KtknqR4pVOc&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','長月ちゃんのメイキング動画です。',0),(96,'2018-04-13 21:32:47','aya_emn','艦これの睦月ちゃん描いてみた【ibisPaintX】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/duMS0EOA-x8&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','艦隊これくしょんの睦月ちゃん描いてみました。\r\n◆Pixiv\r\nhttps://www.pixiv.net/member_illust.php?mode=medium&amp;illust_id=68194305\r\n◆ニコニコ静画\r\nhttp://seiga.nicovideo.jp/seiga/im8039091\r\n◆Monappy\r\nhttps://monappy.jp/picture_places/view/3',0),(97,'2018-04-13 21:35:13','aya_emn','【初投稿】アナログ絵にデジタルで色を塗ってみた【ibisPaintX】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/rHcrU1iNZVk&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','うちの看板娘のもなこちゃんです。\r\n基本的にTwitterで毎日お絵描きしています♪',0),(98,'2018-05-20 13:16:46','t7s_kuroro','【魍魎の匣OP】Lost in Blue / NIGHTMARE ギター弾いてみた【guitar c','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/ZIYUsanzCA4&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','pixivFANBOX始めました！\r\nよろしくお願いします\r\nhttps://www.pixiv.net/fanbox/creator/16636031\r\n',0),(99,'2018-05-22 17:46:52','f_fsecond','【Steam】Tank Force(タンクフォース) Game Play #1 BMP-1 ','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/AIAxP6W0RVc&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','Tank ForceというTPSをプレイしてみました。\r\n近々メモログにて詳しいゲーム説明や裏話などできればと思っています。',0),(100,'2018-06-29 22:46:21','t7s_kuroro','【バンドリ！】BLACK SHOUT / Roseliaギター弾いてみた【guitar cover】','<iframe width=\"100%\" height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/A1ZSntaU28Q&quot; frameborder=&quot;0&quot; allow=&quot;autoplay; encrypted-media&quot; allowfullscreen></iframe>','FANBOXもよろしくお願いします\r\nhttps://www.pixiv.net/fanbox/creator/16636031\r\n\r\n\r\nイラスト描いたりギターの演奏動画を投稿したりしています。\r\nよろしくお願いします(´ω`)\r\npixiv◆https://pixiv.me/t7s-kuroro \r\nyoutube◆https://goo.gl/qRcU6n',0);
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-01  9:18:02