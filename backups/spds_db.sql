-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 18, 2018 at 02:17 PM
-- Server version: 5.6.38
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spds_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `constants`
--

CREATE TABLE `constants` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `constants`
--

INSERT INTO `constants` (`id`, `name`, `value`) VALUES
(1, 'petrolLitrePrice', '137.50'),
(2, 'distancePerLiter', '10.0');

-- --------------------------------------------------------

--
-- Table structure for table `driver_routes`
--

CREATE TABLE `driver_routes` (
  `routeId` int(11) UNSIGNED NOT NULL,
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
  `polylinePoints` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver_routes`
--

INSERT INTO `driver_routes` (`routeId`, `fromLocation`, `fromLatitude`, `fromLongitude`, `toLocation`, `toLatitude`, `toLongitude`, `frequency`, `time`, `distance`, `isEnabled`, `tripDate`, `userId`, `polylinePoints`) VALUES
(1, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Borella Bus Station', '6.9149225', '79.8777365', 'One Time Trip', '5:14 PM', '11.9 km', 'true', '2018-06-27', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@p@h@PPr@x@|BbG`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFMfFAR?j@Aj@AtA@h@BTJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBa@tC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFGz@ANE`@E`@KdAC`@c@tDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@cCxB}CrC}@bAk@v@_@n@Wn@Qp@QbAWrBUfB_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMj@GZGlAGpCAdKGzJEpAGr@Q|@Cb@MzKIhI{AAaHIsFCw@EUGYGDS@G'),
(2, 'Malabe', '6.9060787', '79.96962769999999', 'Ratnapura', '6.7055742', '80.3847345', 'One Time Trip', '6:23 PM', '82.8 km', 'true', '2018-06-30', 1, 'c{ci@y`bgNcJ}@qDFh@zANz@QlCaAtD|B~GhJdFtI`QlH`UkA~Ke@`GnAg@ba@_SjXsSpn@ug@|LkGhBwDa@kMa@iWjBkJ~@mBh@~@o@`IhA`A`c@{Bdl@aEbq@pAlk@I`t@cF`iAuT`s@kPzWuBhn@pBzfB~LptArPff@b@xUmCl[kJrd@cXjv@kg@|WaOhXyHbaAeFddBeGp^uCdB_Ds@}BsXuDA{Dr@oHUyUgKeTiEeP?mVdAiEi@mGiOyf@}HeO}A{Md@ePdFmPbF}C`BmItGeIvC}QxD}YkBqQ`DgXzN_QdD{\\yHkVyM_]yJc[qE_XyAiOkCyJl@kG~B_HyAyL}EmTmF_JyHwFgKqGwF}VlAaU{R_m@mGwI}S}j@mFib@HwVAuOwCkWw@yK~AwKmBmSb@eb@rAwOTeO}Gqa@mH}`@{BqOUqTBsUbCkMpFeInP{JlJqOxAcLeHk]^wB|EwCtA{BmAuEhBwLjKkElAqCfEi@b@{ExAiEt@yExDmGsAwGoJjBMaBbKkKjAaGsByAOoCbE_KG{FcE{AeDCcAyDAwCvFoCvAaCu@iF{@eR}@{B_CMsOtByD{BoFd@uDw@uBx@uG?yIv@dCyCbA{Cb@kHgD_MrCcHDaGe@oD{ClBuFsCp@kD`BVbD{Cu@wBfF_CjCXrEqC|CyIiEyHcCMeLbD}CtAiAkBO{EeDyHnCoBAkDw@sBjGaEgAeBn@cDhA}C|CqCjDmEeAwFR}CrCuCaFaIlHeEdBwCdCgBE}CKsEh@sBpAeBa@cBi@uCpCyDb@qC`GoFx@sFgEcFsB{@cEuLd@yIkGiKnI}Lh@_OwGMmCqGhCwC`FmAhOiBxFwBzDXlEkB`G{FvAaNpAoH}AmFjFcE_@cFlF_JXsHjCcHlCoEwBk@fA{CvBkAn@gFmAaFgHcFkJqCaNiLqCcKyGqE_DaI_DaJV}JaB}B?eE|DkOxCyAXwCdCcGhCiAdLkKrB{FlE{CfDoHbGwDB}F~FkHiBsEdBwJmB@}A{ClFmFrA{BcAoAsCQm@uHlBiFdBeGvB}E_@uAhBmB~FoGk@iFfJ}JtK}EHeBrImD|MmHdE_F`D_@fC{FnGiBxRiKpFUxDgE|C_IdFuGfHcCrBaPjC_GdIlEbG_EJyF{HyJi@_Ga@kNgAsNn@cF~OsLpCsEMoEbG}IfCuHnCuFwBPkJhCwBtDyE?eFq@uAw@iAx@gEpBsH~BwI~EkGYu@sBr@uA~@_Gi@aM`AaEgCkFgDqGyBoAfDwCfI{Ht@gAHGPDOXKG'),
(3, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Orugodawatta', '6.945244499999998', '79.881483', 'One Time Trip', '9:50 PM', '0.0 km', 'true', '2018-07-02', 1, ''),
(4, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Malabe', '6.9060787', '79.96962769999999', 'One Time Trip', '9:52 PM', '2.0 km', 'true', '2018-07-02', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@eAYa@[[}@s@q@_@yCs@MCLB~Bh@n@Vx@f@z@x@X`@P^jA`DpDGnEF~@FrALCPBL'),
(5, 'Orion City IT Park', '6.941058899999999', '79.8797348', 'Malabe', '6.9060787', '79.96962769999999', 'One Time Trip', '10:19 AM', '15.7 km', 'true', '2018-07-03', 1, 'mtji@mopfNv@fAFBJ@PEAFOR_@ZSLq@RNpA@^zDBbE?zNJfDBjIDnEFrDLrDBfFJlCGrFJfB?tEFtHDrE@xHLpNRjGFjI@xKHDQ\\k@hAeANSVk@TcB\\aDJqBDoCFwGHmCD]P]zAiCN_@v@{AXc@fBmB\\s@La@ZiBXmBL_@p@iAt@eA`At@RQlBoAzAeATW^q@X}@`@uCNsAjBaQLkBA_AO_AW_AYs@Wi@y@wAg@cAQs@CeAHw@Xu@~AgDJa@v@cAxAmCzA{Cv@oBt@}BNg@n@uCb@uCf@}DR}@\\aAVm@v@iAjAsAr@o@~GiGLOp@aAT{@@y@E[{@kCWmAA[@]Ew@@_B@m@Fg@Fe@J_@Nc@`@{@Zw@FWXuB`B{N@EBO@MD[B]Fw@By@DeECkJMmAM]q@mAAIiAiBw@iAMY_@gAiAmIQ_AYm@_@i@oBgC}AkBaAu@s@e@U_@I_@A]B]BWjAkFLg@Da@C[K_@UWk@c@g@[i@Sk@Og@GeBG_@E_@Ka@Ia@[MQCM?_@Fi@H]JOPkANiA^yBJ_ADyBHeFAsBKkASsAc@}AeBwE_@gAKs@CUAi@@uA@wAN{F@wFKmCOiCOs@Us@Uw@Ik@@{@XaB^cBPe@V_@`@g@bAs@bAk@pAk@^[RWPk@v@mC~A_Gb@wA@SN[Va@l@kAhAoBhA{B\\_AD[Ag@KeA_@gCC[A]@k@Hi@d@}B|@}CP}AF{@HsBZmCb@iBf@uBLw@@a@Ak@My@{@{Da@cBk@iBuAsDc@aAi@aAoAoBaAaC}BcGs@y@QQq@i@kAu@yBcAqBaAi@]YWW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@eAYa@[[}@s@q@_@yCs@MCLB~Bh@n@Vx@f@z@x@X`@P^jA`DpDGnEF~@FrALCPBL'),
(6, 'Orion City IT Park', '6.941058899999999', '79.8797348', 'Malabe', '6.9060787', '79.96962769999999', 'One Time Trip', '9:56 PM', '15.7 km', 'true', '2018-07-03', 1, 'mtji@mopfNv@fAFBJ@PEAFOR_@ZSLq@RNpA@^zDBbE?zNJfDBjIDnEFrDLrDBfFJlCGrFJfB?tEFtHDrE@xHLpNRjGFjI@xKHDQ\\k@hAeANSVk@TcB\\aDJqBDoCFwGHmCD]P]zAiCN_@v@{AXc@fBmB\\s@La@ZiBXmBL_@p@iAt@eA`At@RQlBoAzAeATW^q@X}@`@uCNsAjBaQLkBA_AO_AW_AYs@Wi@y@wAg@cAQs@CeAHw@Xu@~AgDJa@v@cAxAmCzA{Cv@oBt@}BNg@n@uCb@uCf@}DR}@\\aAVm@v@iAjAsAr@o@~GiGLOp@aAT{@@y@E[{@kCWmAA[@]Ew@@_B@m@Fg@Fe@J_@Nc@`@{@Zw@FWXuB`B{N@EBO@MD[B]Fw@By@DeECkJMmAM]q@mAAIiAiBw@iAMY_@gAiAmIQ_AYm@_@i@oBgC}AkBaAu@s@e@U_@I_@A]B]BWjAkFLg@Da@C[K_@UWk@c@g@[i@Sk@Og@GeBG_@E_@Ka@Ia@[MQCM?_@Fi@H]JOPkANiA^yBJ_ADyBHeFAsBKkASsAc@}AeBwE_@gAKs@CUAi@@uA@wAN{F@wFKmCOiCOs@Us@Uw@Ik@@{@XaB^cBPe@V_@`@g@bAs@bAk@pAk@^[RWPk@v@mC~A_Gb@wA@SN[Va@l@kAhAoBhA{B\\_AD[Ag@KeA_@gCC[A]@k@Hi@d@}B|@}CP}AF{@HsBZmCb@iBf@uBLw@@a@Ak@My@{@{Da@cBk@iBuAsDc@aAi@aAoAoBaAaC}BcGs@y@QQq@i@kAu@yBcAqBaAi@]YWW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@eAYa@[[}@s@q@_@yCs@MCLB~Bh@n@Vx@f@z@x@X`@P^jA`DpDGnEF~@FrALCPBL'),
(7, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Malabe', '6.9060787', '79.96962769999999', 'One Time Trip', '9:47 PM', '2.0 km', 'true', '2018-07-06', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YW{@]_BCe@?g@Fi@Ja@l@iBHg@Di@B_@A[O{@cBwEc@eAYa@[[}@s@q@_@yCs@MCLB~Bh@n@Vx@f@z@x@X`@P^jA`DpDGnEF~@FrALCPBL'),
(8, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Battaramulla', '6.8979941', '79.9222869', 'One Time Trip', '9:48 PM', '7.0 km', 'true', '2018-07-06', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@p@h@PPr@x@|BbG`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFMfFAR?j@Aj@AtA@h@BTJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBOhANJl@|@Vd@xBl@vPpD|ErA|Aj@pFbCzAf@xAn@vCpAlDnBjEnBzAh@lCp@lAX`AZ`Ah@z@\\w@zAs@dB[f@[X]PiDbA_B`@gCTI@'),
(9, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Battaramulla', '6.8979941', '79.9222869', 'One Time Trip', '9:49 PM', '7.0 km', 'true', '2018-07-06', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@p@h@PPr@x@|BbG`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFMfFAR?j@Aj@AtA@h@BTJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBOhANJl@|@Vd@xBl@vPpD|ErA|Aj@pFbCzAf@xAn@vCpAlDnBjEnBzAh@lCp@lAX`AZ`Ah@z@\\w@zAs@dB[f@[X]PiDbA_B`@gCTI@'),
(10, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Battaramulla', '6.8979941', '79.9222869', 'One Time Trip', '10:03 PM', '7.0 km', 'true', '2018-07-06', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@p@h@PPr@x@|BbG`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFMfFAR?j@Aj@AtA@h@BTJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBOhANJl@|@Vd@xBl@vPpD|ErA|Aj@pFbCzAf@xAn@vCpAlDnBjEnBzAh@lCp@lAX`AZ`Ah@z@\\w@zAs@dB[f@[X]PiDbA_B`@gCTI@'),
(11, 'Buddha Statue, Sudharshana Mawatha', '6.913562799999999', '79.96591839999999', 'Battaramulla', '6.8979941', '79.9222869', 'One Time Trip', '10:55 PM', '7.0 km', 'true', '2018-07-06', 1, 'yhei@ojagNpBSVt@b@AnAc@rAWr@Kt@G`@@pANnCJjA?lACj@Ix@YXVh@\\pB`AxBbAjAt@p@h@PPr@x@|BbG`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFMfFAR?j@Aj@AtA@h@BTJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBOhANJl@|@Vd@xBl@vPpD|ErA|Aj@pFbCzAf@xAn@vCpAlDnBjEnBzAh@lCp@lAX`AZ`Ah@z@\\w@zAs@dB[f@[X]PiDbA_B`@gCTI@'),
(12, 'Malabe', '6.9060787', '79.96962769999999', 'Kaduwela', '6.9308305', '79.9842178', 'One Time Trip', '1:01 AM', '8.8 km', 'true', '2018-07-21', 1, 'c{ci@y`bgNCMBQsAM_AGoEGqDFh@zANz@@ZC^Eh@If@m@hBK`@Gl@?j@Bb@ZzAX~@TTj@\\tB`AxBdAlAv@\\XMP}AnA]~@LK^E|@A^Eb@Ql@YW_@Y]_@[g@a@aBaAiB{@_CiAc@YMW_@{AQeA?kAHk@Rq@f@_BLuACq@WcAiBeF_@s@y@}@y@k@q@[{Cs@wCw@aAO}AIyEFaBAgCIgCUuAOy@Qw@a@s@y@}@aBW]YYe@]g@Wo@W{@Q_ACkA@oA?{AGw@O_Bc@_Ae@w@s@[g@[s@WeAKyACUOg@OY]a@uAcAoA{@gAe@sCeAgCqAy@c@{@k@eBgAaJwH{@_Aq@oAaBiD_@i@_@Ws@OU?e@DaGx@gABaAKq@Oc@G]A_@@eARoBd@]BqACi@EQGc@_@c@o@MYG[Ag@?o@Ea@GQMOOK_@IsAQ}@Se@SdCyB\\_@P]T}@Tg@RU`@St@W\\UT[x@iB\\eAHs@?cHEeF\\Sz@o@nBuAf@[hBaAp@g@NQR_@bAgC`@gAFQTD\\J`@VlA~@`@J|DLbCLp@bAPVb@|AJr@TTLn@R^lBN|@HrA@~@Jv@@Hj@JJHV@pABz@TtA^dB{@\\o@XkAj@}B`AYP?PINQHGDS@YAMCW[MAi@Js@Po@`@_@VGL[Po@HUJ[Pw@ZOLIROLe@L{@b@c@RkA~@YPMjAG|@uARKBCFCJ'),
(13, 'Malabe', '6.9060787', '79.96962769999999', 'Colombo 08', '6.9121796', '79.8828828', 'One Time Trip', '10:20 AM', '11.3 km', 'true', '2018-07-21', 1, 'c{ci@y`bgNCMBQsAM_AGoEGqDFh@zANz@@ZC^Eh@If@m@hBK`@Gl@?j@Bb@ZzAX~@TTj@\\tB`AxBdAlAv@n@h@PNn@z@~BzF`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFM|E?RAj@AxA?pA@R@JJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBa@tC?TETEXAX@RNZ\\XTR^Jz@FhADf@Fj@Nh@RrA~@TVJ^BZE`@yArGGt@@\\H^T^TPz@j@x@r@fAtAnBfCl@`APf@~@tGTdBNf@\\x@`CrDTNv@vAHb@Ft@@lAA`F@xFEr@CNC`@KdAKbAANa@lDuAfLGTWn@e@`AIl@CtBOxCAdAHp@~@|CHh@@`AOh@q@dA]f@{@x@cCxB}CrC}@bAk@v@_@n@Wn@Qp@QbAm@zE_@tBo@tCoCpHe@`Ai@~@_CbE_@f@{AfDMb@Ix@@j@Jj@Tl@r@lAn@fATj@\\dATzADbAD`@Gn@q@vE_ApI]zCa@fCGT[x@g@n@oDlCy@x@IJMMq@o@QPu@bAOTUp@SxAS|ASr@Ud@}@hAq@r@UZc@x@Ob@KJ`Al@jB`Bf@b@RTHTVr@w@BG?QFKJM?'),
(14, 'Malabe', '6.9060787', '79.96962769999999', 'Battaramulla', '6.8979941', '79.9222869', 'One Time Trip', '10:20 AM', '7.2 km', 'true', '2018-07-21', 28, 'c{ci@y`bgNCMBQsAM_AGoEGqDFh@zANz@@ZC^Eh@If@m@hBK`@Gl@?j@Bb@ZzAX~@TTj@\\tB`AxBdAlAv@n@h@PNn@z@~BzF`A`CnAnBh@`Ab@`AtArDj@hB`@bBz@zDLx@@j@A`@Mv@g@tBc@hB[lCIrBGz@Q|A}@|Ce@|BIh@Aj@@\\BZ^fCJdA@f@EZ]~@iAzBiAnBeAlBOZARc@vA_B~Fw@lCQj@SV_@ZqAj@cAj@cAr@a@f@W^Qd@_@bBY`BAz@Hj@Tv@Tr@Nr@NhCJlCAvFM|E?RAj@AxA?pA@R@JJr@^fAdBvEb@|ARrAJjA@rBIdFExBK~@_@xBOhANJl@|@Vd@xBl@vPpD|ErA|Aj@pFbCzAf@xAn@vCpAlDnBjEnBzAh@lCp@lAX`AZ`Ah@z@\\w@zAs@dB[f@[X]PiDbA_B`@qCV'),
(15, '1907 Quail Meadow Rd', '37.3435127', '-122.09256939999999', 'Qwest Destinations Pvt Ltd (DMC Office)', '6.914742800000001', '79.8667128', 'One Time Trip', '9:42 AM', '0.0 km', 'true', '2018-07-21', 27, ''),
(16, 'The Markham Apartments', '37.3358853', '-122.03887379999999', 'www.srilankajobs.online', '7.6259901', '81.70342289999999', 'One Time Trip', '9:42 AM', '0.0 km', 'true', '2018-07-21', 27, ''),
(17, 'Kaduwela', '6.9308305', '79.9842178', 'Battaramulla', '6.8979941', '79.9222869', 'One Time Trip', '11:48 AM', '10.0 km', 'true', '2018-07-21', 1, 'suhi@_|dgNT~AJt@HDbBI\\Br@E|@E`@CZB`@n@HRBTEd@GPNBTFLH`@^lCpFd@r@|AxApFtExAhAdC|AdB~@v@^xAp@`Cz@bAh@nA|@t@j@\\`@NXNf@HhAJbA\\~@Xh@h@r@^X\\Rx@ZjBd@bAH|ABhBC~@Bd@HdA^f@Vd@\\b@b@r@pAn@`Ap@j@`@PZHz@LpBPlALfCH`B@rBEdBA|@Bz@JdARdD|@bCl@t@b@|@v@p@`AfAtCz@fCJz@E`AGf@Ol@k@bBIj@Ab@@f@Fh@^zAHZLVlAr@zBbAvBfAjAx@h@d@X\\V^bA`Cv@nBZx@`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBEpAMvASjA]nAk@pB[vB?j@@Vh@vDFp@Af@EZg@lA}E|IARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BQlA?b@Bb@Hb@Xv@Pl@N~@PlDDfBClGK~DAj@Aj@AvADpAP`Ar@tBtArDPl@P`APrADv@?jCKbGIjAs@xEAHFDTTv@rAvD`AxN|ChCr@hBh@bDpAtCrAzAf@rD|AjFrCjEnBzAh@`Dv@xA`@`@Lb@T\\Rl@RLH[j@eA~BQ`@a@h@]Tg@PkDdAuAX_CR'),
(18, 'Kaduwela', '6.9308305', '79.9842178', 'Colombo 08', '6.9121796', '79.8828828', 'One Time Trip', '11:48 AM', '14.2 km', 'true', '2018-07-21', 28, 'suhi@_|dgNT~AJt@HDbBI\\Br@E|@E`@CZB`@n@HRBTEd@GPNBTFLH`@^lCpFd@r@|AxApFtExAhAdC|AdB~@v@^xAp@`Cz@bAh@nA|@t@j@\\`@NXNf@HhAJbA\\~@Xh@h@r@^X\\Rx@ZjBd@bAH|ABhBC~@Bd@HdA^f@Vd@\\b@b@r@pAn@`Ap@j@`@PZHz@LpBPlALfCH`B@rBEdBA|@Bz@JdARdD|@bCl@t@b@|@v@p@`AfAtCz@fCJz@E`AGf@Ol@k@bBIj@Ab@@f@Fh@^zAHZLVlAr@zBbAvBfAjAx@h@d@X\\V^bA`Cv@nBZx@`@`A\\n@pApBhAfCzAhEv@zCj@fCRhAFn@?b@Gl@SfA[lA_@vAMz@Gh@OjBEpAMvASjA]nAk@pB[vB?j@@Vh@vDFp@Af@EZg@lA}E|IARQd@_@rAkBdHu@xB]`@{@^iAl@qAz@a@^a@d@[v@g@~BQlA?b@Bb@Hb@Xv@Pl@N~@PlDDfBClGK~DAj@Aj@AvADpAP`Ar@tBtArDPl@P`APrADv@?jCKbGIjAs@xEMx@EZ?TIb@CVBh@RZ^XLJNFZDfAF~@Dp@Ld@Nj@Xd@Zd@`@PZF\\A\\Id@eAnEQbACp@BZN^VXVRnAx@l@t@|DbFXl@Pp@jArIH`@Ph@`@x@vBfDPFf@z@Td@Hh@B~@A`EBrDArDEd@E`@E`@IdAE`@CNuBnQOl@o@tAOl@EvBQzD@~@Hj@`A~CFj@A~@Qf@_AtAo@r@q@l@sF~EaBjBg@r@Yn@Un@Qr@O|@[fCYpB]jBq@rCyAzD_A|BuAdCmBdDQT]r@kAnCKl@Cr@Dh@Nj@`BrCXj@Xt@\\|AJnAFz@?FKz@m@dEWpCeAzIe@rCIV[r@k@n@yDvC]ZQV_A}@e@f@w@lAUz@e@nDSp@]l@cAfAm@r@]j@Sb@IXKJxA`AfB|Af@h@`@hAcABQJEDO@');

-- --------------------------------------------------------

--
-- Table structure for table `driver_waypoints`
--

CREATE TABLE `driver_waypoints` (
  `id` int(11) UNSIGNED NOT NULL,
  `routeId` int(11) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `longitude` varchar(300) DEFAULT NULL,
  `waypointPosition` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `passenger_trips`
--

CREATE TABLE `passenger_trips` (
  `id` int(11) UNSIGNED NOT NULL,
  `fromLocation` varchar(255) DEFAULT NULL,
  `fromLatitude` varchar(255) DEFAULT NULL,
  `fromLongitude` varchar(255) DEFAULT NULL,
  `toLocation` varchar(255) DEFAULT NULL,
  `toLatitude` varchar(255) DEFAULT NULL,
  `toLongitude` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `tripDate` varchar(255) DEFAULT NULL,
  `passengerId` int(11) DEFAULT NULL,
  `polylinePoints` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `passenger_trips`
--

INSERT INTO `passenger_trips` (`id`, `fromLocation`, `fromLatitude`, `fromLongitude`, `toLocation`, `toLatitude`, `toLongitude`, `time`, `tripDate`, `passengerId`, `polylinePoints`) VALUES
(3, 'Sri Lanka Institute of Information Technology', '6.914834600000001', '79.973141', 'Ratnapura', '6.7055742', '80.3847345', '10:01 AM', '2018-02-28', 27, ''),
(6, 'Colombugama Bus Stop', '6.5809003', '80.4635131', 'Nivithigala', '6.601431700000001', '80.4576835', '12:38 PM', '2018-05-03', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `route_requests`
--

CREATE TABLE `route_requests` (
  `requestId` int(11) UNSIGNED NOT NULL,
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
  `totalAmount` varchar(20) DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `route_requests`
--

INSERT INTO `route_requests` (`requestId`, `routeId`, `passengerId`, `driverId`, `isAccepted`, `pickStatus`, `fromLatitude`, `fromLongitude`, `toLatitude`, `toLongitude`, `distance`, `totalAmount`) VALUES
(383, 1, 27, 1, 1, 0, '6.9135628', '79.9659184', '6.8979941', '79.9222869', '6993.0', '0.0'),
(384, 4, 27, 1, 0, 0, '6.9135628', '79.9659184', '6.9060787', '79.9696277', '1976.0', '0.0'),
(385, 4, 27, 1, 0, 0, '6.9135628', '79.9659184', '6.9060787', '79.9696277', '1976.0', '0.0'),
(386, 5, 27, 1, 1, 2, '6.9410589', '79.8797348', '6.9060787', '79.9696277', '15673.0', '0.0'),
(387, 9, 27, 1, 1, 0, '6.9060787', '79.9696277', '6.8979941', '79.9222869', '7155.0', '0.0'),
(388, 10, 27, 1, 1, 0, '6.9060787', '79.9696277', '6.8979941', '79.9222869', '7155.0', '0.0'),
(389, 11, 27, 1, 0, 0, '6.9060787', '79.9696277', '6.8979941', '79.9222869', '7155.0', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) UNSIGNED NOT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `contactNumber` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `nicNumber` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `firebaseToken` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `contactNumber`, `email`, `password`, `nicNumber`, `gender`, `firebaseToken`) VALUES
(1, 'Sameera', 'Driver', '0170589523', 'sam@gmail.com', '123123123', '12312', 'Male', 'cl0UvEkmYpQ:APA91bFk8NvRa0yBrsvQstZUuAymOkeaG6yOMg4mP1JA49cWKG5JLCMBMH8Vsxrv0TeInNVfmeFe9-knoT5GsFKYEYHup9Kle7X8Kyf2F6WszPmW60j32pm2KCVINyGlSN5L9b4_SWLjenfQK3JcaCbLjE-T4jYh9w'),
(27, 'Aseni', 'Passenger', '0170589523', 'aseni@gmail.com', '123123123', '12312', 'Female', 'e9SZsmUmhTs:APA91bHxW9aC5mGWNwLu0zfk1mk1JihGU_O0DLr8SU3m58MwciICPwigP7JqkFO-axTH9K0JpzrGow6NYDXeHNTLxZY6jluSFwvyDb0v5m8l9GwIFg5V0wm8VF4yhxnXv5534d71YI8kMxv82V8WxWpL4eEDA6NhtQ'),
(28, 'Thinuwan', 'Wickramaarachchi', '0710589523', 'thinuwan@gmail.com', '123123123', '940711894v', 'Male', 'dvdRp2NsQCo:APA91bGmly2jprrT1ZwKa4s2AdvBacBZjc-B2f83EmqKAd2vhbW0RoJ7F9fQWjP8_DwcwSxY1KNxWBknBsXHYGIQA0KPT2QETOEMQOBeSLuNoVQvPodAvXIl7giSj0SEi_KQOPpYMw13-pCYK1jWsda5fyI5k9kZVg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `constants`
--
ALTER TABLE `constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_routes`
--
ALTER TABLE `driver_routes`
  ADD PRIMARY KEY (`routeId`);

--
-- Indexes for table `driver_waypoints`
--
ALTER TABLE `driver_waypoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passenger_trips`
--
ALTER TABLE `passenger_trips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route_requests`
--
ALTER TABLE `route_requests`
  ADD PRIMARY KEY (`requestId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `constants`
--
ALTER TABLE `constants`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver_routes`
--
ALTER TABLE `driver_routes`
  MODIFY `routeId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `driver_waypoints`
--
ALTER TABLE `driver_waypoints`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passenger_trips`
--
ALTER TABLE `passenger_trips`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `route_requests`
--
ALTER TABLE `route_requests`
  MODIFY `requestId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
