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

insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (1,'��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0�^����}��h^�o�۾�|�b����|�Q�R7EʊM��J�tw��I}y���Dg�G��u�?��dd�q[�z�q���<��a�m���� \0+�!�gW�s\r�%���xm񑺪uHlI����\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0{0�w\00\r	*�H��\r\0�a0�]\0��\0�^����}��h^�o�۾�|�b����|�Q�R7EʊM��J�tw��I}y���Dg�G��u�?��dd�q[�z�q���<��a�m���� \0+�!�gW�s\r�%���xm񑺪uHlI����\0��\0�lP���L����7��ɒ���U��v&�#dĝ���QW�D2$`�Hg�ⶸ���\Z�����K���\r�ǽ��F6>�Y���j����}����˘Nc�Ȱ���c1)�aF�˝M1��y�m���A\0�P��@V�z�~R�y�;�%��e�f/w���bE�@��E�Vp\ng�?F¾L���|܈��Օ�QoA\0�	 ��uH:- ��>T��K?����]�@��.M�#�9���?��.M�oK��N\Z�8�)7��@}�휂&�u��Z�o�_jd��0�!<���,,C�\nip�Y�pb����[Y����X[Ҵ�A\0�@�\0�DK(C@OM?��n�ɏ��Si�i.�2�m��1���ͦ\r���\0�M����(�^��g@{ǰ��Ǟq1�!V�:K諕	�vc� Z�c�08LuIe�D�\\P�i!�ȶ�!q��L�d�Z��$\'h��t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (2,'��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0���Ȝ���\'�wj����J�`Kp���i�MӺz_��r�4��R�:���X�v!M�r@�^�?���H�JO�d�_�.C.1��V蹩o��A�;�b�7�Ou��D��\\d�LG;��~�B��K//�\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0z0�v\00\r	*�H��\r\0�`0�\\\0��\0���Ȝ���\'�wj����J�`Kp���i�MӺz_��r�4��R�:���X�v!M�r@�^�?���H�JO�d�_�.C.1��V蹩o��A�;�b�7�Ou��D��\\d�LG;��~�B��K//�\0��\0f><��p�.a�&w�J Q�IX	tۍ��v����� J?�!�S�7�Z�\07qYx�bە���)�y21%��pKҤe�~�m�_��wzW�{�^^�Q::��\'7=�����a����o��O�UT$�A\0�F�t%Sl���Z����O�K�7c���0A���U�~Hv�����v�H��M��.br�BfH�bt�A\0��\"�\r�Κq��a�Pܳ��n���PI�V?��\'�k��R/�L<6if���߿���%c���W�L)A\0�p��	��Ե	�5�Ȯ�P/���`P���as�\"�ӱ���3.�x��lo+��*�Xc�)b*�]@zh�A�[z�h�����Sz><4�f�J�c�:R�hE2 u�8�������a��5�S�~���79@F5Z��QE���Rs����	\\*�<�N��J\'ˊs�=Q�̑s�{ܞӗ3�����	�F,�[t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (3,'��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0�ߊȄ���7N\r��f�P噖����G���#ˡ-�Vi*Z�|�vu���[w����F��`��O9��8�!�V�V�q��k����sC�<�4���+3�������\r���\\ɗ��r��������܅\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0{0�w\00\r	*�H��\r\0�a0�]\0��\0�ߊȄ���7N\r��f�P噖����G���#ˡ-�Vi*Z�|�vu���[w����F��`��O9��8�!�V�V�q��k����sC�<�4���+3�������\r���\\ɗ��r��������܅\0��W����iVSݸ<�?^��O��&��ڬ��o٢n� �b�FI�/��J\'I�a��ƥ�1t��P/��XU�{)(|H4�;FT\'^TKg�{ItH����>V���+ +���H �C�W��\"��g�Y%,T��A\0��o����j�\Z�����H��T,����^u�l/�^8��N#�)��%0�Lŕ�	]�i��X�!QA\0�?�$��\0��LFjG��G�Q5����O��r[Υ�RO�,ա��H��M��s��ˬ�ǅ@I����D���o���mJC�Cέ�����&�-�+^;u�	H��0�}�tUHϱ�`�M�;�A\0�������퓓�̥�D�Nf�5�<0A��0��]�Y��*����`���y����m��)A\0�.O3,�ޑ\\���7�I�\nvO�����=����0��8ˋ�E�\\w�$��6�ow���ߒ��}t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (4,'��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0����}J��P�z\r:�=��/@�t���M�I/�E��95���em�_EͼPM�ʅ�}��+��<���H�,#\Z����D~.\"�ĭw���h��c�u�`�a;�������Ʒ�_��\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0y0�u\00\r	*�H��\r\0�_0�[\0��\0����}J��P�z\r:�=��/@�t���M�I/�E��95���em�_EͼPM�ʅ�}��+��<���H�,#\Z����D~.\"�ĭw���h��c�u�`�a;�������Ʒ�_��\0��w��{,�+l�h\\���v�c9���L���^O�rm�_U�P4�Z���;? ��SK��L)�]��Y��#L˛1V��EC�k��iK�̝봮_b�gv[�2��p0~�I�]?Z�\Z�&�r�[Ш�	|uA\0�� ��?BA��(�R}C�\Z�|����,#�I���v�a[�Ң��w�\nz ��<W�c+F@��\"\\�OA\0��M���>n:\rF��=P|+81�G���������\0��J ���b����Sߎ\rf���@6˹���O�\rbC�S\\�3̪��{V�)9\Zo`_t�1Vu[�#X:Y�G�n�Tl\"������a�]�@u�:���:�G����p���+H	�\"�KL�������}tb�)�P��S��Q��ي����A@\'Ǹ5p��9<L��xS���RG��\n�jx�}�N\Z��I�+��(Zqj\'����k^VR;J[q���t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (5,'��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0�>�j��\"��va#�N��o����n���F�S�j	Ad9`�����c��;��.k�L���z��@���]���8������\';�\'��s\nl��R�0i���i�CWt�zi�5���\n�;4�\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0{0�w\00\r	*�H��\r\0�a0�]\0��\0�>�j��\"��va#�N��o����n���F�S�j	Ad9`�����c��;��.k�L���z��@���]���8������\';�\'��s\nl��R�0i���i�CWt�zi�5���\n�;4�\0��\0бx��*���S�,��8��bn�RuuJ��n�U~쿠j��?�%�6g����\"��>��M&�� 3OV}�[�&O��,uKOmh�X&\'^��\\r�H��!%�DB�x��Ȑ޾05��\r,J*���g�AA\0���(|�(��j��4Bs�`P0�P9���£+[��;����k���We���n5���#yA\0�*���2��g.�O6�X�ι�y�)��Hn�m3/U�����\\��no�IZj��״����I@6�FmN�d7���їs��}���t�Ve4��ݭ+��k��%~.G3U�8�~�Y��͠��l5�)A\0�,��䴆x,Ks��7��\Z�OS��c�ۏ!0.�V����dN��R�3�yLqL^� ��(���&�@-]���J��Pj��¸����{X0*K�G���	���=P�K3]�\r���\0�jIAz��-����I��t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');
insert into `digkey` (`Rank`,`pubkey`,`pvtkey`) values (6,'��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0�t�*�g�Y����G��-Љ�f�5Ĥ�hn�.��\\~^�pܜ+�rZ����Gƛ��N�������\\�%����������I/�C���yu}9&��.�܀�C���p�S�Gg5��(B��xO�6�\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0z0�v\00\r	*�H��\r\0�`0�\\\0��\0�t�*�g�Y����G��-Љ�f�5Ĥ�hn�.��\\~^�pܜ+�rZ����Gƛ��N�������\\�%����������I/�C���yu}9&��.�܀�C���p�S�Gg5��(B��xO�6�\0���E�n�~ \'�J;����X;U-2\rֹ���R�\0\'i�n.C����q��y�7v\0by����Y ���QzC(��%4��0W�e;~���{��whv<�z���\"��������G��Bo�r�Un�QdޡA\0��S��<���*1�B�Mj�4�yk�=I��d�eng~��e5��[i���X�H6����8�f����A\0�t�s����?V��4�[�mB�^��\'�%���y~�]����Vn��{�b+1�\\P�3�ܓ@F��~��eQ)׍���VY���y&$nGD�P2G�npPz��ҋ��k#�]����61�Y�^��@���ڣʡ2�!d��0g��G1�J��R��4b,n������4u�+��\'ԽPf�̇C�u��P,�cA\0�H��VQV~ɟu�\r�b�wA�ܛn>�������+�f{����*��t(�\'iB����t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');

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
