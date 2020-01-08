
drop database if exists railway;
create database railway;
use railway;
drop table if exists line;

/*Create Table*/
CREATE TABLE `railway`.`line` (
  `lineId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `line` VARCHAR(45) NOT NULL COMMENT '',
  `lineLoop` INT  DEFAULT 0 COMMENT '',
  PRIMARY KEY (`lineId`)  COMMENT '');

    drop table if exists Station;
CREATE TABLE `railway`.`Station` (
  `StaId` INT NOT NULL COMMENT '',
  `StaName` VARCHAR(45) NOT NULL COMMENT '',
  `lineId` INT NOT NULL COMMENT '',
  PRIMARY KEY (`StaId`)  COMMENT '');
  
ALTER TABLE `railway`.`Station` 
ADD CONSTRAINT `FK_lineId`
  FOREIGN KEY (`lineId`)
  REFERENCES `railway`.`line` (`lineId`)
  
  ON UPDATE CASCADE;

  drop table if exists InterChange;
CREATE TABLE `railway`.`InterChange` (
  `interId` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `StaId` INT NOT NULL COMMENT '',
  `interLine` INT NOT NULL COMMENT '',
  PRIMARY KEY (`interId`)  COMMENT '');
  
ALTER TABLE `railway`.`InterChange` 
ADD CONSTRAINT `FK_staId`
  FOREIGN KEY (`StaId`)
  REFERENCES `railway`.`Station` (`StaId`)
 
  ON UPDATE CASCADE;
drop table if exists attraction;
CREATE TABLE `railway`.`attraction` (
  `ID` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `attraction` VARCHAR(45) NOT NULL COMMENT '',
  `staName` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`ID`)  COMMENT '');





/*Insert data*/  
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('01', 'Line One', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('02', 'Line Two', 18);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('03', 'Line Four', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('04', 'Line Five', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('05', 'Line Six', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('06', 'Line Seven', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('07', 'Line Eight', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('08', 'Line Nine', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('09', 'Line Ten', 44);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('10', 'Line Thirteen', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('11', 'Line Fourteen', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('12', 'Line Fourteen', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('13', 'Line Fifteen', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('14', 'Line Fangshan', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('15', 'Line Changping', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('16', 'Line Yizhuang', 0);
INSERT INTO `railway`.`line` (`lineId`, `line`, `lineLoop`) VALUES ('17', 'Line airport', 0);


INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0101', 'PINGGUOYUAN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0102', 'GUCHENG', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0103', 'BAJIAO Amusement Park', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0104', 'BABAOSHAN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0105', 'YUQUANLU', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0106', 'WUKESONG', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0107', 'WANSHOULU', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0108', 'GONGZHUFEN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0109', 'Military Museum', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0110', 'MUXIDI', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0111', 'NANLISHILU', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0112', 'FUXINGMEN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0113', 'XIDAN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0114', 'TIANANMEN West', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0115', 'TIANANMEN East', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0116', 'WANGFUJING', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0117', 'DONGDAN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0118', 'JIANGUOMEN', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0119', 'YONGANLI', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0120', 'GUOMAO', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0121', 'DAWANGLU', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0122', 'SIHUI', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0123', 'SIHUIDONG', '01');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0201', 'JISHUITAN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0202', 'GULOUDAJIE', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0203', 'ANDINGMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0204', 'YONGHEGONG Lama Temple', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0205', 'DONGZHIMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0206', 'DONGSISHITIAO', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0207', 'CHAOYANGMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0208', 'JIANGUOMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0209', 'BEIJING railway Station', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0210', 'GUANGQUMENNEI', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0211', 'CHONGWENMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0212', 'QIANMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0213', 'HEPINGMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0214', 'XUANWUMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0215', 'FUXINGMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0216', 'FUCHENGMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0217', 'CHEGONGZHUANG', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0218', 'XIZHIMEN', '02');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0301', 'ANHEQIAO North', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0302', 'BEIGONGMEN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0303', 'XIYUAN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0304', 'YUANMINGYUAN Park', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0305', 'East Gate of Parking University', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0306', 'ZHONGGUANCUN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0307', 'HAIDIANHUANGZHUANG', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0308', 'RENMIN University', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0309', 'WEIGONGCUN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0310', 'National Library', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0311', 'Beijing Zoo', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0312', 'XIZHIMEN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0313', 'XINJIEKOU', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0314', 'PINGANLI', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0315', 'XISI', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0316', 'LINGJINGHUTONG', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0317', 'XIDAN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0318', 'XUANWUMEN', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0319', 'CAISHIKOU', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0320', 'TAORANTING', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0321', 'Beijing South railway Station', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0322', 'MAJIAPU', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0323', 'JIAOMEN West', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0324', 'GONGYIXIQIAO', '03');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0401', 'TIANTONGYUAN North', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0402', 'TIANTONGYUAN', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0403', 'TIANTONGYUAN South', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0404', 'LISHUIQIAO', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0405', 'LISHUIQIAO South', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0406', 'BEIYUANLU North', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0407', 'DATUNLU East', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0408', 'HUIXINXIJIE BEIKOU', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0409', 'HUIXINXIJIE NANKOU', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0410', 'HEPINGXIQIAO', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0411', 'HEPINGLIBEIJIE', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0412', 'YONGHEGONG Lama Temple', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0413', 'BEIXINQIAO', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0414', 'ZHANGZIZHONGLU', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0415', 'DONGSI', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0416', 'DENGSHIKOU', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0417', 'DONGDAN', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0418', 'CHONGWENMEN', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0419', 'CIQIKOU', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0420', 'TIANTANDONGMEN', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0421', 'PUHUANGYU', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0422', 'LIUJIAYAO', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0423', 'SONGJIAZHUANG', '04');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0501', 'HAIDIAN WULUJU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0502', 'CISHOUSI', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0503', 'HUAYUANQIAO', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0504', 'BAISHIQIAO South', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0505', 'CHEGONGZHUANG West', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0506', 'CHEGONGZHUANG', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0507', 'PINGANLI', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0508', 'BEIHAI North', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0509', 'NANLUOGUXIANG', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0510', 'DONGSI', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0511', 'CHAOYANGMEN', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0512', 'DONGDAQIAO', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0513', 'HUJIALOU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0514', 'JINTAILU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0515', 'SHILIPU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0516', 'QINGNIANLU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0517', 'DALIANPO', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0518', 'HUANGQU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0519', 'CHANGYING', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0520', 'CAOFANG', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0521', 'WUZIXUEYUANLU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0522', 'TONGZHOU BEIGUAN', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0523', 'BEIYUNHE West', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0524', 'HAOJIAFU', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0525', 'DONGXIAYUAN', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0526', 'LUCHENG', '05');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0601', 'JIAOHUACHANG', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0602', 'SHUANGHE', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0603', 'Happy Valley Scenic Area', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0604', 'NANLOUZIZHUANG', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0605', 'HUAGONG', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0606', 'BAIZIWAN', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0607', 'DAJIAOTING', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0608', 'JIULONGSHAN', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0609', 'GUANGQUMENWAI', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0610', 'GUANGQUMENNEI', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0611', 'CIQIKOU', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0612', 'QIAOWAN', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0613', 'ZHUSHIKOU', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0614', 'HUFANGQIAO', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0615', 'CAISHIKOU', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0616', 'GUANGANMENNEI', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0617', 'DAGUANYING', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0618', 'WANZI', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0619', 'Beijing West railway Station', '06');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0701', 'ZHUXINZHUANG', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0702', 'YUZHILU', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0703', 'PINGXIFU', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0704', 'HUILONGGUAN DONGDAJIE', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0705', 'HUOYING', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0706', 'YUXIN', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0707', 'XIXIAOKOU', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0708', 'YONGTAIZHUANG', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0709', 'LINCUIQIAO', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0710', 'South Gate of Forest Park', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0711', 'Olympic Green', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0712', 'Olympic Sports Center', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0713', 'BEITUCHENG', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0714', 'ANHUAQIAO', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0715', 'ANDELIBEIJI', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0716', 'GULOUDAJIE', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0717', 'SHICHAHAI', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0718', 'NANLUOGUXIANG', '07');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0801', 'National Library', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0802', 'BAISHIQIAO South', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0803', 'BAIDUIZI', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0804', 'Military Museum', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0805', 'Beijing West railway Station', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0806', 'LIULIQIAO East', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0807', 'LIULIQIAO', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0808', 'QILIZHUANG', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0809', 'FENGTAIDONGDAJIE', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0810', 'FENGTAINANLU', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0811', 'KEYILU', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0812', 'FENGTAI Science Park', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0813', 'GUOGONGZHUANG', '08');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0901', 'CHEDAOGOU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0902', 'CHANGCHUNQIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0903', 'HUOQIYING', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0904', 'BAGOU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0905', 'SUZHOUJIE', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0906', 'HAIDIANHUANGZHUANG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0907', 'ZHICHUNLI', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0908', 'ZHICHUNLU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0909', 'XITUCHENG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0910', 'MUDANYUAN', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0911', 'JIANDEMEN', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0912', 'BEITUCHENG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0913', 'ANZHENMEN', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0914', 'HUIXINXIJIE NANKOU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0915', 'SHAOYAOJU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0916', 'TAIYANGGONG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0917', 'SANYUANQIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0918', 'LIANGMAQIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0919', 'Agricultural Exhibition Center', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0920', 'TUANJIEHU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0921', 'HUJIALOU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0922', 'JINTAIXIZHAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0923', 'GUOMAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0924', 'JINSONG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0925', 'PANJIAYUAN', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0926', 'SHILIHE', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0927', 'FENZHONGSI', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0928', 'CHENGSHOUSI', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0929', 'SONGJIAZHUANG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0930', 'SHILIUZHUANG', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0931', 'DAHONGMEN', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0932', 'JIAOMEN East', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0933', 'JIAOMEN West', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0934', 'CAOQIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0935', 'JIJIAMIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0936', 'SHOUJINGMAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0937', 'FENGTAI railway Station', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0938', 'NIWA', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0939', 'XIJU', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0940', 'LIULIQIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0941', 'LIANHUAQIAO', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0942', 'GONGZHUFEN', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0943', 'XIDIAOYUTAI', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('0944', 'CISHOUSI', '09');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1001', 'XIZHIMEN', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1002', 'DAZHONGSI', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1003', 'ZHICHUNLU', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1004', 'WUDAOKOU', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1005', 'SHANGDI', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1006', 'XIERQI', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1007', 'LONGZE', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1008', 'HUILONGGUAN', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1009', 'HUOYING', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1010', 'LISHUIQIAO', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1011', 'BEIYUAN', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1012', 'WANGJING West', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1013', 'SHAOYAOJU', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1014', 'GUANGXIMEN', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1015', 'LIUFANG', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1016', 'DONGZHIMEN', '10');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1101', 'SHANGEZHUANG', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1102', 'LAIGUANGYING', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1103', 'DONGHUQU', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1104', 'WANGJING', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1105', 'FUTONG', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1106', 'WANGJING South', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1107', 'JIANGTAI', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1108', 'DONGFENGBEIQIAO', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1109', 'ZAOYING', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1110', 'JINTAILU', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1111', 'DAWANGLU', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1112', 'JIULONGSHAN', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1113', 'BEIGONGDA XIMEN', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1114', 'SHILIHE', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1115', 'FANGZHUANG', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1116', 'PUHUANGYU', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1117', 'JINGTAI', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1118', 'YONGDINGMENWAI', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1119', 'Beijing South railway Station', '11');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1201', 'XIJU', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1202', 'QILIZHUANG', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1203', 'DAJING', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1204', 'GUOZHUANGZI', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1205', 'DAWAYAO', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1206', 'Garden Expo Park', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1207', 'ZHANGGUOZHUANG', '12');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1301', 'FENGBO', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1302', 'SHUNYI', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1303', 'SHIMEN', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1304', 'NANFAXIN', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1305', 'HOUSHAYU', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1306', 'HUALIKAN', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1307', 'China International Exhibition Center', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1308', 'SUNHE', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1309', 'MAQUANYING', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1310', 'CUIGEZHUANG', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1311', 'WANGJING', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1312', 'WANGJING West', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1313', 'GUANZHUANG', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1314', 'DATUNLU East', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1315', 'ANLILU', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1316', 'Olympic Green', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1317', 'BEISHATAN', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1318', 'LIUDAOKOU', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1319', 'QINGHUADONGLUXIKOU', '13');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1401', 'GUOGONGZHUANG', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1402', 'DABAOTAI', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1403', 'DAOTIAN', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1404', 'CHANGYANG', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1405', 'LIBAFANG', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1406', 'GUANGYANGCHENG', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1407', 'LIANGXIANG University Town North', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1408', 'LIANGXIANG University Town', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1409', 'LIANGXIANG University Town West', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1410', 'LIANGXIANGNANGUAN', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1411', 'SUZHUANG', '14');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1501', 'XIERQI', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1502', 'Lift Science Park', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1503', 'ZHUXINZHUANG', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1504', 'GONGHUACHENG', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1505', 'SHAHE', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1506', 'SHAHE University Park', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1507', 'NANSHAO', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1508', 'BEISHAOWA', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1509', 'CHANGPING DONGGUAN', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1510', 'CHANGPING', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1511', 'Ming Tombs', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1512', 'CHANGPING XISHANKOU', '15');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1601', 'SONGJIAZHUANG', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1602', 'XIAOCUN', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1603', 'XIAOHONGMEN', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1604', 'JIUGONG', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1605', 'YIZHUANGQIAO', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1606', 'YIZHUANG Culture Park', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1607', 'WANYUANJIE', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1608', 'RONGJINGDONGJIE', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1609', 'RONGCHANGDONGJIE', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1610', 'TONGJINANLU', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1611', 'JINGHAILU', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1612', 'CIQU South', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1613', 'CIQU', '16');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1701', 'DONGZHIMEN', '17');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1702', 'SANYUANQIAO', '17');
INSERT INTO `railway`.`Station` (`StaId`, `StaName`, `lineId`) VALUES ('1703', 'Airport Terminal', '17');


INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('001', '0108', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('002', '0109', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('003', '0112', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('004', '0113', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('005', '0117', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('006', '0118', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('007', '0120', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('008', '0121', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('009', '0202', '07');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('010', '0204', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('011', '0205', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('012', '0205', '17');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('013', '0207', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('014', '0208', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('015', '0211', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('016', '0214', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('017', '0215', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('018', '0217', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('019', '0218', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('020', '0218', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('021', '0307', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('022', '0310', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('023', '0312', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('024', '0312', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('025', '0314', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('026', '0317', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('027', '0318', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('028', '0319', '06');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('029', '0321', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('030', '0323', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('031', '0404', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('032', '0407', '13');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('033', '0409', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('034', '0412', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('035', '0415', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('036', '0417', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('037', '0418', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('038', '0419', '06');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('039', '0421', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('040', '0423', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('041', '0423', '16');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('042', '0502', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('043', '0504', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('044', '0506', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('045', '0507', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('046', '0509', '07');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('047', '0510', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('048', '0511', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('049', '0513', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('050', '0514', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('051', '0608', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('052', '0611', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('053', '0615', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('054', '0619', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('055', '0701', '15');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('056', '0705', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('057', '0711', '13');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('058', '0713', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('059', '0716', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('060', '0718', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('061', '0801', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('062', '0802', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('063', '0804', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('064', '0805', '06');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('065', '0807', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('066', '0808', '12');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('067', '0813', '14');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('068', '0906', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('069', '0908', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('070', '0912', '07');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('071', '0914', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('072', '0915', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('073', '0917', '17');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('074', '0921', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('075', '0923', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('076', '0926', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('077', '0929', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('078', '0929', '16');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('079', '0933', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('080', '0939', '12');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('081', '0940', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('082', '0942', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('083', '0944', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('084', '1001', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('085', '1001', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('086', '1003', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('087', '1006', '15');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('088', '1009', '07');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('089', '1010', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('090', '1012', '13');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('091', '1013', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('092', '1016', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('093', '1016', '17');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('094', '1104', '13');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('095', '1110', '05');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('096', '1111', '01');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('097', '1112', '06');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('098', '1114', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('099', '1116', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('100', '1119', '03');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('101', '1201', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('102', '1202', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('103', '1311', '11');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('104', '1312', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('105', '1314', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('106', '1316', '07');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('107', '1401', '08');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('108', '1501', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('109', '1503', '07');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('110', '1601', '09');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('111', '1601', '04');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('112', '1701', '02');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('113', '1701', '10');
INSERT INTO `railway`.`InterChange` (`interId`, `StaId`, `interLine`) VALUES ('114', '1702', '09');

INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('01', 'Tiananmen Square', 'TIANANMEN East');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('02', 'Beijing airport', 'Airport Terminal');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('03', 'Forbidden City', 'TIANANMEN East');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('04', 'Andingmen Station', 'ANDINGMEN');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('05', 'Nanluoguxiang', 'NANLUOGUXIANG');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('06', 'BUPT main campus', 'DAZHONGSI');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('07', 'BUPT Hongfu campus', 'TIANTONGYUAN North');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('08', '798 Art District', 'WANGJING South');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('09', 'Huayu Holiday Inn Beijing Deshengmen', 'JISHUITAN');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('10', 'Panjiayuan', 'PANJIAYUAN');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('11', 'National Library', 'National Library');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('12', 'Summer Palace', 'BEIGONGMEN');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('13', 'Temple of Heaven', 'TIANTANDONGMEN');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('14', 'Wangjing Soho', 'FUTONG');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('15', 'Water Cube', 'South Gate of Forest Park');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('16', 'Beijing South railway Station', 'Beijing South railway Station');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('17', 'Dashilan', 'QIANMEN');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('18', 'China Ethnic Culture Park', 'BEITUCHENG');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('19', 'Beijing Zoo', 'Beijing Zoo');
INSERT INTO `railway`.`attraction` (`ID`, `attraction`, `staName`) VALUES ('20', 'Sanlitun', 'TUANJIEHU');

USE `railway`;
DROP procedure IF EXISTS `qqqqqq`;
/*This procedure is used for product shortcut*/
DELIMITER $$
USE `railway`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `qqqqqq`(IN startAtt varchar(45) ,IN stopAtt varchar(45))
begin
declare startLine,stopLine int;
declare startSta,stopSta varchar(45);
declare level1,level2,level3,c1,c2,c3,c33,l2,l3,slNum,countinit int default 0;
declare disB int;
declare LB,LA,LI3,d1,d2,total,loopNum int;
declare SB,SA,SI3 varchar(45);
declare dis1,dis2,dis3 int;

select staName into startSta from attraction where startAtt = attraction;
select staName into stopSta from attraction where stopAtt = attraction;

select distinct lineId into startLine from Station where staName = startSta;
drop table if exists SL;
set @slcnt = 0;
set slNum = 0;
create table SL select (@slcnt := @slcnt+1) as ROWNUM,lineId from Station where staName = stopSta;

drop table if exists t1;
CREATE TABLE `railway`.`t1` (
`ROWNUM` INT NOT NULL AUTO_INCREMENT COMMENT '',
`LB` INT NOT NULL COMMENT '',
`SB` VARCHAR(45) NOT NULL COMMENT '',
`LA` INT NOT NULL COMMENT '',
`SA` VARCHAR(45) NOT NULL COMMENT '',
`distance` INT NULL COMMENT '',
PRIMARY KEY (`ROWNUM`)  COMMENT '');

drop table if exists t2;
CREATE TABLE `railway`.`t2` (
`ROWNUM` INT NOT NULL AUTO_INCREMENT COMMENT '',
`LB` INT NOT NULL COMMENT '',
`SB` VARCHAR(45) NOT NULL COMMENT '',
`LA` INT NOT NULL COMMENT '',
`SA` VARCHAR(45) NOT NULL COMMENT '',
`distance` INT NULL COMMENT '',
PRIMARY KEY (`ROWNUM`)  COMMENT '');

drop table if exists t3;
CREATE TABLE `railway`.`t3` (
`ROWNUM` INT NOT NULL AUTO_INCREMENT COMMENT '',
`LB` INT NOT NULL COMMENT '',
`SB` VARCHAR(45) NOT NULL COMMENT '',
`LA` INT NOT NULL COMMENT '',
`SA` VARCHAR(45) NOT NULL COMMENT '',
`LI3` INT NOT NULL COMMENT '',
`SI3` VARCHAR(45) NOT NULL COMMENT '',
`distance` INT NULL COMMENT '',
PRIMARY KEY (`ROWNUM`)  COMMENT '');
drop table if exists Straight;
CREATE TABLE `railway`.`Straight` (
  `lineId` INT NOT NULL COMMENT '',
  `totalDis` INT NULL COMMENT '',
  PRIMARY KEY (`lineId`)  COMMENT '');

select slNum,@slcnt,startSta;

while(slNum<@slcnt) do
	
	set slNum = slNum+1;
	select lineId into stopLine from SL where slNum = ROWNUM;
	select stopLine; 
	select lineLoop into loopNum from line where lineId = stopLine;

	if(startLine = stopLine) then
		select staId into d1 from Station where staName = startSta;
		select staId into d2 from Station where staName = stopSta and stopLine = lineId;
		set total = abs(abs(d1-d2)-loopNum);
		
        INSERT INTO `railway`.`Straight` (`lineId`, `totalDis`) VALUES (startLine, total);

	else
		set @mycnt1 = 0;
        set @tlevel1 = 0;
		select count(*) into @tlevel1 from Station,InterChange 
		where Station.StaId = InterChange.StaId and InterChange.interLine = stopLine;
       /* select @tlevel1;*/
        set level1 = level1+@tlevel1;
        drop table if exists t11;
		create table t11 select (@mycnt1 := @mycnt1+1) as ROWNUM, lineId,staName,InterChange.staId as staId
		from Station,InterChange where Station.StaId = InterChange.StaId and InterChange.interLine = stopLine;
		ALTER TABLE `railway`.`t11` 
		CHANGE COLUMN `ROWNUM` `ROWNUM` BIGINT(21) NOT NULL DEFAULT 0 COMMENT '' ,
		ADD COLUMN `distance` INT NULL COMMENT '' AFTER `staName`,
		ADD PRIMARY KEY (`ROWNUM`)  COMMENT '';
		set @mycnt11 = 0;
        while(@mycnt11<@mycnt1) do
			set @mycnt11 = @mycnt11+1;
			select lineId,staName into LB,SB from t11 where ROWNUM = @mycnt11;
			INSERT INTO `railway`.`t1` (`LB`, `SB`, `LA`, `SA`, `distance`) VALUES (LB, SB, stopLine, stopSta,0);
		end while;
		
		

		while(c1<level1) do
			select lineId into stopLine from SL where slNum = ROWNUM;
            select stopLine;
			select lineLoop into loopNum from line where lineId = stopLine;
			set c1 = c1+1;
            select t1.LB,t1.SB into LB,SB from t1 where ROWNUM = c1;
			select staId into d1 from Station where lineId = stopLine and staName = 
				(select t1.SB from t1 where c1 = t1.ROWNUM);
			
			select staId into d2 from Station where staName = stopSta and stopLine = lineId;
			set @tem = abs(abs(d1-d2)-loopNum);
                        if (@tem<abs(d1-d2)) then set total = abs(abs(d1-d2)-loopNum);
                        else set total = abs(d1-d2);
                        end if;
			select d1,d2,total,c1;
			UPDATE `railway`.`t1` SET `distance`=total WHERE `ROWNUM`=c1;
            
		end while;
       
	end if;
end while;
			/*Level2*/
            set c1 = 0;
            while(c1<level1) do 
				set c1 = c1+1;
				select t1.LB,t1.SB,distance into LA,SA,disB from t1 where c1 = ROWNUM;
				if(LA != startLine) then
					set @mycnt2 = 0;
					drop table if exists t22;
					create table t22 select (@mycnt2 := @mycnt2+1) as ROWNUM, Station.lineId,Station.staName,Station.staId 
					from Station
					where Station.staId IN (select InterChange.staId from InterChange,t1 where InterChange.interLine = t1.LB and c1=ROWNUM);
					set c2 = 0;
					while(c2<@mycnt2) do
						set c2 = c2+1;
						select lineId,staName into LB,SB from t22 where c2 = ROWNUM;
						if(SB!=SA and LB!=stopLine and SA!=stopSta) then
							select staId into d1 from Station  where lineId = LA and staName = SA;
							select staId into d2 from Station  where lineId = LA and staName = SB;
							select lineLoop into loopNum from line where lineId = LA;
							set @tem = abs(abs(d1-d2)-loopNum);
							if (@tem<abs(d1-d2)) then 
								set total = abs(abs(d1-d2)-loopNum);
							else 
								set total = abs(d1-d2);
							end if;
							
							set total = total + disB;
							INSERT INTO `railway`.`t2` (`LB`, `SB`, `LA`, `SA`, `distance`) VALUES (LB, SB, LA, SA,total);
						end if;
					end while;
				end if;
			end while;
			
		
		/*level3*/
            drop table if exists temp2;
            set @temp2 = 0;
            create table temp2 select (@temp2:=@temp2+1) as ROWNUM,t2.LB,t2.SB,t2.LA,t2.SA,t2.distance 
            from t2 where t2.LB!=startLine;
            select count(*) into level2 from temp2;
            
           
			set @mycnt3 = 0;	
            drop table if exists t33;
			create table t33 select (@mycnt3 := @mycnt3+1) as ROWNUM,floor(staId/100) as lineId,staId,interline from interchange having lineId = startLine;
			
               
           while(c3<level2) do
				set c3 = c3+1;
				
				select temp2.LA,temp2.SA,temp2.LB,temp2.SB,temp2.distance into LI3,SI3,LA,SA,disB from temp2 where c3 = temp2.ROWNUM;
				set @r = 0;
                drop table if exists t333;
				create table t333 select (@r := @r+1) as ROWNUM,staId from t33 where interline = LA;
                set l3 = (select count(*) from t333);
				set countinit = 0;
                
				if(l3>0) then
               
					while(countinit<l3) do
                    
						set countinit = countinit+1;
                       
						select staId into d1 from Station  where lineId = LA and staName = SA;
						
                        select staName into SB from Station where staId = (select staId from t333 where countinit = t333.ROWNUM);
						select staId into d2 from Station where lineId = LA and staName = SB;
                        select lineLoop into loopNum from line where lineId = LA;
                       

						set @tem = abs(abs(d1-d2)-loopNum);
						if (@tem<abs(d1-d2)) then 
							set total = abs(abs(d1-d2)-loopNum);
						else 
							set total = abs(d1-d2);
						end if;
                        set total = total + disB;
						INSERT INTO `railway`.`t3` (`LB`, `SB`, `LA`, `SA`,`LI3`, `SI3`, `distance`) VALUES (StartLine, SB, LA, SA,LI3,SI3,total);
						
					end while;
				end if;
                
			end while;
		select count(*) into level3 from t3;
	drop table if exists Once;
	CREATE TABLE `railway`.`Once` (
  `ROWNUM` INT NOT NULL AUTO_INCREMENT  COMMENT '',
  `StartStation` VARCHAR(45) NOT NULL COMMENT '',
  `StartLine` INT NOT NULL COMMENT '',
  `I1Station` VARCHAR(45) NOT NULL COMMENT '',
  `I1Line` INT NOT NULL COMMENT '',
  `StopStation` VARCHAR(45) NOT NULL COMMENT '',
  `stopLine` INT NOT NULL COMMENT '',
  `totalDis` INT DEFAULT 0 COMMENT '',
  `totalStop` INT NOT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`ROWNUM`)  COMMENT '');
  
drop table if exists Twice;
	CREATE TABLE `railway`.`Twice` (
  `ROWNUM` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `StartStation` VARCHAR(45) NOT NULL COMMENT '',
  `StartLine` INT NOT NULL COMMENT '',
  `I1Station` VARCHAR(45) NOT NULL COMMENT '',
  `I1Line` INT NOT NULL COMMENT '',
   `I2Station` VARCHAR(45) NOT NULL COMMENT '',
  `I2Line` INT NOT NULL COMMENT '',
  `StopStation` VARCHAR(45) NOT NULL COMMENT '',
   `stopLine` INT NOT NULL COMMENT '',
  `totalDis` INT DEFAULT 0 COMMENT '',
  `totalStop` INT NOT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`ROWNUM`)  COMMENT '');
  
  drop table if exists Triple;
	CREATE TABLE `railway`.`Triple` (
  `ROWNUM` INT NOT NULL AUTO_INCREMENT  COMMENT '',
  `StartStation` VARCHAR(45) NOT NULL COMMENT '',
  `StartLine` INT NOT NULL COMMENT '',
  `I1Station` VARCHAR(45) NOT NULL COMMENT '',
  `I1Line` INT NOT NULL COMMENT '',
   `I2Station` VARCHAR(45) NOT NULL COMMENT '',
  `I2Line` INT NOT NULL COMMENT '',
   `I3Station` VARCHAR(45) NOT NULL COMMENT '',
  `I3Line` INT NOT NULL COMMENT '',
  `StopStation` VARCHAR(45) NOT NULL COMMENT '',
 `stopLine` INT NOT NULL COMMENT '',
  `totalDis` INT DEFAULT 0 COMMENT '',
  `totalStop` INT NOT NULL DEFAULT 0 COMMENT '',
  PRIMARY KEY (`ROWNUM`)  COMMENT '');
	
    set @res1 = 0;
    set @res2 = 0;
    set @res3 = 0;
    while(@res1<level1) do
		set @res1 = @res1+1;
		select t1.LB into LB from t1 where @res1 = ROWNUM;
		if(LB = startLine) then
			select t1.SB,t1.LA,t1.SA,t1.distance into SB,LA,SA,total from t1 where @res1 = ROWNUM;
			set @disA = 0;
			select staId into d1 from Station where staName = startSta and lineId = startLine;
			select staId into d2 from Station where staName = SB and lineId = startLine;
			set @disA = abs(d1-d2);
			set total = total+1+@disA;
		
			INSERT INTO `railway`.`Once` (`StartStation`, `StartLine`, `I1Station`, `I1Line`, `StopStation`,`StopLine`,`totalDis`,`totalStop`) 
			VALUES (startSta, startLine, SB, LB, SA,LA, total,(total-1));
		end if;
    end while;
    
    while(@res2<level2) do
		set @res2 = @res2+1;
		select t2.LB into LB from t2 where @res2 = ROWNUM;
		if(LB = startLine) then
			select t2.SB,t2.LA,t2.SA,t2.distance into SB,LA,SA,total from t2 where @res2 = ROWNUM;
			select distinct t1.LA into stopLine from t1 where t1.LB = LA and t1.SB = SA;
			
			set @disA = 0;
			select staId into d1 from Station where staName = startSta and lineId = startLine;
			select staId into d2 from Station where staName = SB and lineId = startLine;
			set @disA = abs(d1-d2);
			set total = total+2+@disA;
			
			INSERT INTO `railway`.`Twice` (`StartStation`, `StartLine`, `I1Station`, `I1Line`,`I2Station`, `I2Line`, `StopStation`,`StopLine`,`totalDis`,`totalStop`) 
			VALUES (startSta, startLine, SB, LB, SA, LA,stopSta,stopLine,total,(total-2));
		end if;
    end while;
   
    while(@res3<level3) do
		set @res3 = @res3+1;
		select t3.LB into LB from t3 where @res3 = ROWNUM;
		if(LB = startLine) then
		select t3.LI3,t3.SI3,t3.SB,t3.LA,t3.SA,t3.distance into LI3,SI3,SB,LA,SA,total from t3 where @res3 = ROWNUM;
        select distinct t1.LA into stopLine from t1 where t1.LB = LI3 and t1.SB = SI3;
        
        set @disA = 0;
        select staId into d1 from Station where staName = startSta and lineId = startLine;
        select staId into d2 from Station where staName = SB and lineId = startLine;
        set @disA = abs(d1-d2);
        set total = total+3+@disA;
		
			INSERT INTO `railway`.`Triple` (`StartStation`, `StartLine`, `I1Station`, `I1Line`,`I2Station`, `I2Line`,`I3Station`, `I3Line`, `StopStation`,`StopLine`,`totalDis`,`totalStop`) 
			VALUES (startSta, startLine, SB, LB, SA, LA,SI3,LI3,stopSta,stopLine,total,(total-3));
		end if;
    end while;
   
    select min(totalDis) into dis1 from Once;
    select min(totalDis) into dis2 from Twice;
    select min(totalDis) into dis3 from Triple;
    select dis1,dis2,dis3;
end $$
DELIMITER ;

/*below codes are uesd for test the procedure:

call railway.qqqqqq('Beijing Airport','Tiananmen Square');
call railway.qqqqqq('BUPT main campus','Nanluoguxiang');
call railway.qqqqqq('BUPT Hongfu campus','Forbidden City');
call railway.qqqqqq('Huayu Holiday Inn Beijing Deshengmen','798 Art District');
call railway.qqqqqq('BUPT main campus','Panjiayuan');
call railway.qqqqqq('BUPT main campus','National Library');
*/
