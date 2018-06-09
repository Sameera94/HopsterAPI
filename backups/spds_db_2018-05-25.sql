# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.21)
# Database: spds_db
# Generation Time: 2018-05-25 15:21:11 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table constants
# ------------------------------------------------------------

DROP TABLE IF EXISTS `constants`;

CREATE TABLE `constants` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `constants` WRITE;
/*!40000 ALTER TABLE `constants` DISABLE KEYS */;

INSERT INTO `constants` (`id`, `name`, `value`)
VALUES
	(1,'petrolLitrePrice','137.50'),
	(2,'distancePerLiter','15.00');

/*!40000 ALTER TABLE `constants` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table driver_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `driver_routes`;

CREATE TABLE `driver_routes` (
  `routeId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromLocation` varchar(300) DEFAULT NULL,
  `fromLatitude` varchar(300) DEFAULT NULL,
  `fromLongitude` varchar(300) DEFAULT NULL,
  `toLocation` varchar(300) DEFAULT NULL,
  `toLatitude` varchar(300) DEFAULT NULL,
  `toLongitude` varchar(300) DEFAULT NULL,
  `frequency` varchar(300) DEFAULT NULL,
  `time` varchar(300) DEFAULT NULL,
  `distance` varchar(300) DEFAULT NULL,
  `isEnabled` varchar(300) DEFAULT NULL,
  `tripDate` varchar(200) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `polylinePoints` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`routeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `driver_routes` WRITE;
/*!40000 ALTER TABLE `driver_routes` DISABLE KEYS */;

INSERT INTO `driver_routes` (`routeId`, `fromLocation`, `fromLatitude`, `fromLongitude`, `toLocation`, `toLatitude`, `toLongitude`, `frequency`, `time`, `distance`, `isEnabled`, `tripDate`, `userId`, `polylinePoints`)
VALUES
	(72,'Kaduwela','6.9308305','79.9842178','Pearson Lanka','6.941507399999999','79.8808706','One Time Trip','12:15 AM','18.9 km','true','',27,'suhi@_|dgNT~AJt@HDbBI\\Br@E|@E`@CZB`@n@HRBTEd@GPNBTFLH`@^lCpFd@r@|AxApFtExAhAhAp@|@d@d@VRDn@ZdB|@ZXHD|Ah@b@PbAh@nA|@t@j@\\`@NXNf@HhAJbA\\~@Xh@h@r@^X\\Rx@ZjBd@bAH|ABhBC~@Bd@HdA^f@Vd@\\b@b@r@pAn@`Ap@j@`@PZHz@LpBPlALfCH`B@rBEdBA|@Bz@JdARdD|@bCl@t@^^V\\Zp@fAfAvCz@fCJz@E`AGf@Ol@k@bBIh@A^@f@Fh@^`BHTPXjAr@vB`AvBfAjAx@j@f@r@x@Zr@fAvChAvC|@`Bb@n@h@`AhAlCn@fBj@hBx@jDb@rBLx@@j@A`@Mv@Q~@a@vAWfAM~@UtCC|@MvASjA]nAk@pBWxAC\\?j@H`Ad@fDBj@A\\Sj@mBzDyBxDOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBQ`AE^@z@Hh@Vv@Xz@L`ARrDDdC?`ECtAIhC?TAj@Ah@AxA@h@@TDb@ZbAvAvDt@zBRbANrADrB?rAI|FIlA]rB_@hBOv@EZ?TIb@Cn@BPFLZZNJLJNFZDb@DbBFp@Ld@Nj@Xd@Zd@`@PZF\\A\\oAtFSrAA`@BZN^VXx@j@v@l@b@h@nClDl@t@LRRh@H`@p@zEb@xC^bAR^dBlCPXPF|@`BJ~@@h@A`EBfGA~ACXAFANE`@E`@IdAE`@W`CeBhNUl@c@|@Ol@IvDOtCF|@~@zCLl@@`AIh@Ub@s@bAo@r@wApAcEpD_A`Ay@fAa@n@i@`BYdAM~@_@vC[pBq@xCOn@yAzD_A|Bc@v@oC~Ea@h@]r@{@pBO\\Kl@Cr@Dh@Nj@b@v@|@zAXj@Xt@\\|ARjCC`@G`@m@dEWpCeAzIe@rCYx@g@p@uCzBqAfAQVSx@Gn@CjCEvAA~IGzJEpAGn@Q|@Cb@OfUARO?sA?sOGkAK[Gm@CeJCmJEyMMq@AyIMaKEqHEmII{EImECuDG{MMsTQuCEkGAeDBmEGcGCqB@oBFcAFGUR?tAInBElBAfFBAQCi@Kq@@C`@Kn@_@X[JQODM?KIeCeDUSlB{Ao@{@'),
	(73,'Kaduwela','6.9308305','79.9842178','Orugodawatta','6.945244499999998','79.881483','One Time Trip','8:14 PM','18.7 km','true','2018-04-19',1,'suhi@_|dgNT~AJt@HDbBI\\Br@E|@E`@CZB`@n@HRBTEd@GPNBTFLH`@^lCpFd@r@|AxApFtExAhAhAp@|@d@d@VRDn@ZdB|@ZXHD|Ah@b@PbAh@nA|@t@j@\\`@NXNf@HhAJbA\\~@Xh@h@r@^X\\Rx@ZjBd@bAH|ABhBC~@Bd@HdA^f@Vd@\\b@b@r@pAn@`Ap@j@`@PZHz@LpBPlALfCH`B@rBEdBA|@Bz@JdARdD|@bCl@t@^^V\\Zp@fAfAvCz@fCJz@E`AGf@Ol@k@bBIh@A^@f@Fh@^`BHTPXjAr@vB`AvBfAjAx@j@f@r@x@Zr@fAvChAvC|@`Bb@n@h@`AhAlCn@fBj@hBx@jDb@rBLx@@j@A`@Mv@Q~@a@vAWfAM~@UtCC|@MvASjA]nAk@pBWxAC\\?j@H`Ad@fDBj@A\\Sj@mBzDyBxDOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBQ`AE^@z@Hh@Vv@Xz@L`ARrDDdC?`ECtAIhC?TAj@Ah@AxA@h@@TDb@ZbAvAvDt@zBRbANrADrB?rAI|FIlA]rB_@hBOv@EZ?TIb@Cn@BPFLZZNJLJNFZDb@DbBFp@Ld@Nj@Xd@Zd@`@PZF\\A\\oAtFSrAA`@BZN^VXx@j@v@l@b@h@nClDl@t@LRRh@H`@p@zEb@xC^bAR^dBlCPXPF|@`BJ~@@h@A`EBfGA~ACXAFANE`@E`@IdAE`@W`CeBhNUl@c@|@Ol@IvDOtCF|@~@zCLl@@`AIh@Ub@s@bAo@r@wApAcEpD_A`Ay@fAa@n@i@`BYdAM~@_@vC[pBq@xCOn@yAzD_A|Bc@v@oC~Ea@h@]r@{@pBO\\Kl@Cr@Dh@Nj@b@v@|@zAXj@Xt@\\|ARjCC`@G`@m@dEWpCeAzIe@rCYx@g@p@uCzBqAfAQVSx@Gn@CjCEvAA~IGzJEpAGn@Q|@Cb@OfUARO?sA?sOGkAK[Gm@CeJCmJEyMMq@AyIMaKEqHEmII{EImECuDG{MMsTQuCEkGAeDBmEGcGCqB@oBFcAFGUi@{@K_@Iu@FQA]K_AQwAWaBSgBQqBKQ_@BcAFO@'),
	(74,'Kaduwela Bus Station','6.9360717','79.9831738','Borella Junction','6.9117165','79.87744889999999','One Time Trip','12:10 AM','15.9 km','true','2018-04-19',1,'_xii@kvdgNR}@NYlAeAh@c@XL\\Jx@PvARVHLLHNFZB`@At@B\\JXr@fAb@XRDpAFp@A\\ElBe@bAQz@B|AX`@FX?^?|@KvFu@TAXBp@RZVJN~@nBz@dBh@~@~A|A`DlCjDpC~A`ArAr@RDb@Rx@b@v@`@ZXj@TjA`@bAf@|AbAVRt@p@d@x@Jz@JvAZdAZl@b@n@v@n@|@^bBb@~@LbBD~AC`A?l@FbAZrAr@l@j@Zf@f@~@V^r@r@`@TTH|@NfBNdALjAFhCFrA?xCGx@@jAFhARtCv@xCr@p@Z|@l@Z^Xb@b@hAbBvENz@@ZC^Eh@If@m@hBK`@Gh@?f@Bd@\\~AVz@XVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AzAn@`A^x@`@Ty@TqADwD?yA_DhBs@f@]PMvASjA]nAk@pBWxAC\\?j@H`Ad@fDBj@A\\Sj@mBzDyBxDOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBQ`AE^@z@Hh@Vv@Xz@L`ARrDDdC?`ECtAIhC?TATAj@?j@AvABh@Db@ZbAvAvDt@zBRbANrADrB?rAI|FIlA]rB_@hBOv@EZ?TIb@Cn@BPFLZZNJLJNFZDb@DbBFp@Ld@Nj@Xd@Zd@`@PZF\\A\\oAtFSrAA`@BZN^VXx@j@v@l@b@h@nClDl@t@LRRh@H`@p@zEb@xC^bAR^dBlCPXPF|@`BJ~@@h@A`EBfGA~ACXAFANCPC`@Eb@KbAYpCeBhNUl@c@|@Ol@IvDOtCF|@~@zCLl@@`AIh@Ub@s@bAo@r@wApAcEpD_A`Ay@fAa@n@i@`BYdAM~@_@vC[pBq@xCOn@yAzD_A|Bc@v@oC~Ea@h@]r@{@pBO\\Kl@Cr@Dh@Nj@b@v@|@zAXj@Xt@\\|ARjCC`@G`@m@dEWpCeAzIe@rCYx@g@p@uCzBqAfAQVSx@Gn@CjCEvAA~IGzJEpAGn@Q|@Cb@OfUARO?sA?'),
	(75,'Malabe Junction','6.9039354','79.9550129','Kaduwela','6.9308305','79.9842178','One Time Trip','1:27 PM','7.1 km','true','2018-04-19',1,'slci@ye_gNGB@e@Bk@NkBFi@L{@^wAZmARgAFm@?c@Go@SiAk@gCw@{C{AiEiAgCqAqB]o@a@aAu@mBoAkDi@y@[]aAw@kAu@yBcAqBaAi@]YWW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@iAYc@[_@}@m@q@[yCs@uCw@iASkAGy@AyCFsA?iCGkAGeAMgBO}@OUIa@Us@s@W_@g@_A[g@m@k@sAs@cA[m@GaA?_BBcBE_AMcBc@}@_@w@o@c@o@[m@[eAKwAK{@e@y@u@q@WS}AcAcAg@wBw@uAi@aAg@g@]EIe@We@hAa@~@QXWN{@Lo@Ms@Co@?iESWAe@B{@A{@Ai@Go@Oc@Ma@CaABa@BaBTu@Ay@Hc@Gk@_@s@IcAPe@R_@JsAHaBNoAVsAFmAb@_Al@S\\MNgBd@{@FsBTsCH[Du@cCMo@MaA?eAr@aH~@uJnAmJJi@JYZ_@dBuAdA^z@Lt@J^HNJLNFPD`@@PJ?NChB}@NAP@lAXRKHSFQHIz@Oh@KbCSlAOr@?N@DK'),
	(76,'Malabe Junction','6.9039354','79.9550129','Orugodawatta','6.945244499999998','79.881483','One Time Trip','1:42 PM','13.6 km','true','2018-04-19',1,'slci@ye_gNGBEh@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?RATAj@Al@?tABj@Lp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFGz@E`@IdAKbAe@dEuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@i@dBWdAWrBUfB_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpCCfMIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOsROoGGsEDoB?wDGqECoA?{DHu@BUBGUi@{@K[EOCi@FQEw@KaA[qBc@{DKiAKQaAFq@D'),
	(77,'Malabe Junction','6.9039354','79.9550129','Pearson Lanka','6.941507399999999','79.8808706','One Time Trip','1:48 PM','13.9 km','true','2018-04-19',1,'slci@ye_gNGBEh@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?RATAj@Al@?tABj@Lp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFGz@E`@IdAKbAe@dEuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@i@dBWdAWrBUfB_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpCCfMIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOsROoGGsEDoB?wDGqECoA?{DHu@BUBGUnAE~AIxAAdHBA_@OqAp@SRM^[NS@GQDKAGCmAcBoAyAlB{Ao@{@'),
	(78,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Pearson Lanka','6.941507399999999','79.8808706','One Time Trip','11:18 PM','16.5 km','true','2018-04-19',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?HAT?TAh@Al@@tA@T?JLp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@Sl@Uv@WdAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpC?lACxJIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOwOKkJKsEDoB?wDGqECoA?{DHu@BUBGUnAE~AIxAAdHBA_@OqAp@SRM^[NS@GQDKAGCmAcBoAyAlB{Ao@{@'),
	(79,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Pearson Lanka','6.941507399999999','79.8808706','One Time Trip','11:00 PM','16.5 km','true','2018-04-22',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?HAT?TAh@Al@@tA@T?JLp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@Sl@Uv@WdAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpC?lACxJIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOwOKkJKsEDoB?wDGqECoA?{DHu@BUBGUnAE~AIxAAdHBA_@OqAp@SRM^[NS@GQDKAGCmAcBoAyAlB{Ao@{@'),
	(80,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Orugodawatta','6.945244499999998','79.881483','One Time Trip','11:22 PM','16.2 km','true','2018-04-19',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?HAT?TAh@Al@@tA@T?JLp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@Sl@Uv@WdAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpC?lACxJIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOwOKkJKsEDoB?wDGqECoA?{DHu@BUBGUi@{@K[EOCi@FQEw@KaA[qBc@{DKiAKQaAFq@D'),
	(81,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Borella Junction','6.9117165','79.87744889999999','Daily','11:25 PM','12.2 km','true','',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?HAT?TAh@Al@@tA@T?JLp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@Sl@Uv@WdAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpC?lACxJIxJAZStAG`@Ah@Q`U{A?G?'),
	(82,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Orugodawatta','6.945244499999998','79.881483','One Time Trip','11:32 PM','16.2 km','true','2018-04-19',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?HAT?TAh@Al@@tA@T?JLp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@Sl@Uv@WdAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpC?lACxJIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOwOKkJKsEDoB?wDGqECoA?{DHu@BUBGUi@{@K[EOCi@FQEw@KaA[qBc@{DKiAKQaAFq@D'),
	(83,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Orugodawatta','6.945244499999998','79.881483','Daily','11:30 AM','16.2 km','true','',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BMlA?b@F`@b@zARv@Jv@LpBHvB@lBAfEEzAE`B?HAT?TAh@Al@@tA@T?JLp@^hAbBrEd@|ARtAJjA@vBEbFIvBK`Ac@zBg@rC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@_CtBcCvBY\\_AbAg@r@_@n@Sl@Uv@WdAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpC?lACxJIxJAZStAG`@Ah@Q`U{A?gHAiGGk@Ge@Im@C{HC{C?aNIwPUyFGsGCeAAkGGaQQ}GIoOOwOKkJKsEDoB?wDGqECoA?{DHu@BUBGUi@{@K[EOCi@FQEw@KaA[qBc@{DKiAKQaAFq@D'),
	(84,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Kandy','7.290571500000001','80.6337262','One Time Trip','11:38 PM','109.8 km','true','2018-04-19',1,'arei@uqbgN}HcBsEqF{ScDyHyNaLiFeC`CwDJoQ_A}NDaQhE_FdAiCRaArB|@nG|@vNZnCqHi@cF_@iHeA{_@{Myj@oJoZB}i@jHyy@xWo~Anf@wr@tNqTbEy@dDoD\\iF@QmDgCwFeUwQqM}EaRqBkImCeDsGyNsHyNuGeIwKsDsIaM_Mke@ai@sPiVgIeNeQqGmNgAmGaG_EcGoCeFyFwAiIgJiDwGeYqUiQwS}D_H_H@wKwBmNmG_`A{YqVuXwHuNuMg_@_IaKc^y_@yHyGwX_KqOoMeTgMqXo@}Hc@uEwEqBaFuHqD_IsBsDuJVeJcBiFsQsKmJ_M}KmIyM_Wsc@_w@ml@sq@mJ_TkAmWuHa\\_LwVy_@mMqPaFoWiUmP}VmG{OmG_PgAoHuNgo@gS_Bcc@mUsC_HsNuB}^mHwEcGaNwRyQyAiJwHcO}CqDyMOiTtQiMbLqBzA}GkE}\\eDiCeRkAoE{IqJkAuLgDsEVeKyByZcSuDiT}A{YaBuJh@gWaEyLka@_]iT{SgT{Lgg@ye@wWkm@kI}SuQ}LgNeQcK}F_JmJeTyEyFAiGyHj@cM|TqNfU{IpB_DxLqB~A}BaGeFeSoZkF_CcBuGeEgLsDmOaAsPr]gUhCiGe@cMbMcSnAgEqAkFuDwNqGsx@cIqj@nByOoMqI_BeIn@iJuA}]lAcXi@}S|CqQtAmYgE{b@d@iWxJqs@hCyMuAgG@eDyFkBcGwFxDeChBuJoG_S_Y@oI`@cAsCoQ{DyKrAoNc@qBuJnE_k@{Jav@eEot@uDaRkAwD~B}KzJuVvFkJdC_Iw@c^{A}\\iT{uA{Cs\\wGkZTkQYaUrB{c@pFg^lCkMhDmB`OuD~LgD|FaD{NaIbBwA}@aBmEF_BqEkC{Y?aOE_e@sFw_@{Ey[fCsR`NoMrK{c@CcV{CuLtImMnFkDoAoHSkAW{HwAwOlAoCuBoKsDuP_CoQsGiZuEsAs@yDaCiBj@sCyD{Aq@_CvAi@kA_@}BbAmDyCsAkKvBcJvK{RjCsKg@}GuBiMoAsD`EkN_@gWJeC`CR|Dh@kIwEwKc_@uD_E{DgOcJae@kCkM}BkCcCoDeAoBmBcEiAmCW}FfCgNaBqTpDmJi@wG}BiJmI{IXcSeNiYXsLzBwMlCiJM_Q}GiQeDqOmEyNpAaIaAc]uCuHy@yOvJmFnHyR|DyJy@eAgEc[CaFlHs@K}GcFgGqMcEgCkEtCcM^aHoHiO_O_HUQPWz@kFyRgd@c]{g@m`@wn@qReY_EcFqKwCsEwCzGyA`@pA'),
	(85,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Orugodawatta','6.945244499999998','79.881483','One Time Trip','9:00 PM','16.2 km','true','2018-05-08',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BQlA?b@Bb@Hb@Xv@Pl@N~@RrDFbCB`ECtAIhC?JAT?RAj@Al@@tAFbAZbAvAvDt@zBRbANrADrB?rAI|FIlA]rB_@hBOv@EZ?TIb@Cn@BPFLZZNJLJNFZDb@DbBFp@Ld@Nj@Xd@Zd@`@PZF\\A\\oAtFSrAA`@BZN^VXx@j@v@l@b@h@nClDl@t@LRRh@H`@p@zEb@xC^bAR^dBlCPXPF|@`BJ~@@h@A`EBfGA~ACXAF?FCPANE`@Eb@IbACNUxBeBhNUl@c@|@Ol@IvDOtCF|@~@zCLl@@`AIh@Ub@s@bAo@r@wApAcEpD_A`Ay@fAa@n@Sl@Ur@YdAm@vE[pBq@xCOn@yAzD_A|Bc@v@oC~Ea@h@]r@{@pBO\\Kl@Cr@Dh@Nj@b@v@|@zAXj@Xt@\\|ARjCC`@G`@m@dEWpCeAzIe@rCYx@g@p@uCzBqAfAQVSx@Gn@CjCEvAA~IGzJEpAGn@Q|@Cb@OfUARO?sA?sOGkAK[Gm@CeJCmJEyMMq@AyIMaKEqHEmII{EImECuDG{MMmPO{GGkGAeDBmEGcGCqB@oBFcAFGUi@{@K_@Iu@FQA]K_AQwAWaBSgBQqBKQ_@BcAFO@'),
	(86,'Orion City IT Park','6.9415658','79.87973319999999','Malabe','6.9060787','79.96962769999999','One Time Trip','03:56 PM','16.5 km','true','2018-05-08',1,'ywji@iopfNVZPd@f@zANpA@^zDBbE?xKHlTNrKJlJLhRRlGDxC?vJL`IJ|QP~QBb@Fb@Fl@FzDBfC@rH@P?AR{A?gHAiGGk@Ge@IH]JSR[r@q@^a@Ve@Nu@f@qELiBB{AHaIF}CBWBQLWvAcCRc@Vo@h@_At@y@~@eARWTk@J_@h@uDHa@Pa@T_@x@kAPYNJp@h@HGZWhD{BTSZc@Zq@TcA`@wCVcCbBsOHiBIaAa@aBaAyBgAkBQe@M_ABiALk@f@iAlAeCH[t@aAHSXi@`BsCpAyCl@_Bd@{ARy@j@qCp@eFV_BR{@\\_AXm@`AsAfAkAjFwEfBcBp@aAJ]H]@[?]E[iAmDIk@A[@]Ew@BmCFg@Fe@ZcAr@}APm@XuBz@kHf@sE@MBMD[B]Fy@?[FmB@wBAsCAwEMmAM]o@eACQaCsD]y@Og@UeB_AuGQg@m@aAoBgCgAuAy@s@{@k@UQU_@I_@A]Fu@xAsGDa@C[K_@UWsA_Ai@Sk@Og@GiAE{@Gq@O_@OQQMQE]Hy@H]JOPkATgAb@{BJaAHwBDgHAs@KkASuAOk@qAoD{@_CWcAC_@Ai@@yA@uALwEAiGOaDOiCOs@Us@Uw@Ik@@{@XaB^cBPe@V_@`@g@bAs@bAk@pAk@^[RWPk@v@mC~A_Gb@wA@SN[Va@`BwClB{DRk@@]Ck@e@gDIaA?k@B]VyAj@qB\\oARkALwAB}@TuCL_AVgA`@wAP_ALw@@a@Ak@My@c@sBy@kDk@iBo@gBiAmCi@aAc@o@}@aBqCoH[s@s@y@k@g@kAy@wBgAwBaAkAs@QYIU_@aBGi@Ag@@_@Hi@j@cBNm@Fg@DaAK{@{@gCgAwCq@gA][_@Wu@_@cCm@m@Ol@NbCl@t@^^V\\Zp@fAfAvCJXtAEzAAlCB~AFhAFj@HCPBL'),
	(87,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Borella Junction','6.9117165','79.87744889999999','One Time Trip','9:10 PM','12.2 km','true','2018-05-08',1,'kqei@sqbgNt@DhCFrA?xCGx@@t@D~@JfBd@lEdAn@Tx@b@^XZ^Xb@Pb@jA`Dh@zAHb@Fr@IhAIf@Sp@Yv@K`@Gh@?f@LnA^vAJXXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BQlA?b@Bb@Hb@Xv@Pl@N~@RrDFbCB`ECtAIhC?JAT?RAj@Al@@tAFbAZbAvAvDt@zBRbANrADrB?rAI|FIlA]rB_@hBOv@EZ?TIb@Cn@BPFLZZNJLJNFZDb@DbBFp@Ld@Nj@Xd@Zd@`@PZF\\A\\oAtFSrAA`@BZN^VXx@j@v@l@b@h@nClDl@t@LRRh@H`@p@zEb@xC^bAR^dBlCPXPF|@`BJ~@@h@A`EBfGA~ACXAF?FCPANE`@Eb@IbACNUxBeBhNUl@c@|@Ol@IvDOtCF|@~@zCLl@@`AIh@Ub@s@bAo@r@wApAmEzDu@v@}@jAc@r@Wn@Ql@S`Am@vE[pBq@xCOn@yAzD_A|Bc@v@oC~Ea@h@]r@{@pBO\\Kl@Cr@Dh@Nj@b@v@|@zAXj@Xt@\\|ARjCC`@G`@m@dEWpCeAzIe@rCYx@g@p@uCzBqAfAQVSx@Gn@CjCEvAA~IGzJEpAGn@Q|@Cb@OfUARO?sA?'),
	(88,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Borella Junction','6.9117165','79.87744889999999','One Time Trip','12:43 AM','11.6 km','true','2018-05-09',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?'),
	(89,'Kaduwela','6.9308305','79.9842178','Orugodawatta','6.945244499999998','79.881483','One Time Trip','01:09 AM','19.3 km','true','2018-05-09',1,'suhi@_|dgNT~AJt@HDbBI\\Br@E|@E`@CZB`@n@HRBTEd@GPNBTFLH`@^lCpFd@r@|AxApFtExAhAhAp@|@d@d@VRDn@ZdB|@ZXHD|Ah@b@PbAh@nA|@t@j@\\`@NXNf@HhAJbA\\~@Xh@h@r@^X\\Rx@ZjBd@bAH|ABhBC~@Bd@HdA^f@Vd@\\b@b@r@pAn@`Ap@j@`@PZHz@LpBPlALfCH`B@rBEdBA|@Bz@JdARdD|@bCl@t@^^V\\Zp@fAfAvCJXtAEzAAlCB~AFhAFj@HCPBLCMBQk@IiAG_BGmCC{A@uAD^fANd@Jz@E`AGf@Ol@k@bBIh@A^@f@Fh@^`BHTPXjAr@vB`AvBfAjAx@j@f@r@x@Zr@fAvChAvC|@`Bb@n@h@`AhAlCn@fBj@hBx@jDb@rBLx@@j@A`@Mv@Q~@a@vAWfAM~@UtCC|@MvASjA]nAk@pBWxAC\\?j@H`Ad@fDBj@A\\Sj@mBzDyBxDOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCN`D@hGK`EAj@CvA?vADr@VbAz@~BpAnDNj@RtAJjA@r@EfHIvBK`Ac@zBUfAQjA?TETEXAX@RDLRXh@`@^J^DdBFf@Fj@Nh@Rf@Zj@b@TVJ^BZE`@Mf@kAjFCVC\\@\\H^T^r@d@`At@|AjBnBfC^h@Xl@P~@hAlI^fALXv@hAhAhBLHFDv@vANz@BjBA`F@fC?pBEn@AF?FCPANE`@Eb@IbACN?FwBpQSl@q@xAIl@CtBSxDD~@Lp@v@bCDRDj@?j@ERO`@iA`BeB~AyArA}CrC}@bAW\\g@v@Wh@Up@Ot@m@vE[jBe@`CWfAe@rAiB|Ee@`A_CdEy@rAOPk@nAo@vAMb@Ix@@j@Jj@Tl@bBtCTj@\\dATzADbAD`@APw@tF_ApI]zCa@fCGTOb@Wd@q@p@yCzBi@d@ORIJMj@GZCRE`BEjC?rECzGKjI[vBSjVcKAiGGk@Ge@Im@C{HC{C?yEEgGCuGI{OSyIEkGGkIIgKKeOQkRMoDE}FGsEDoB?wDGqECoA?{DHu@BUBGUi@{@K[EOCi@FQEw@ScBg@kDO_BKiAKQaAFq@D'),
	(90,'Promowatch (Pvt) Ltd','6.911027300000001','79.9649953','Borella Junction','6.9117165','79.87744889999999','One Time Trip','10:12 PM','11.3 km','true','2018-05-09',1,'gwdi@cdagNJgFhCHzBAl@Ej@O`@OJLb@Xf@XvB`AvBfAjAx@j@f@r@x@Zr@fAvChAvC|@`Bb@n@h@`AhAlCn@fBj@hBx@jDb@rBLx@@j@A`@Mv@Q~@a@vAWfAM~@UtCC|@MvASjA]nAk@pBWxAC\\?j@H`Ad@fDBj@A\\Sj@mBzDyBxDOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCN`D@hGKvD?TAh@CxA@tA@T@RVbAz@~BpAnDNj@RtAJjA@r@EfHIvBK`Ac@zBUfAQjA?TETEXAX@RDLRXh@`@^J^DdBFf@Fj@Nh@Rf@Zj@b@TVJ^BZE`@Mf@kAjFCVC\\@\\H^T^r@d@`At@|AjBnBfC^h@Xl@P~@hAlI^fALXv@hAhAhBLHFDv@vANz@BjBA`F@fC?pBEn@AFANE`@IdAKbAANwBpQSl@q@xAIl@CtBSxDD~@Lp@v@bCDRDj@?j@ERO`@iA`BeB~AyArA}CrC}@bAW\\g@v@Wh@Up@_@pB]zC[jBe@`CWfAe@rAiB|Ee@`A_CdEy@rAOPk@nAo@vAMb@Ix@@j@Jj@Tl@bBtCTj@\\dATzADbAD`@APw@tF_ApI]zCa@fCGTOb@Wd@q@p@yCzBi@d@ORIJMj@GZCRE`BEjC?rECzGKjI[vBSjVcB?'),
	(91,'Orion City IT Park','6.9415658','79.87973319999999','Malabe','6.9060787','79.96962769999999','One Time Trip','10:07 AM','16.5 km','true','2018-05-11',1,'ywji@iopfNVZPd@f@zANpA@^zDBbE?xKHlTNrKJlJLhRRlGDxC?vJL`IJ|QP~QBb@Fb@Fl@FzDBfC@rH@P?AR{A?gHAiGGk@Ge@IH]JSR[r@q@^a@Ve@Nu@f@qELiBB{AHaIF}CBWBQLWvAcCRc@Vo@h@_At@y@~@eARWTk@J_@h@uDHa@Pa@T_@x@kAPYNJp@h@HGZWhD{BTSZc@Zq@TcA`@wCVcCbBsOHiBIaAa@aBaAyBgAkBQe@M_ABiALk@f@iAlAeCH[t@aAHSXi@`BsCpAyCl@_Bd@{ARy@j@qCp@eFV_BR{@\\_AXm@`AsAfAkAjFwEfBcBp@aAJ]H]@[?]E[iAmDIk@A[@]Ew@BmCFg@Fe@ZcAr@}APm@XuBz@kHf@sE@MBMD[B]Fy@?[FmB@wBAsCAwEMmAM]o@eACQaCsD]y@Og@UeB_AuGQg@m@aAoBgCgAuAy@s@{@k@UQU_@I_@A]Fu@xAsGDa@C[K_@UWsA_Ai@Sk@Og@GiAE{@Gq@O_@OQQMQE]Hy@H]JOPkATgAb@{BJaAHwBDgHAs@KkASuAOk@qAoD{@_CWcAC_@Ai@@yA@uALwEAiGOaDOiCOs@Us@Uw@Ik@@{@XaB^cBPe@V_@`@g@bAs@bAk@pAk@^[RWPk@v@mC~A_Gb@wA@SN[Va@`BwClB{DRk@@]Ck@e@gDIaA?k@B]VyAj@qB\\oARkALwAB}@TuCL_AVgA`@wAP_ALw@@a@Ak@My@c@sBy@kDk@iBo@gBiAmCi@aAc@o@}@aBqCoH[s@s@y@k@g@kAy@wBgAwBaAkAs@QYIU_@aBGi@Ag@@_@Hi@j@cBNm@Fg@DaAK{@{@gCgAwCq@gA][_@Wu@_@cCm@m@Ol@NbCl@t@^^V\\Zp@fAfAvCJXtAEzAAlCB~AFhAFj@HCPBL'),
	(92,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Orugodawatta','6.945244499999998','79.881483','One Time Trip','9:30 PM','15.6 km','true','2018-05-11',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?sOGy@EQE[Gm@CeJCkFA{QQkKOyNIyDAmII{EImECkFKy\\WuDE_CCkGAeDBmEGcGCqB@sDNGUi@{@K_@Iu@FQA]K_AGo@a@iCe@yEKQ_@BcAFO@'),
	(93,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Orugodawatta','6.945244499999998','79.881483','One Time Trip','10:08 PM','15.6 km','true','2018-05-11',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?sOGy@EQE[Gm@CeJCkFA{QQkKOyNIyDAmII{EImECkFKy\\WuDE_CCkGAeDBmEGcGCqB@sDNGUi@{@K_@Iu@FQA]K_AGo@a@iCe@yEKQ_@BcAFO@'),
	(94,'Promowatch (Pvt) Ltd','6.911027300000001','79.9649953','Orugodawatta','6.945244499999998','79.881483','One Time Trip','04:50 PM','15.4 km','true','2018-05-13',1,'gwdi@cdagNJgFhCHzBAl@Ej@O`@OJLb@Xf@XvB`AvBfAjAx@j@f@r@x@Zr@fAvChAvC|@`Bb@n@h@`AhAlCn@fBj@hBx@jDb@rBLx@@j@A`@Mv@Q~@a@vAWfAM~@UtCC|@MvASjA]nAk@pBWxAC\\?j@H`Ad@fDBj@A\\Sj@mBzDyBxDOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCN`D@hGKvD?TAh@CxA@tA@T@RVbAz@~BpAnDNj@RtAJjA@r@EfHIvBK`Ac@zBUfAQjA?TETEXAX@RDLRXh@`@^J^DdBFf@Fj@Nh@Rf@Zj@b@TVJ^BZE`@Mf@kAjFCVC\\@\\H^T^r@d@`At@|AjBnBfC^h@Xl@P~@hAlI^fALXv@hAhAhBLHFDv@vANz@BjBA`F@fC?pBEn@AFANE`@IdAKbAANwBpQSl@q@xAIl@CtBSxDD~@Lp@v@bCDRDj@?j@ERO`@iA`BeB~AyArA}CrC}@bAW\\g@v@Wh@Up@_@pB]zC[jBe@`CWfAe@rAiB|Ee@`A_CdEy@rAOPk@nAo@vAMb@Ix@@j@Jj@Tl@bBtCTj@\\dATzADbAD`@APw@tF_ApI]zCa@fCGTOb@Wd@q@p@yCzBi@d@ORIJMj@GZCRE`BEjC?rECzGKjI[vBSjVcKAiGGk@Ge@Im@C{HC{C?yEEgGCuGI{OSyIEkGGkIIgKKeOQ_VQ{@A}FGsEDoB?wDGqECoA?{DHu@BUBGUi@{@K[EOCi@FQEw@ScBg@kDO_BKiAKQaAFq@D'),
	(97,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Borella Junction','6.9117165','79.87744889999999','One Time Trip','5:30 PM','11.6 km','true','2018-05-13',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?'),
	(98,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Malabe Junction Clock Tower','6.903884400000001','79.9551084','One Time Trip','5:33 PM','2.6 km','true','2018-05-13',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AzAn@`A^x@`@Ty@TqADwD?yA_DhBs@f@EB'),
	(99,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Orugodawatta','6.945244499999998','79.881483','One Time Trip','10:02 PM','15.6 km','true','2018-05-13',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?sOGy@EQE[Gm@CeJCkFA{QQkKOyNIyDAmII{EImECkFKy\\WuDE_CCkGAeDBmEGcGCqB@sDNGUi@{@K_@Iu@FQA]K_AGo@a@iCe@yEKQ_@BcAFO@'),
	(100,'Ceylon Cloud Technologies (Pvt) Ltd','6.913868','79.966486','Battaramulla','6.8979941','79.9222869','One Time Trip','10:29 PM','7.0 km','true','2018-05-13',1,'mjei@sjagNl@BvBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\p@ZvBbAnBdA~@p@z@x@h@x@\\|@jA`D|@zBbAdBj@z@d@~@fAtCv@zBh@nBx@rDRhAFn@?b@Gl@a@nBm@|BUdBSvCGnAQ|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBuAhCARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BQlA?b@Bb@Hb@Xv@Pl@N~@RrDFbCB`ECtAIhC?TAj@Ah@AxA@h@@TDb@ZbAvAvDt@zBRbANrADrB?rAI|FIlA]rB_@hBCFFDTTv@rAvD`AxN|ChCr@hBh@bDpAtCrAzAf@rD|AjFrCjEnBzAh@bDv@zA^`@Jd@TjAb@LFGJu@xA_AxBOR[X]PiA\\uCz@mARmBN'),
	(101,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Colombo 08','6.9121796','79.8828828','One Time Trip','10:53 PM','0.0 km','true','2018-05-13',1,''),
	(102,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Colombo 08','6.9121796','79.8828828','One Time Trip','10:53 PM','11.2 km','true','2018-05-13',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQV_A}@e@f@w@lAUz@[dCMv@Sh@g@v@uAzAUZc@x@Ob@KJ`Al@jB`Bf@b@RTHTVr@w@BG?G@MHEDO@'),
	(103,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Borella Junction','6.9117165','79.87744889999999','One Time Trip','8:14 PM','11.6 km','true','2018-05-14',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?'),
	(104,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Malabe','6.9060787','79.96962769999999','One Time Trip','8:50 PM','2.0 km','true','2018-05-14',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@iAYc@[_@}@m@q@[yCs@MCLB~Bh@n@Tx@b@^XZ^Xb@Pb@jA`DpDGnEF~@FrALCPBL'),
	(105,'Ramani Shopping Mall','6.916809000000001','79.968773','Malabe Junction Clock Tower','6.903884400000001','79.9551084','One Time Trip','9:48 PM','0.0 km','true','2018-05-14',1,''),
	(106,'Ramani Shopping Mall','6.916809000000001','79.968773','Malabe Junction Clock Tower','6.903884400000001','79.9551084','One Time Trip','9:48 PM','0.0 km','true','2018-05-14',1,''),
	(107,'Ramani Shopping Mall','6.916809000000001','79.968773','Malabe Junction Clock Tower','6.903884400000001','79.9551084','One Time Trip','9:48 PM','3.8 km','true','2018-05-14',1,'s|ei@k{agNNUTm@`@cCDgABwBFy@T_An@mAL_@He@FmAjAJdALjAFhCFrA?xCGx@@jAFhARtCv@xCr@p@Z|@l@Z^Xb@b@hAbBvENz@@ZC^Eh@If@m@hBK`@Gh@?f@Bd@\\~AVz@XVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AzAn@`A^x@`@Ty@TqADwD?yA_DhBs@f@EB'),
	(108,'Promowatch (Pvt) Ltd','6.911027300000001','79.9649953','Malabe','6.9060787','79.96962769999999','One Time Trip','10:17 PM','0.0 km','true','2018-05-14',1,''),
	(109,'Promowatch (Pvt) Ltd','6.911027300000001','79.9649953','Malabe','6.9060787','79.96962769999999','One Time Trip','10:18 PM','1.8 km','true','2018-05-14',1,'gwdi@cdagNJgFhCHzBAl@Ej@O`@OEKIUUcAQgA?gAHi@Rq@f@_BLuACq@WcAiBeF_@w@[c@][y@i@q@W{Cs@zCr@p@Vx@h@\\ZZb@^v@|@bCJXtAEzAAlCB~AFhAFj@HCPBL'),
	(110,'Ramani Shopping Mall','6.916809000000001','79.968773','Malabe','6.9060787','79.96962769999999','One Time Trip','11:37 PM','1.6 km','true','2018-05-14',1,'s|ei@k{agNNUTm@`@cCDgABwBFy@T_An@mAL_@He@FmAjAJdALjAFhCFrA?xCGx@@jAFhARtCv@xCr@p@Z|@l@Z^Xb@b@hAx@zBpDGnEF~@FrALCPBL'),
	(111,'Promowatch (Pvt) Ltd','6.911027300000001','79.9649953','Malabe','6.9060787','79.96962769999999','One Time Trip','12:15 AM','1.8 km','true','2018-05-15',1,'gwdi@cdagNJgFhCHzBAl@Ej@O`@OEKIUUcAQgA?gAHi@Rq@f@_BLuACq@WcAiBeF_@w@[c@][y@i@q@W{Cs@zCr@p@Vx@h@\\ZZb@^v@|@bCJXtAEzAAlCB~AFhAFj@HCPBL'),
	(112,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Borella Junction','6.9117165','79.87744889999999','One Time Trip','9:50 PM','11.6 km','true','2018-05-15',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?'),
	(113,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Malabe','6.9060787','79.96962769999999','One Time Trip','10:02 PM','2.0 km','true','2018-05-15',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@iAYc@[_@}@m@q@[yCs@MCLB~Bh@n@Tx@b@^XZ^Xb@Pb@jA`DpDGnEF~@FrALCPBL'),
	(114,'Orion City IT Park','6.9415658','79.87973319999999','Malabe','6.9060787','79.96962769999999','One Time Trip','10:03 PM','0.0 km','true','2018-05-16',1,''),
	(115,'Orion City IT Park','6.9415658','79.87973319999999','Malabe','6.9060787','79.96962769999999','One Time Trip','10:54 PM','15.6 km','true','2018-05-16',1,'ywji@iopfNVZPd@f@zANpA@^zDBbE?xKHlTNrKJlJLhRRlGDxC?vJL`IJ|QP~QBb@FDQ\\k@xA{AVk@TeB\\eDJqBDmCFqGHmCD]P]zAkCN]v@{AJS|AaBf@u@Vm@H_@h@qDJc@Rc@d@u@t@eA`At@RQlBoAzAeATWT_@Xs@H]b@yCvAqMf@gFFaAA_AO_AW_AYs@Wi@y@wAg@cAQs@CeAHw@Xu@v@eBf@aAJa@v@cAXk@~@aBzA{Cv@oB`@kAZeA\\wAp@oDj@oEPiATu@\\}@\\o@lA}Ap@s@jFwEfBcBp@aAJ]H]@[?]E[iAmDIk@A[@]Ew@BmCFg@Fe@ZcAr@}APm@XuBz@kHf@sE@E@MBOB[Hy@@[?OFsB@wBAsCAwEMmAM]o@eACQaCsD]y@Og@UeB_AuGQg@m@aAoBgCgAuAy@s@{@k@UQU_@I_@A]Fu@xAsGDa@C[K_@UWsA_Ai@Sk@Og@GiAE{@Gq@O_@OQQMQE]Hy@H]JOPkATgAb@{BJaAHwBDgHAs@KkASuAOk@qAoD{@_CWcAASAUAk@?i@ByA@i@?UJwDAiGOaDOiCOs@Us@Uw@Ik@@{@XaB^cBPe@V_@`@g@bAs@bAk@pAk@^[RWPk@v@mC~A_Gb@wA@SN[Va@`BwClB{DRk@@]Ck@e@gDIaA?k@B]VyAj@qB\\oARkALwAB}@TuCL_AVgA`@wAP_ALw@@a@Ak@My@c@sBy@kDk@iBo@gBiAmCi@aAc@o@}@aBiAwCgAwC[s@s@y@k@g@kAy@wBgAwBaAkAs@QYIU_@aBGi@Ag@@_@Hi@j@cBNm@Fg@DaAK{@{@gCgAwCq@gA][_@Wu@_@cCm@m@Ol@NbCl@t@^^V\\Zp@fAfAvCJXtAEzAAlCB~AFhAFj@HCPBL'),
	(116,'Orion City IT Park','6.9415658','79.87973319999999','Malabe','6.9060787','79.96962769999999','One Time Trip','10:22 AM','16.5 km','true','2018-05-17',1,'ywji@iopfNVZPd@f@zANpA@^zDBbE?xKHlTNrKJlJLhRRlGDxC?vJL`IJ|QP~QBb@Fb@Fl@FzDBfC@rH@P?AR{A?gHAiGGk@Ge@IH]JSR[r@q@^a@Ve@Nu@f@qELiBB{AHaIF}CBWBQLWvAcCRc@Vo@h@_At@y@~@eARWTk@J_@h@uDHa@Pa@T_@x@kAPYNJp@h@HGZWhD{BTSZc@Zq@TcA`@wCVcCbBsOHiBIaAa@aBaAyBgAkBQe@M_ABiALk@f@iAlAeCH[t@aAHSXi@`BsCpAyCl@_Bd@{ARy@j@qCp@eFV_BR{@\\_AXm@`AsAbAgAbCuBlEaEj@u@P_@J_@D_@Au@Kc@y@iCSeA?c@Ag@AyA@y@Dm@H]Fe@Ja@v@cBRo@FY^}CxAgM@MBMB[D]Fy@?[D_ABeB?oBAcGE_BMq@u@qAESwBgDa@y@Qi@Ia@kAsIQq@Ym@}DcFm@u@oAy@WSWYO_@C[Bq@PcAdAoEHe@@]G]Q[e@a@e@[k@Ye@Oq@M_AEgAGu@O_@KOMQSGOCMBg@Nw@JOD[Nw@^iB\\sBHmAH}F?sAEsBOsAScAu@{BwAwD[cAGm@Ak@@wA@uAJkDBuACaEGcCSsDO_AQm@Yw@Ic@Cc@?c@PmAf@_CZw@`@e@`@_@pA{@hAm@z@_@\\a@t@yBjBeH^sAPe@@SZk@x@}AhAoBhA{B\\_AD[Ag@KeA_@gCC[A]@k@Hi@d@}B|@}CP}AFoARwCTeBl@}B`@oBFm@?c@Go@SiAy@sDi@oBw@{BgAuCe@_Ak@{@cAeB}@{BkAaD]}@i@y@{@y@_Aq@oBeAwBcAq@[i@]YWKY_@wAMoA?g@Fi@Ja@Xw@Rq@Hg@HiAGs@Ic@i@{AkAaDQc@Yc@[_@_@Yy@c@o@U_Ci@MCLB~Bh@XHp@Z|@l@Z^Xb@b@hAx@zBpDGnEF~@FrALCPBL'),
	(117,'Orion City IT Park','6.9415658','79.87973319999999','Fort','6.9365198999999995','79.84508','One Time Trip','10:32 AM','5.4 km','true','2018-05-17',1,'ywji@iopfNVZPd@f@zANpA@^zDBR??XGnDBh@BNhDpHR^TXb@X|CbBdAl@lA|@nBbBpBzAz@h@n@h@VZ`@l@Nd@VxAn@nHNhB\\hERhEVxFNn@tAL|AXbA\\~At@pAj@f@LbALlENx@BXDt@Tr@Vd@TFPf@d@|@v@PFHAh@]VSZJF^LRLf@`ArEPf@R^TXp@h@j@VDAD?HDDJCHCDA?A@GbAQvA]fBu@hCg@tA_BxD{AbDi@z@WZk@b@u@d@qBdAsDpBg@f@OZ_@fBeAlGe@tBq@fEWlCe@fGUhE?`BL|BR|BT~@LTC^Ed@Wh@EJYj@k@x@cBnDMJQB}@@w@Aw@GkD]aDUMCIBK@cAG'),
	(118,'Promowatch (Pvt) Ltd','6.911027300000001','79.9649953','Malabe','6.9060787','79.96962769999999','One Time Trip','11:35 PM','1.8 km','true','2018-05-17',1,'gwdi@cdagNJgFhCHzBAl@Ej@O`@OEKIUUcAQgA?gAHi@Rq@f@_BLuACq@WcAiBeF_@w@[c@][y@i@q@W{Cs@zCr@p@Vx@h@\\ZZb@^v@|@bCJXtAEzAAlCB~AFhAFj@HCPBL'),
	(119,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Malabe','6.9060787','79.96962769999999','One Time Trip','10:30 PM','2.0 km','true','2018-05-23',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@iAYc@[_@}@m@q@[yCs@MCLB~Bh@n@Tx@b@^XZ^Xb@Pb@jA`DpDGnEF~@FrALCPBL'),
	(120,'Buddha Statue, Sudharshana Mawatha','6.913562799999999','79.96591839999999','Orugodawatta','6.945244499999998','79.881483','One Time Trip','10:35 PM','15.6 km','true','2018-05-23',1,'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@`Av@Z\\h@x@nAjDt@lB`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBKzBQ|AUz@g@`Be@|BIh@Aj@Dx@f@rDDn@A^Kb@Uh@iAzBcClE[j@ARQd@_@rAo@|B{@fDk@dBIR]`@eClAqAz@a@^a@d@S`@[tAa@rBC|@Bb@Hb@`@hAPr@JfAT`FDvFMdF?TCh@?j@AxA@h@@TR~@p@pBvAtDPl@RbANrADv@?nCI|FIlA]rB_@hBOv@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@CPC^E`@KdAE`@uBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQVYnACvAGtCCpMKjJGn@Q|@Cb@OfUARO?sA?sOGy@EQE[Gm@CeJCkFA{QQkKOyNIyDAmII{EImECkFKy\\WuDE_CCkGAeDBmEGcGCqB@oBFy@DGSo@aAEME[Ey@Eu@KaA[qBc@{DKiAKQaAFq@D');

/*!40000 ALTER TABLE `driver_routes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table driver_waypoints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `driver_waypoints`;

CREATE TABLE `driver_waypoints` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `routeId` int(11) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `longitude` varchar(300) DEFAULT NULL,
  `waypointPosition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table passenger_trips
# ------------------------------------------------------------

DROP TABLE IF EXISTS `passenger_trips`;

CREATE TABLE `passenger_trips` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fromLocation` varchar(255) DEFAULT NULL,
  `fromLatitude` varchar(255) DEFAULT NULL,
  `fromLongitude` varchar(255) DEFAULT NULL,
  `toLocation` varchar(255) DEFAULT NULL,
  `toLatitude` varchar(255) DEFAULT NULL,
  `toLongitude` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `tripDate` varchar(255) DEFAULT NULL,
  `passengerId` int(11) DEFAULT NULL,
  `polylinePoints` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `passenger_trips` WRITE;
/*!40000 ALTER TABLE `passenger_trips` DISABLE KEYS */;

INSERT INTO `passenger_trips` (`id`, `fromLocation`, `fromLatitude`, `fromLongitude`, `toLocation`, `toLatitude`, `toLongitude`, `time`, `tripDate`, `passengerId`, `polylinePoints`)
VALUES
	(3,'Sri Lanka Institute of Information Technology','6.914834600000001','79.973141','Ratnapura','6.7055742','80.3847345','10:01 AM','2018-02-28',27,''),
	(6,'Colombugama Bus Stop','6.5809003','80.4635131','Nivithigala','6.601431700000001','80.4576835','12:38 PM','2018-05-03',NULL,'');

/*!40000 ALTER TABLE `passenger_trips` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table route_requests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `route_requests`;

CREATE TABLE `route_requests` (
  `requestId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `routeId` int(11) DEFAULT NULL,
  `passengerId` int(11) DEFAULT NULL,
  `driverId` int(11) DEFAULT NULL,
  `isAccepted` int(11) NOT NULL DEFAULT '0' COMMENT '0 - New / 1 - Accpeted / 2 - Rejected / 3- Expired',
  `pickStatus` int(11) DEFAULT '0' COMMENT '0 - New / 1 - Picked / 2- Dropped / 3 - Canceled',
  `fromLatitude` varchar(200) DEFAULT NULL,
  `fromLongitude` varchar(200) DEFAULT NULL,
  `toLatitude` varchar(200) DEFAULT NULL,
  `toLongitude` varchar(200) DEFAULT NULL,
  `distance` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`requestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `route_requests` WRITE;
/*!40000 ALTER TABLE `route_requests` DISABLE KEYS */;

INSERT INTO `route_requests` (`requestId`, `routeId`, `passengerId`, `driverId`, `isAccepted`, `pickStatus`, `fromLatitude`, `fromLongitude`, `toLatitude`, `toLongitude`, `distance`)
VALUES
	(1,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(12,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(13,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(14,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(15,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(16,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(17,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(18,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(19,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(20,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(21,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(22,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(23,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(24,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(25,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(26,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(27,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(28,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(29,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(30,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(31,85,1,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(32,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(33,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(34,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(35,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(36,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(37,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(38,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(39,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(40,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(41,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(42,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(43,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(44,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(45,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(46,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(47,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(48,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(49,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(50,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(51,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(52,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(53,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(54,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(55,85,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(56,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(57,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(58,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(59,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(60,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(61,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(62,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(63,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(64,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(65,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(66,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(67,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(68,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(69,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(70,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(71,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(72,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(73,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(74,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(75,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(76,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(77,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(78,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(79,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(80,86,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(81,86,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(82,86,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(83,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(84,87,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(85,87,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(86,87,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(87,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(88,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(89,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(90,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(91,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(92,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(93,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(94,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(95,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(96,85,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(97,85,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(98,85,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(99,85,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(100,85,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(101,85,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(102,87,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(103,87,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(104,87,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(105,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(106,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(107,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(108,87,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(109,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(110,88,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(111,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(112,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(113,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(114,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(115,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(116,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(117,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(118,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(119,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(120,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(121,88,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(122,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(123,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(124,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(125,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(126,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(127,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(128,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(129,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(130,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(131,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(132,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(133,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(134,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(135,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(136,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(137,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(138,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(139,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(140,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(141,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(142,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(143,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(144,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(145,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(146,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(147,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(148,89,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(149,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(150,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(151,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(152,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(153,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(154,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(155,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(156,89,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(157,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(158,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(159,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(160,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(161,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(162,89,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(163,89,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(164,89,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(165,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(166,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(167,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(168,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(169,89,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(170,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(171,89,27,1,2,NULL,NULL,NULL,NULL,NULL,NULL),
	(172,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(173,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(174,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(175,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(176,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(177,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(178,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(179,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(180,89,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(181,90,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(182,90,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(183,90,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(184,90,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(185,90,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(186,90,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(187,90,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(188,91,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(189,91,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(190,91,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(191,91,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(192,92,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(193,92,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(194,93,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(195,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(196,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(197,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(198,94,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(199,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(200,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(201,94,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(202,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(203,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(204,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(205,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(206,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(207,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(208,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(209,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(210,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(211,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(212,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(213,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(214,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(215,94,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(216,97,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(217,97,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(218,97,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(219,98,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(220,98,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(221,98,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(222,99,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(223,99,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(224,100,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(225,100,28,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(227,102,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(228,102,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(229,102,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(230,103,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(231,104,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(232,107,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(233,107,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(234,107,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(235,109,28,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(236,109,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(237,109,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(238,110,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(239,110,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(240,110,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(241,111,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(242,112,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(243,112,27,1,0,NULL,NULL,NULL,NULL,NULL,NULL),
	(244,112,27,1,1,NULL,NULL,NULL,NULL,NULL,NULL),
	(247,113,27,1,1,2,NULL,NULL,NULL,NULL,NULL),
	(248,113,27,1,1,2,NULL,NULL,NULL,NULL,NULL),
	(251,113,27,1,1,2,NULL,NULL,NULL,NULL,NULL),
	(273,113,28,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(274,113,28,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(275,113,27,1,1,2,NULL,NULL,NULL,NULL,NULL),
	(276,113,27,1,1,2,NULL,NULL,NULL,NULL,NULL),
	(277,113,27,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(278,113,27,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(279,113,27,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(280,113,27,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(281,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(282,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(283,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(284,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(285,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(286,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(287,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(288,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(289,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(290,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(291,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(292,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(293,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(294,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(295,113,27,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(296,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(297,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(298,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(299,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(300,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(301,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(302,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(303,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(304,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(305,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(306,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(307,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(308,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(309,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(310,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(311,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(312,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(313,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(314,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(315,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(316,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(317,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(318,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(319,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(320,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(321,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(322,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(323,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(324,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(325,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(326,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(327,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(328,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(329,113,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(330,115,27,1,1,2,NULL,NULL,NULL,NULL,NULL),
	(331,115,28,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(332,116,27,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(333,116,28,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(334,117,28,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(335,117,28,1,1,1,NULL,NULL,NULL,NULL,NULL),
	(336,118,28,1,1,0,NULL,NULL,NULL,NULL,NULL),
	(337,113,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(338,119,27,1,0,0,NULL,NULL,NULL,NULL,NULL),
	(339,119,27,1,1,2,'Optional(6.9126422999999999)','Optional(79.965834000000001)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1856.0'),
	(340,119,27,1,1,2,'Optional(6.9110273000000007)','Optional(79.964995299999998)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1759.0'),
	(341,119,27,1,1,2,'Optional(6.9110273000000007)','Optional(79.964995299999998)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1759.0'),
	(342,119,27,1,1,2,'Optional(6.9060787000000001)','Optional(79.96962769999999)','Optional(6.9060787000000001)','Optional(79.96962769999999)','0.0'),
	(343,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(344,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(345,119,27,1,1,2,'Optional(6.9138679999999999)','Optional(79.966486000000003)','Optional(6.9060787000000001)','Optional(79.96962769999999)','2008.0'),
	(346,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(347,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(348,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(349,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(350,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(351,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(352,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(353,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(354,119,27,1,1,2,'Optional(6.9135627999999993)','Optional(79.965918399999993)','Optional(6.9060787000000001)','Optional(79.96962769999999)','1979.0'),
	(355,120,27,1,1,2,'Optional(6.9126422999999999)','Optional(79.965834000000001)','Optional(6.9121796)','Optional(79.882882800000004)','11043.0');

/*!40000 ALTER TABLE `route_requests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `contactNumber` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nicNumber` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `firebaseToken` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `contactNumber`, `email`, `password`, `nicNumber`, `gender`, `firebaseToken`)
VALUES
	(1,'Sameera','Driver','0170589523','sam@gmail.com','123123123','12312','Male','cvWiAY8asFA:APA91bGVkojY3E2K8yKUN50-xZipkw2UhN6usXyN76oSSruVqiPbZkbFSqaZNTweqdLRM1ApkDTKlD_xMG9Vx0d3rvS4yUy8zqS05tni1mm9-qFXK4BPTqAwJZEQt-BESCLTx9PyyT7T'),
	(27,'Aseni','Passenger','0170589523','aseni@gmail.com','123123123','12312','Female','cvWiAY8asFA:APA91bGVkojY3E2K8yKUN50-xZipkw2UhN6usXyN76oSSruVqiPbZkbFSqaZNTweqdLRM1ApkDTKlD_xMG9Vx0d3rvS4yUy8zqS05tni1mm9-qFXK4BPTqAwJZEQt-BESCLTx9PyyT7T'),
	(28,'Thinuwan','Wickramaarachchi','0710589523','thinuwan@gmail.com','123123123','940711894v','Male','f8wjqgo89Yc:APA91bGv8p44ho1U8nyvbpDxtxqC8EUzy4Cne4WF0UKy6YW3V-h6fDkn_MWIJjjTQnpR89wmSQc-RgviJLYz5de3QukzZ02lJVXfbGOrOzWa_UDTwy7t8Z-YsWWaFvo_Ae1tfvx-v04N');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;