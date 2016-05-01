/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - deduplication
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `deduplication`;

USE `deduplication`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `adminlogin` */

DROP TABLE IF EXISTS `adminlogin`;

CREATE TABLE `adminlogin` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(50) default NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  PRIMARY KEY  (`id`,`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlogin` */

insert into `adminlogin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'admin ','123','admin','Jaynagar','9887878787','admin123@gmail.com');
insert into `adminlogin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (2,'rajat','rajat','rajat','Pune','0987654321','pkm@gmail.com');

/*Table structure for table `digkey` */

DROP TABLE IF EXISTS `digkey`;

CREATE TABLE `digkey` (
  `Rank` int(10) NOT NULL,
  `pubkey` blob,
  `pvtkey` blob,
  PRIMARY KEY  (`Rank`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `digkey` */

insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (1,'¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0¤^Œ­Áê}†ïh^—oÓÛ¾õ|“b„¼¾Ù|ÎQ±R7EÊŠM‡ºJ²twÿÚI}y­¦õDg·GİàuÍ?¥ódd¨q[Áz¤q™–×<Œ÷a­m¸€á“ \0+‚!ğgWôs\rî%ÏãÍxmñ‘ºªuHlIš»Íù\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0{0‚w\00\r	*†H†÷\r\0‚a0‚]\0\0¤^Œ­Áê}†ïh^—oÓÛ¾õ|“b„¼¾Ù|ÎQ±R7EÊŠM‡ºJ²twÿÚI}y­¦õDg·GİàuÍ?¥ódd¨q[Áz¤q™–×<Œ÷a­m¸€á“ \0+‚!ğgWôs\rî%ÏãÍxmñ‘ºªuHlIš»Íù\0\0¢lPŞàL½ĞÛĞ7ÏÉ’òÓïUı‘v&ï#dÄ¢ÂÓQW³D2$`—Hg‰â¶¸¸’è¹\Z–¨±ö˜KÑø–\r€Ç½“äF6>ÄY«ŒØjÚĞñ‰}ûğ©ÑÑË˜NcŒÈ°ˆ´ûc1)áaFæËM1ğ±ÜyÔm—şÕA\0ÛPŸË@VÓzş~R÷y‰;…%®Âeûf/w½€ĞbEÎ@”¿E³Vp\ngÙ?FÂ¾Lòÿ‚|ÜˆºôÕ•èªQoA\0À	 áÒuH:- ü…>TŞğK?ÂÒëÊ]·@¦ß.MØ#¹9ÇêÌ?õ›.M•oK«ÃN\Zâ8½)7°Ó@}ë—íœ‚&ãu…×ZüoÓ_jd°ò0!<„ÎÏ,,CŞ\nipÚYÃpb¨å½ê[Yÿ†ıÀX[Ò´åA\0‰@½\0ÊDK(C@OM?œ·nõÉ¼ãSiËi.–2Êm£Ï1‘’Í¦\r‹¥í\0¸Mÿ•¡ğ(¼^ì§ôg@{Ç°¼œÇq1¶!V:Kè«•	ÆvcØ Zcı08LuIeäD×\\Pi!ÅÈ¶‚!q½óL°dÖZ”À$\'hüçt\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (2,'¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0¬•«Èœ´Šé†\' wjÇìÀÄJ¢`KpŞ¨èi„MÓºz_Æò¡r²4 çRÆ:®èX›v!Mˆr@Ç^×?øĞÉHñJOd_ô.C.1»äVè¹©o óAä;ßbê7òOu‚âD\\dµLG;¿Ş~õBĞÂK//\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0z0‚v\00\r	*†H†÷\r\0‚`0‚\\\0\0¬•«Èœ´Šé†\' wjÇìÀÄJ¢`KpŞ¨èi„MÓºz_Æò¡r²4 çRÆ:®èX›v!Mˆr@Ç^×?øĞÉHñJOd_ô.C.1»äVè¹©o óAä;ßbê7òOu‚âD\\dµLG;¿Ş~õBĞÂK//\0€\0f><µ„p°.aÚ&w¥J QÇIX	tÛ°£vş÷¶ÁÜ J?è!÷S›7ÍZç\07qYxäbÛ•ø«ê)®y21%ÂæpKÒ¤eÚ~œm´_°§wzWÙ{…^^¯Q::½×\'7=ªš¢ùaµ¦ñÖoÇçO’UT$¡A\0çF›t%Sl«¡÷ZªƒğóO±KŒ7c»õª0A÷§ï’Uï~Hvù¤òı£vòHÃMş‹.br«BfHªbtÅA\0¾†\"¯\rßÎšqÿ©aúPÜ³‹Ãn‰äÇPIŒV?ÇÃ\'±k±»R/ğL<6ifêôÚß¿›¾%cÒåÏW‡L)A\0púê	ÁøÔµ	ä5€È®ôP/Äúâ`PÇêŠòasÎ\"ÎÓ±ºÀ¥3.Îxø³lo+¦*ÇXc“)b*Ş]@zhşAÌ[z¯h…Ô…éôSz><4”fJŸc­:R÷hE2 u„8¯ûü½ßÂa…İ5ÑS”~©ßÖ79@F5ZÙÎQEÉÓúRsûî™Â	\\*ø<“NÚğJ\'ËŠsÅ=QÌ‘s×{ÜÓ—3ÚÊÿÚë	áF,îˆ[t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (3,'¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0ßŠÈ„£íé7N\r”±fí€På™–åîüG¸ÉÔ#Ë¡-„Vi*Zö|ğvuèö¢[wÜıÜãF¯Æ`áèO9Øè8§!şV¦Vqıık°ğsCï<™4‰±â+3’‚³†¡şÊ\r‹©ë\\É—µör¥šöµæıíêÜ…\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0{0‚w\00\r	*†H†÷\r\0‚a0‚]\0\0ßŠÈ„£íé7N\r”±fí€På™–åîüG¸ÉÔ#Ë¡-„Vi*Zö|ğvuèö¢[wÜıÜãF¯Æ`áèO9Øè8§!şV¦Vqıık°ğsCï<™4‰±â+3’‚³†¡şÊ\r‹©ë\\É—µör¥šöµæıíêÜ…\0€Wÿµˆ iVSİ¸<¥?^ ÅO÷Ï&†ŒÚ¬˜ÊoÙ¢nÍ ëbŞFIÒ/¸­J\'IñaâşÆ¥¸1t±şP/§âXUË{)(|H4²;FT\'^TKg²{ItH“¾>V›öâ»+ +©ÄäH ÚCáW·³\"¢‚g¶Y%,T²ì¤A\0ÏÌo£Ãè¥Ñj·\ZáùÛĞHª¿T,Çì¥ßË^u®l/Ê^8šçN#˜)şó¿%0LÅ•‹	]ÓiºÀX®!QA\0±?™$º‰\0šŞLFjGõæG¼Q5»°ĞÔOå¶àr[Î¥¼ROÅ,Õ¡ŸÖHøÊM¿s³ŞË¬¤Ç…@IÀøúúDïİÕoªü¶mJCšCÎ­úíäÃá&é-Ô+^;uŞ	Hîğ0ò˜¬}€tUHÏ±‚`ĞMŠ;íA\0‰µ‘Œí““»Ì¥™D»Nf¯5ä‡<0A£—0«›]ŞYëØ*í·Ù‡ˆ`àìy¼•îÛm÷®)A\0µ.O3,äŞ‘\\á¢àœ7ôIã\nvO¶›ÿò¡=´áÖÁ0ş÷8Ë‹·E˜\\wÜ$è‡6Šowñø¬ß’Ë©}t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (4,'¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0‡´é}JıÃP´z\r:‡=ƒó/@°t¶…›MİI/êEëÜ95•…‘emÚ_EÍ¼PM«Ê…}ï½û+Šé¡<’…³H”,#\ZçâğœóD~.\"áÄ­wÿ”±hóœÈcªu¢`Ãa;±ãÃıô¼ÆÆ·Û_¬ÖÂ\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0y0‚u\00\r	*†H†÷\r\0‚_0‚[\0\0‡´é}JıÃP´z\r:‡=ƒó/@°t¶…›MİI/êEëÜ95•…‘emÚ_EÍ¼PM«Ê…}ï½û+Šé¡<’…³H”,#\ZçâğœóD~.\"áÄ­wÿ”±hóœÈcªu¢`Ãa;±ãÃıô¼ÆÆ·Û_¬ÖÂ\0€w€Š{,¿+lòh\\¿ª¿v“c9üÀLÿµØ^O®rmá_UÏP4™ZÉã;? ¬‡SK§õL)×]µY¼æ#LË›1V½æECkù™iKàÌë´®_bìgv[ë2½²p0~’I€]?Zñ\Z¶&ƒrÓ[Ğ¨“	|uA\0ºì ëÖ?BAèâ(ìR}C¾\ZÔ|‡¤º,#‰Iúºâv®a[…Ò¢€˜wƒ\nz úï¢<Wc+F@ÛÈ\"\\ OA\0¸ó“MœÇ¿>n:\rF“=P|+81¨G¿ãûÄÖÂª€ƒ\0ÇúJ ¯È¨b¿ÓáŞSß\rfÆéÁ@6Ë¹§‚·OÜ\rbCÊS\\ë3Ìªø×{Vİ)9\Zo`_tê1Vu[ë#X:Yî¤G¡nÜTl\"•û½ Ía¥]©@uõ:”­Â:®Gçãÿ¾pĞÈà¯+H	¶\"ÏKL¨Ÿ¥ÈüŸ}tb‡)ÅPÛÂS¯QÓÈÙŠ™éâã–A@\'Ç¸5p´Ö9<L«šxS¨•RG»ù\nˆjx˜}î€N\ZŠğœIî+®‘(Zqj\'ÍàÚk^VR;J[q´é¼t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (5,'¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0İ>¨j–¿\"›úva#’Nçë±oşçÜún¿òFùS©j	Ad9`ğ…ÚèÜc›ä;îÂ.kLˆŸìzï@ª³Ä]è Ğ¨8¹°Ôö†Ø\';Ì\'ùí¥s\nl¶ŠRç0iá‚ì™ÆiŞCWtñzi•5ÆğŞ\né;4\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0{0‚w\00\r	*†H†÷\r\0‚a0‚]\0\0İ>¨j–¿\"›úva#’Nçë±oşçÜún¿òFùS©j	Ad9`ğ…ÚèÜc›ä;îÂ.kLˆŸìzï@ª³Ä]è Ğ¨8¹°Ôö†Ø\';Ì\'ùí¥s\nl¶ŠRç0iá‚ì™ÆiŞCWtñzi•5ÆğŞ\né;4\0\0Ğ±xõÊ*’ÆÎSì,ğ‹8Ûábn™RuuJù£nÏU~ì¿ ï—¹jÁÈ?Ë%š6g³¬ÜØ\"¶€>äêM&°· 3OV}›[ğ¨&O˜Û,uKOmhÔX&\'^ÌÖ\\râH§ã!%”DBŠxš‡ÈŞ¾05ŞËÂ…\r,J*µâg—AA\0ğ×÷(|(¶³jñ©Î4Bs`P0ëP9‹ÆÿÂ£+[õ ;“èøkÔÄÓWe½÷ğn5­Äó#yA\0ë*ó„»í¤‘ó©2úµg.öO6âXûÎ¹´yî)äHn…m3/U®—ªíò²«\\ì‚noîIZjÄÅ×´¡ƒ°âI@6×FmN§d7íô¨Ñ—sßÌ}ÙÄótëVe4¬Ùİ­+‘ÛkÅÒ%~.G3Uó´¸8Ó~ÔYÍÇÍ ‚‘l5”)A\0¢,•ä´†x,KsŸ—7Øş\ZÀOS…ËcÛ!0.Víş­dN¿›R¬3¸yLqL^± »(’õ©&Ì@-]£±ÕJ—–Pj—ÇÂ¸šğúÉ{X0*KĞGğóÜ	ÚÔÖ=PêK3]õ\røè\0ëˆjIAzÙù-•Š—ïI×üt\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (6,'¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0\0¢0Ÿ0\r	*†H†÷\r\0\00‰\0•t×*ıgÆYıšŒ™G—ğ-Ğ‰»fÆ5Ä¤Èhnö.Ïü\\~^ÈpÜœ+¹rZÿ‰¦«GÆ›³Níæú¾ÕÚ\\Î%ÂÆ›²ş¶ ğ¤ü˜I/øCí¬ËŞyu}9&ˆ.ìÜ€ïCÄÚÓp¡SîGg5Àæ(BÖñxOğ6Í\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','¬í\0sr\0java.security.KeyRep½ùO³ˆš¥C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B¬óøTà\0\0xp\0\0z0‚v\00\r	*†H†÷\r\0‚`0‚\\\0\0•t×*ıgÆYıšŒ™G—ğ-Ğ‰»fÆ5Ä¤Èhnö.Ïü\\~^ÈpÜœ+¹rZÿ‰¦«GÆ›³Níæú¾ÕÚ\\Î%ÂÆ›²ş¶ ğ¤ü˜I/øCí¬ËŞyu}9&ˆ.ìÜ€ïCÄÚÓp¡SîGg5Àæ(BÖñxOğ6Í\0€ÑEÔnã~ \'öJ;¡€ñØX;U-2\rÖ¹ùÛÈRö\0\'iØn.Cªã•ÄÜqÿáyš7v\0byÀê°óY ¿çâ†QzC(·î%4™²0WÈe;~©‰{Ùğwhv<ÉzĞïÃ\"¦Šˆı‰ÚëGµµBoËr¦UnêQdŞ¡A\0ÆÍSÏá<Á›ò*1ÎBôMjÔ4›ykÄ=I‚æd¥eng~™ïe5ÛÁ[i¨±ÀXóH6œ«Ôî8¤fØ…ƒ’A\0ÀtûsÁ¦ê?Vª®4Ú[¨mBƒ^Ãğš\'˜%§óy~Ï]×¬èèVn‰„{Îb+1Œ\\PÑ3ÄÜ“@F·è ~µeQ)×æÅÅVY¤‚ıy&$nGD¯P2GnpPz½ÍÒ‹¬á²k#ò]…¨ú¦61Y^¿ù@ĞÁ·Ú£Ê¡2Ò!dìÃ0g¤ÛG1™JşÓRøş4b,nËäö®€‚4u‹+¾\'Ô½PfÛÌ‡Cu”ÑP,ÚcA\0œH­ÌVQV~ÉŸuû\r­bØwAäÜ›n>’æ¯èŒÆìˆ+ñf{¾¬¬·*âœt(Ş\'iB‘±«ôt\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_id` int(10) NOT NULL auto_increment,
  `c_url` varchar(200) NOT NULL,
  `c_username` varchar(200) NOT NULL,
  `c_password` varchar(200) NOT NULL,
  `c_status` varchar(50) default NULL,
  `c_remarks` varchar(200) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (1,'ftp://drivehq.com','blrstore103','blrstore103','Active','Main cloud space');
insert into `m_cloud` (`c_id`,`c_url`,`c_username`,`c_password`,`c_status`,`c_remarks`) values (2,'ftp://drivehq.com','blrstore104','blrstore104','Active','Deduplicated cloud space');

/*Table structure for table `m_file_access` */

DROP TABLE IF EXISTS `m_file_access`;

CREATE TABLE `m_file_access` (
  `ac_code` int(10) NOT NULL auto_increment,
  `file_code` int(100) default NULL,
  `u_code` int(10) default NULL,
  `u_rank` int(10) default NULL,
  `read_access` varchar(50) default '-',
  `dedup_access` varchar(50) default '-',
  PRIMARY KEY  (`ac_code`),
  KEY `FK_m_file_access` (`file_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file_access` */

insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (1,1001,29,3,'1-','1-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (2,1002,29,3,'2-','2-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (3,1003,29,3,'1-2-3-','1-2-3-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (4,1004,28,1,'2-3-4-','1-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (5,1005,33,4,'4-5-6-','4-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (6,1006,33,4,'3-4-5-','3-4-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (7,1007,33,4,'1-2-3-','1-2-3-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (8,1008,33,4,'1-2-3-4-','1-2-3-4-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (9,1010,34,1,'1-2-','1-1-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (10,1011,34,1,'1-2-3-','1-1-');
insert into `m_file_access` (`ac_code`,`file_code`,`u_code`,`u_rank`,`read_access`,`dedup_access`) values (11,1012,28,1,'1-2-','1-1-');

/*Table structure for table `m_trans` */

DROP TABLE IF EXISTS `m_trans`;

CREATE TABLE `m_trans` (
  `id` int(100) NOT NULL auto_increment,
  `user_id` int(100) default NULL,
  `file_name` varchar(50) default NULL,
  `trans_type` varchar(10) default NULL,
  `file_md` varchar(200) default NULL,
  `date` varchar(20) default NULL,
  `time` varchar(20) default NULL,
  `day` varchar(20) default NULL,
  `cloud` int(5) default NULL,
  `Rank` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_trans` */

insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1001,29,'1001cleartext.txt','Upload','24b3e88333a26a1ff36e596c2c68956f','26-12-2014','11:09:22','Friday',1,3);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1002,29,'1002Sele.txt','Upload','8a2b838607bd61631d0b2dfe83f704f2','26-12-2014','11:11:01','Friday',1,3);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1003,29,'1003details.txt','Upload','25af7f84a93a6cf5cb00967c60910c7d','26-12-2014','11:11:24','Friday',1,3);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1004,28,'1004cleartext.txt','Upload','ce47a4271a4357fc7b88229463203c77','26-12-2014','11:24:37','Friday',1,1);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1005,33,'1005New.txt','Upload','8b1a9953c4611296a827abf8c47804d7','26-12-2014','11:27:43','Friday',1,4);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1006,33,'1006dta.txt','Upload','211de0f9c35c7680b33a83d83350ac83','26-12-2014','11:28:34','Friday',1,4);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1007,33,'1007test.txt','Upload','d47be8f1d0f0856e5b5f4b3653c79193','26-12-2014','11:29:14','Friday',1,4);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1008,33,'1008private.txt','Upload','4c7dfe3379c1513fd3219342b30ba366','26-12-2014','11:29:55','Friday',1,4);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1009,34,'1009abc.txt','Upload','71d757687c75ee646ade5f23c4aa8d89','26-12-2014','11:41:30','Friday',1,1);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1010,34,'1010abc.txt','Upload','71d757687c75ee646ade5f23c4aa8d89','26-12-2014','11:41:33','Friday',1,1);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1011,34,'1011url.txt','Upload','b7b2dc6686767b06fa32fe5d85c9a2b7','26-12-2014','11:43:29','Friday',1,1);
insert into `m_trans` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1012,28,'1012ddd.txt','Upload','c12e01f2a13ff5587e1e9e4aedb8242d','31-12-2014','13:20:06','Wednesday',1,1);

/*Table structure for table `m_trans1` */

DROP TABLE IF EXISTS `m_trans1`;

CREATE TABLE `m_trans1` (
  `id` int(5) NOT NULL auto_increment,
  `user_id` int(5) default NULL,
  `file_name` varchar(50) default NULL,
  `trans_type` varchar(10) default NULL,
  `file_md` varchar(200) default NULL,
  `date` varchar(20) default NULL,
  `time` varchar(20) default NULL,
  `day` varchar(20) default NULL,
  `cloud` int(5) default NULL,
  `Rank` int(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_trans1` */

insert into `m_trans1` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1001,35,'1004_details.txt','Upload','3294eed844f4678f3cd5e36fc0443c54','26-12-2014','11:20:31','Friday',2,2);
insert into `m_trans1` (`id`,`user_id`,`file_name`,`trans_type`,`file_md`,`date`,`time`,`day`,`cloud`,`Rank`) values (1002,28,'1004_cleartext.txt','Upload','c0830ad26478cf4f3e10ca6e4bfaf577','26-12-2014','11:22:27','Friday',2,1);

/*Table structure for table `userlogin` */

DROP TABLE IF EXISTS `userlogin`;

CREATE TABLE `userlogin` (
  `id` int(5) NOT NULL auto_increment,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) default NULL,
  `username` varchar(20) default NULL,
  `gender` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(12) default NULL,
  `rank` tinytext,
  PRIMARY KEY  (`id`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlogin` */

insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`,`rank`) values (28,'ram','123','ram','male','baghcc','Bangalore','bansalrajat016@gmail.com','9632917445','1');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`,`rank`) values (29,'rajat','54321','Rajat Bansal','female','Bangalore','Dholpur','bansalrajat016@gmail.com','9632917333','3');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`,`rank`) values (32,'ritu','ritu','Ritu','Female','bangalore','bangalore','bansalrajat@gmail.com','9632917445','1');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`,`rank`) values (33,'pavithra','pavithra','pavithra','Female','T R Nagar','Bangalore','pavithra.n8692@gmail.com','9916876540','4');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`,`rank`) values (34,'anu','anu','anu','Female','bangalore','bangalore','anugeorge.d@gmail.com','8197153277','1');
insert into `userlogin` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`,`rank`) values (35,'rag','RAG','rag','Male','bangalore','bangalore','raghvinnn@GMAIL.COM','9741421205','2');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
