/*
Navicat MySQL Data Transfer

Source Server         : conn
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : nearby

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2014-05-16 14:37:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `gps`
-- ----------------------------
DROP TABLE IF EXISTS `gps`;
CREATE TABLE `gps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `time` datetime NOT NULL,
  `geohash` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `geohash` (`geohash`) USING BTREE,
  CONSTRAINT `gps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gps
-- ----------------------------
INSERT INTO `gps` VALUES ('18', '351565053248644', '114.3480907', '30.5269561', '2014-05-15 09:37:29', 'uxvxyxvp');
INSERT INTO `gps` VALUES ('19', '358472045454005', '114.3380907', '30.5169561', '2014-05-15 11:10:24', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('20', '358512032147722', '114.3200000', '30.5169561', '2013-06-17 14:30:08', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('21', '359836040135646', '114.3367890', '30.5169561', '2013-06-17 14:30:41', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('22', '359836040135647', '114.4597704', '30.4169561', '2013-06-17 15:39:59', 'uxvxupuz');
INSERT INTO `gps` VALUES ('23', '359836040135648', '114.3380907', '30.5002608', '2013-06-17 16:03:14', 'uxvxypcx');
INSERT INTO `gps` VALUES ('37', '359836040135649', '114.3980907', '30.5169561', '2014-05-12 16:07:30', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('38', '359836040135650', '114.0334300', '30.5152960', '2014-05-12 16:08:25', 'uxvxyrux');
INSERT INTO `gps` VALUES ('39', '359836040135651', '114.3360000', '30.5169561', '2014-05-15 09:35:35', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('40', '359836040135652', '114.3350000', '30.5169561', '2014-05-16 09:36:01', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('41', '359836040135653', '114.4000000', '30.5169561', '2014-05-16 09:36:26', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('42', '359836040135654', '114.3480907', '30.5169561', '2014-05-15 09:36:43', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('44', '861344022478010', '114.3580907', '30.5169561', '2014-05-15 10:28:01', 'uxvxyrvz');
INSERT INTO `gps` VALUES ('245', '359836040135700', '114.4764828', '30.6675901', '1970-01-01 00:00:00', 'uxvzczgr');
INSERT INTO `gps` VALUES ('246', '359836040135701', '114.4688087', '30.6728357', '1970-01-01 00:00:00', 'uxvzczzr');
INSERT INTO `gps` VALUES ('247', '359836040135702', '114.4621483', '30.6759528', '1970-01-01 00:00:00', 'uxvzfpcx');
INSERT INTO `gps` VALUES ('248', '359836040135703', '114.4213348', '30.6934155', '1970-01-01 00:00:00', 'uxvzfryr');
INSERT INTO `gps` VALUES ('249', '359836040135704', '114.4907538', '30.6980434', '1970-01-01 00:00:00', 'uxvzfxcx');
INSERT INTO `gps` VALUES ('250', '359836040135705', '114.4858278', '30.6789798', '1970-01-01 00:00:00', 'uxvzfpgz');
INSERT INTO `gps` VALUES ('251', '359836040135706', '114.4966901', '30.6479478', '1970-01-01 00:00:00', 'uxvzcrvp');
INSERT INTO `gps` VALUES ('252', '359836040135707', '114.4569531', '30.679484', '1970-01-01 00:00:00', 'uxvzfpup');
INSERT INTO `gps` VALUES ('253', '359836040135708', '114.431535', '30.6219464', '1970-01-01 00:00:00', 'uxvzbzfp');
INSERT INTO `gps` VALUES ('254', '359836040135709', '114.4396252', '30.6561148', '1970-01-01 00:00:00', 'uxvzcxgp');
INSERT INTO `gps` VALUES ('255', '359836040135710', '114.4864857', '30.6665256', '1970-01-01 00:00:00', 'uxvzczfx');
INSERT INTO `gps` VALUES ('256', '359836040135711', '114.4281353', '30.6228916', '1970-01-01 00:00:00', 'uxvzbzfz');
INSERT INTO `gps` VALUES ('257', '359836040135712', '114.4347229', '30.6167461', '1970-01-01 00:00:00', 'uxvzbxyr');
INSERT INTO `gps` VALUES ('258', '359836040135713', '114.4242424', '30.6284151', '1970-01-01 00:00:00', 'uxvzbzyz');
INSERT INTO `gps` VALUES ('259', '359836040135714', '114.4373382', '30.6291401', '1970-01-01 00:00:00', 'uxvzbzzr');
INSERT INTO `gps` VALUES ('260', '359836040135715', '114.4233322', '30.6844905', '1970-01-01 00:00:00', 'uxvzfpzz');
INSERT INTO `gps` VALUES ('261', '359836040135716', '114.4942278', '30.6279075', '1970-01-01 00:00:00', 'uxvzbzyx');
INSERT INTO `gps` VALUES ('262', '359836040135717', '114.4936852', '30.6877899', '1970-01-01 00:00:00', 'uxvzfrfp');
INSERT INTO `gps` VALUES ('263', '359836040135718', '114.4913545', '30.6988351', '1970-01-01 00:00:00', 'uxvzfxfp');
INSERT INTO `gps` VALUES ('264', '359836040135719', '114.4224636', '30.6733249', '1970-01-01 00:00:00', 'uxvzczzx');
INSERT INTO `gps` VALUES ('265', '359836040135720', '114.4317036', '30.6844289', '1970-01-01 00:00:00', 'uxvzfpzx');
INSERT INTO `gps` VALUES ('266', '359836040135721', '114.4697652', '30.6643926', '1970-01-01 00:00:00', 'uxvzczcp');
INSERT INTO `gps` VALUES ('267', '359836040135722', '114.4407633', '30.6182972', '1970-01-01 00:00:00', 'uxvzbxzx');
INSERT INTO `gps` VALUES ('268', '359836040135723', '114.4598242', '30.673259', '1970-01-01 00:00:00', 'uxvzczzx');
INSERT INTO `gps` VALUES ('269', '359836040135724', '114.4759095', '30.6358367', '1970-01-01 00:00:00', 'uxvzcpur');
INSERT INTO `gps` VALUES ('270', '359836040135725', '114.4416245', '30.6608686', '1970-01-01 00:00:00', 'uxvzcxyx');
INSERT INTO `gps` VALUES ('271', '359836040135726', '114.4255772', '30.6786399', '1970-01-01 00:00:00', 'uxvzfpgx');
INSERT INTO `gps` VALUES ('272', '359836040135727', '114.4519327', '30.6788685', '1970-01-01 00:00:00', 'uxvzfpgx');
INSERT INTO `gps` VALUES ('273', '359836040135728', '114.4817622', '30.6257', '1970-01-01 00:00:00', 'uxvzbzuz');
INSERT INTO `gps` VALUES ('274', '359836040135729', '114.4694501', '30.6668728', '1970-01-01 00:00:00', 'uxvzczfz');
INSERT INTO `gps` VALUES ('275', '359836040135730', '114.4568895', '30.6958105', '1970-01-01 00:00:00', 'uxvzfxbp');
INSERT INTO `gps` VALUES ('276', '359836040135731', '114.4228273', '30.641727', '1970-01-01 00:00:00', 'uxvzcrbx');
INSERT INTO `gps` VALUES ('277', '359836040135732', '114.4850404', '30.6631907', '1970-01-01 00:00:00', 'uxvzczbr');
INSERT INTO `gps` VALUES ('278', '359836040135733', '114.4491585', '30.6879563', '1970-01-01 00:00:00', 'uxvzfrfr');
INSERT INTO `gps` VALUES ('279', '359836040135734', '114.4639812', '30.6817003', '1970-01-01 00:00:00', 'uxvzfpvx');
INSERT INTO `gps` VALUES ('280', '359836040135735', '114.4318859', '30.6105467', '1970-01-01 00:00:00', 'uxvzbxcz');
INSERT INTO `gps` VALUES ('281', '359836040135736', '114.4413767', '30.6897383', '1970-01-01 00:00:00', 'uxvzfrgx');
INSERT INTO `gps` VALUES ('282', '359836040135737', '114.4512237', '30.617997', '1970-01-01 00:00:00', 'uxvzbxzr');
INSERT INTO `gps` VALUES ('283', '359836040135738', '114.4715623', '30.6094733', '1970-01-01 00:00:00', 'uxvzbxcp');
INSERT INTO `gps` VALUES ('284', '359836040135739', '114.4660733', '30.6496673', '1970-01-01 00:00:00', 'uxvzcryr');
INSERT INTO `gps` VALUES ('285', '359836040135740', '114.4392347', '30.6230938', '1970-01-01 00:00:00', 'uxvzbzgp');
INSERT INTO `gps` VALUES ('286', '359836040135741', '114.4266885', '30.6104921', '1970-01-01 00:00:00', 'uxvzbxcz');
INSERT INTO `gps` VALUES ('287', '359836040135742', '114.4662946', '30.6934005', '1970-01-01 00:00:00', 'uxvzfryr');
INSERT INTO `gps` VALUES ('288', '359836040135743', '114.4443056', '30.6348356', '1970-01-01 00:00:00', 'uxvzcpgx');
INSERT INTO `gps` VALUES ('289', '359836040135744', '114.4670575', '30.6711834', '1970-01-01 00:00:00', 'uxvzczyp');
INSERT INTO `gps` VALUES ('290', '359836040135745', '114.4534328', '30.6339842', '1970-01-01 00:00:00', 'uxvzcpfz');
INSERT INTO `gps` VALUES ('291', '359836040135746', '114.4713768', '30.6738505', '1970-01-01 00:00:00', 'uxvzfpbp');
INSERT INTO `gps` VALUES ('292', '359836040135747', '114.4473872', '30.6916763', '1970-01-01 00:00:00', 'uxvzfruz');
INSERT INTO `gps` VALUES ('293', '359836040135748', '114.4367978', '30.6262638', '1970-01-01 00:00:00', 'uxvzbzvr');
INSERT INTO `gps` VALUES ('294', '359836040135749', '114.4426323', '30.6500873', '1970-01-01 00:00:00', 'uxvzcryx');
INSERT INTO `gps` VALUES ('295', '359836040135750', '114.498493', '30.666093', '1970-01-01 00:00:00', 'uxvzczfr');
INSERT INTO `gps` VALUES ('296', '359836040135751', '114.4957203', '30.6333173', '1970-01-01 00:00:00', 'uxvzcpfx');
INSERT INTO `gps` VALUES ('297', '359836040135752', '114.4590191', '30.6670628', '1970-01-01 00:00:00', 'uxvzczgp');
INSERT INTO `gps` VALUES ('298', '359836040135753', '114.475523', '30.6647335', '1970-01-01 00:00:00', 'uxvzczcr');
INSERT INTO `gps` VALUES ('299', '359836040135754', '114.4282032', '30.6481819', '1970-01-01 00:00:00', 'uxvzcrvr');
INSERT INTO `gps` VALUES ('300', '359836040135755', '114.4567127', '30.6253252', '1970-01-01 00:00:00', 'uxvzbzux');
INSERT INTO `gps` VALUES ('301', '359836040135756', '114.4731823', '30.6344553', '1970-01-01 00:00:00', 'uxvzcpgr');
INSERT INTO `gps` VALUES ('302', '359836040135757', '114.4298103', '30.692066', '1970-01-01 00:00:00', 'uxvzfrvr');
INSERT INTO `gps` VALUES ('303', '359836040135758', '114.4358123', '30.6296424', '1970-01-01 00:00:00', 'uxvzbzzz');
INSERT INTO `gps` VALUES ('304', '359836040135759', '114.4192737', '30.6629148', '1970-01-01 00:00:00', 'uxvzczbp');
INSERT INTO `gps` VALUES ('305', '359836040135760', '114.4796151', '30.6539589', '1970-01-01 00:00:00', 'uxvzcxcx');
INSERT INTO `gps` VALUES ('306', '359836040135761', '114.4505752', '30.6103975', '1970-01-01 00:00:00', 'uxvzbxcz');
INSERT INTO `gps` VALUES ('307', '359836040135762', '114.4580894', '30.62122', '1970-01-01 00:00:00', 'uxvzbzcx');
INSERT INTO `gps` VALUES ('308', '359836040135763', '114.4445032', '30.6712547', '1970-01-01 00:00:00', 'uxvzczyp');
INSERT INTO `gps` VALUES ('309', '359836040135764', '114.4837768', '30.6662251', '1970-01-01 00:00:00', 'uxvzczfr');
INSERT INTO `gps` VALUES ('310', '359836040135765', '114.4758726', '30.6449296', '1970-01-01 00:00:00', 'uxvzcrfz');
INSERT INTO `gps` VALUES ('311', '359836040135766', '114.4468288', '30.6475974', '1970-01-01 00:00:00', 'uxvzcruz');
INSERT INTO `gps` VALUES ('312', '359836040135767', '114.4779331', '30.6500927', '1970-01-01 00:00:00', 'uxvzcryx');
INSERT INTO `gps` VALUES ('313', '359836040135768', '114.4671484', '30.6229636', '1970-01-01 00:00:00', 'uxvzbzfz');
INSERT INTO `gps` VALUES ('314', '359836040135769', '114.4194867', '30.668222', '1970-01-01 00:00:00', 'uxvzczgz');
INSERT INTO `gps` VALUES ('315', '359836040135770', '114.4373379', '30.6187904', '1970-01-01 00:00:00', 'uxvzbxzz');
INSERT INTO `gps` VALUES ('316', '359836040135771', '114.4733564', '30.6533811', '1970-01-01 00:00:00', 'uxvzcxcp');
INSERT INTO `gps` VALUES ('317', '359836040135772', '114.440611', '30.6282682', '1970-01-01 00:00:00', 'uxvzbzyz');
INSERT INTO `gps` VALUES ('318', '359836040135773', '114.4564609', '30.6980738', '1970-01-01 00:00:00', 'uxvzfxcx');
INSERT INTO `gps` VALUES ('319', '359836040135774', '114.443198', '30.6242209', '1970-01-01 00:00:00', 'uxvzbzgz');
INSERT INTO `gps` VALUES ('320', '359836040135775', '114.4907513', '30.6968614', '1970-01-01 00:00:00', 'uxvzfxbz');
INSERT INTO `gps` VALUES ('321', '359836040135776', '114.4495268', '30.6690861', '1970-01-01 00:00:00', 'uxvzczux');
INSERT INTO `gps` VALUES ('322', '359836040135777', '114.4662771', '30.6229112', '1970-01-01 00:00:00', 'uxvzbzfz');
INSERT INTO `gps` VALUES ('323', '359836040135778', '114.4808132', '30.6588957', '1970-01-01 00:00:00', 'uxvzcxvp');
INSERT INTO `gps` VALUES ('324', '359836040135779', '114.4481928', '30.6596708', '1970-01-01 00:00:00', 'uxvzcxvx');
INSERT INTO `gps` VALUES ('325', '359836040135780', '114.4557139', '30.6903139', '1970-01-01 00:00:00', 'uxvzfrup');
INSERT INTO `gps` VALUES ('326', '359836040135781', '114.4274504', '30.6529839', '1970-01-01 00:00:00', 'uxvzcxbz');
INSERT INTO `gps` VALUES ('327', '359836040135782', '114.433359', '30.6648474', '1970-01-01 00:00:00', 'uxvzczcr');
INSERT INTO `gps` VALUES ('328', '359836040135783', '114.4395595', '30.6526403', '1970-01-01 00:00:00', 'uxvzcxbx');
INSERT INTO `gps` VALUES ('329', '359836040135784', '114.4455974', '30.6828269', '1970-01-01 00:00:00', 'uxvzfpyx');
INSERT INTO `gps` VALUES ('330', '359836040135785', '114.4228826', '30.6986215', '1970-01-01 00:00:00', 'uxvzfxfp');
INSERT INTO `gps` VALUES ('331', '359836040135786', '114.4384857', '30.644099', '1970-01-01 00:00:00', 'uxvzcrfr');
INSERT INTO `gps` VALUES ('332', '359836040135787', '114.4716382', '30.6200435', '1970-01-01 00:00:00', 'uxvzbzbz');
INSERT INTO `gps` VALUES ('333', '359836040135788', '114.4959054', '30.641055', '1970-01-01 00:00:00', 'uxvzcrbp');
INSERT INTO `gps` VALUES ('334', '359836040135789', '114.4352955', '30.6283663', '1970-01-01 00:00:00', 'uxvzbzyz');
INSERT INTO `gps` VALUES ('335', '359836040135790', '114.4895035', '30.6804801', '1970-01-01 00:00:00', 'uxvzfpuz');
INSERT INTO `gps` VALUES ('336', '359836040135791', '114.4874878', '30.6527502', '1970-01-01 00:00:00', 'uxvzcxbx');
INSERT INTO `gps` VALUES ('337', '359836040135792', '114.4306382', '30.6726611', '1970-01-01 00:00:00', 'uxvzczzp');
INSERT INTO `gps` VALUES ('338', '359836040135793', '114.4314851', '30.6331643', '1970-01-01 00:00:00', 'uxvzcpfr');
INSERT INTO `gps` VALUES ('339', '359836040135794', '114.4805115', '30.6643996', '1970-01-01 00:00:00', 'uxvzczcp');
INSERT INTO `gps` VALUES ('340', '359836040135795', '114.4537031', '30.6923799', '1970-01-01 00:00:00', 'uxvzfrvx');
INSERT INTO `gps` VALUES ('341', '359836040135796', '114.47972', '30.6827684', '1970-01-01 00:00:00', 'uxvzfpyx');
INSERT INTO `gps` VALUES ('342', '359836040135797', '114.4737424', '30.684704', '1970-01-01 00:00:00', 'uxvzfpzz');
INSERT INTO `gps` VALUES ('343', '359836040135798', '114.4495772', '30.6915552', '1970-01-01 00:00:00', 'uxvzfruz');
INSERT INTO `gps` VALUES ('344', '359836040135799', '114.4738356', '30.6584661', '1970-01-01 00:00:00', 'uxvzcxuz');
INSERT INTO `gps` VALUES ('345', '359836040135800', '114.4444465', '30.6175785', '1970-01-01 00:00:00', 'uxvzbxzp');
INSERT INTO `gps` VALUES ('346', '359836040135801', '114.4659059', '30.6843331', '1970-01-01 00:00:00', 'uxvzfpzx');
INSERT INTO `gps` VALUES ('347', '359836040135802', '114.4437801', '30.6345229', '1970-01-01 00:00:00', 'uxvzcpgr');
INSERT INTO `gps` VALUES ('348', '359836040135803', '114.4331501', '30.6280941', '1970-01-01 00:00:00', 'uxvzbzyx');
INSERT INTO `gps` VALUES ('349', '359836040135804', '114.4514077', '30.63603', '1970-01-01 00:00:00', 'uxvzcpur');
INSERT INTO `gps` VALUES ('350', '359836040135805', '114.4530921', '30.6250415', '1970-01-01 00:00:00', 'uxvzbzur');
INSERT INTO `gps` VALUES ('351', '359836040135806', '114.4729924', '30.6444841', '1970-01-01 00:00:00', 'uxvzcrfx');
INSERT INTO `gps` VALUES ('352', '359836040135807', '114.4269249', '30.6362678', '1970-01-01 00:00:00', 'uxvzcpux');
INSERT INTO `gps` VALUES ('353', '359836040135808', '114.442913', '30.6550254', '1970-01-01 00:00:00', 'uxvzcxfr');
INSERT INTO `gps` VALUES ('354', '359836040135809', '114.4262461', '30.6990311', '1970-01-01 00:00:00', 'uxvzfxfr');
INSERT INTO `gps` VALUES ('355', '359836040135810', '114.469058', '30.6093626', '1970-01-01 00:00:00', 'uxvzbxcp');
INSERT INTO `gps` VALUES ('356', '359836040135811', '114.4711677', '30.6992209', '1970-01-01 00:00:00', 'uxvzfxfr');
INSERT INTO `gps` VALUES ('357', '359836040135812', '114.4455175', '30.6267443', '1970-01-01 00:00:00', 'uxvzbzvx');
INSERT INTO `gps` VALUES ('358', '359836040135813', '114.4846708', '30.6850636', '1970-01-01 00:00:00', 'uxvzfrbp');
INSERT INTO `gps` VALUES ('359', '359836040135814', '114.4617353', '30.6323784', '1970-01-01 00:00:00', 'uxvzcpcz');
INSERT INTO `gps` VALUES ('360', '359836040135815', '114.4983591', '30.6357611', '1970-01-01 00:00:00', 'uxvzcpur');
INSERT INTO `gps` VALUES ('361', '359836040135816', '114.4246438', '30.6478955', '1970-01-01 00:00:00', 'uxvzcrvp');
INSERT INTO `gps` VALUES ('362', '359836040135817', '114.4942899', '30.643105', '1970-01-01 00:00:00', 'uxvzcrcx');
INSERT INTO `gps` VALUES ('363', '359836040135818', '114.4281893', '30.6609932', '1970-01-01 00:00:00', 'uxvzcxyx');
INSERT INTO `gps` VALUES ('364', '359836040135819', '114.4651948', '30.6904657', '1970-01-01 00:00:00', 'uxvzfrup');
INSERT INTO `gps` VALUES ('365', '359836040135820', '114.4908362', '30.6881464', '1970-01-01 00:00:00', 'uxvzfrfr');
INSERT INTO `gps` VALUES ('366', '359836040135821', '114.4263402', '30.6589199', '1970-01-01 00:00:00', 'uxvzcxvp');
INSERT INTO `gps` VALUES ('367', '359836040135822', '114.4580324', '30.6165046', '1970-01-01 00:00:00', 'uxvzbxyr');
INSERT INTO `gps` VALUES ('368', '359836040135823', '114.4693485', '30.6259994', '1970-01-01 00:00:00', 'uxvzbzvp');
INSERT INTO `gps` VALUES ('369', '359836040135824', '114.4748294', '30.6107391', '1970-01-01 00:00:00', 'uxvzbxfp');
INSERT INTO `gps` VALUES ('370', '359836040135825', '114.4555435', '30.6808171', '1970-01-01 00:00:00', 'uxvzfpvp');
INSERT INTO `gps` VALUES ('371', '359836040135826', '114.4392285', '30.6441202', '1970-01-01 00:00:00', 'uxvzcrfr');
INSERT INTO `gps` VALUES ('372', '359836040135827', '114.4775003', '30.620513', '1970-01-01 00:00:00', 'uxvzbzcp');
INSERT INTO `gps` VALUES ('373', '359836040135828', '114.4220762', '30.6624434', '1970-01-01 00:00:00', 'uxvzcxzx');
INSERT INTO `gps` VALUES ('374', '359836040135829', '114.4555566', '30.6618569', '1970-01-01 00:00:00', 'uxvzcxzr');
INSERT INTO `gps` VALUES ('375', '359836040135830', '114.4367305', '30.6740783', '1970-01-01 00:00:00', 'uxvzfpbp');
INSERT INTO `gps` VALUES ('376', '359836040135831', '114.4886736', '30.6127383', '1970-01-01 00:00:00', 'uxvzbxgx');
INSERT INTO `gps` VALUES ('377', '359836040135832', '114.4552944', '30.6767764', '1970-01-01 00:00:00', 'uxvzfpfp');
INSERT INTO `gps` VALUES ('378', '359836040135833', '114.4607655', '30.6520489', '1970-01-01 00:00:00', 'uxvzcxbp');
INSERT INTO `gps` VALUES ('379', '359836040135834', '114.4562023', '30.6973954', '1970-01-01 00:00:00', 'uxvzfxcp');
INSERT INTO `gps` VALUES ('380', '359836040135835', '114.4308241', '30.6860724', '1970-01-01 00:00:00', 'uxvzfrbz');
INSERT INTO `gps` VALUES ('381', '359836040135836', '114.4359936', '30.6973703', '1970-01-01 00:00:00', 'uxvzfxcp');
INSERT INTO `gps` VALUES ('382', '359836040135837', '114.4981271', '30.6898705', '1970-01-01 00:00:00', 'uxvzfrgx');
INSERT INTO `gps` VALUES ('383', '359836040135838', '114.4816366', '30.6711883', '1970-01-01 00:00:00', 'uxvzczyp');
INSERT INTO `gps` VALUES ('384', '359836040135839', '114.4258507', '30.6958914', '1970-01-01 00:00:00', 'uxvzfxbp');
INSERT INTO `gps` VALUES ('385', '359836040135840', '114.4466427', '30.6296876', '1970-01-01 00:00:00', 'uxvzbzzz');
INSERT INTO `gps` VALUES ('386', '359836040135841', '114.4904628', '30.6593626', '1970-01-01 00:00:00', 'uxvzcxvr');
INSERT INTO `gps` VALUES ('387', '359836040135842', '114.4308445', '30.6538646', '1970-01-01 00:00:00', 'uxvzcxcr');
INSERT INTO `gps` VALUES ('388', '359836040135843', '114.4898366', '30.6465822', '1970-01-01 00:00:00', 'uxvzcrup');
INSERT INTO `gps` VALUES ('389', '359836040135844', '114.4929304', '30.6400868', '1970-01-01 00:00:00', 'uxvzcpzr');
INSERT INTO `gps` VALUES ('390', '359836040135845', '114.4268006', '30.6179299', '1970-01-01 00:00:00', 'uxvzbxzr');
INSERT INTO `gps` VALUES ('391', '359836040135846', '114.4348083', '30.6696429', '1970-01-01 00:00:00', 'uxvzczuz');
INSERT INTO `gps` VALUES ('392', '359836040135847', '114.4873921', '30.6291507', '1970-01-01 00:00:00', 'uxvzbzzr');
INSERT INTO `gps` VALUES ('393', '359836040135848', '114.4367939', '30.6363763', '1970-01-01 00:00:00', 'uxvzcpux');
INSERT INTO `gps` VALUES ('394', '359836040135849', '114.4757592', '30.6812648', '1970-01-01 00:00:00', 'uxvzfpvr');
INSERT INTO `gps` VALUES ('395', '359836040135850', '114.4938424', '30.6982744', '1970-01-01 00:00:00', 'uxvzfxcz');
INSERT INTO `gps` VALUES ('396', '359836040135851', '114.4473728', '30.691011', '1970-01-01 00:00:00', 'uxvzfrux');
INSERT INTO `gps` VALUES ('397', '359836040135852', '114.4650314', '30.6715634', '1970-01-01 00:00:00', 'uxvzczyr');
INSERT INTO `gps` VALUES ('398', '359836040135853', '114.4548088', '30.6167454', '1970-01-01 00:00:00', 'uxvzbxyr');
INSERT INTO `gps` VALUES ('399', '359836040135854', '114.4192018', '30.6867012', '1970-01-01 00:00:00', 'uxvzfrcr');
INSERT INTO `gps` VALUES ('400', '359836040135855', '114.4833039', '30.6887021', '1970-01-01 00:00:00', 'uxvzfrfz');
INSERT INTO `gps` VALUES ('401', '359836040135856', '114.4403641', '30.6563906', '1970-01-01 00:00:00', 'uxvzcxgr');
INSERT INTO `gps` VALUES ('402', '359836040135857', '114.4256313', '30.6358712', '1970-01-01 00:00:00', 'uxvzcpur');
INSERT INTO `gps` VALUES ('403', '359836040135858', '114.4666827', '30.6303672', '1970-01-01 00:00:00', 'uxvzcpbr');
INSERT INTO `gps` VALUES ('404', '359836040135859', '114.4871463', '30.6554265', '1970-01-01 00:00:00', 'uxvzcxfx');
INSERT INTO `gps` VALUES ('405', '359836040135860', '114.4767079', '30.6494186', '1970-01-01 00:00:00', 'uxvzcryp');
INSERT INTO `gps` VALUES ('406', '359836040135861', '114.4715309', '30.6504771', '1970-01-01 00:00:00', 'uxvzcryz');
INSERT INTO `gps` VALUES ('407', '359836040135862', '114.4774379', '30.6349773', '1970-01-01 00:00:00', 'uxvzcpgx');
INSERT INTO `gps` VALUES ('408', '359836040135863', '114.4955058', '30.6242456', '1970-01-01 00:00:00', 'uxvzbzgz');
INSERT INTO `gps` VALUES ('409', '359836040135864', '114.4744194', '30.6112759', '1970-01-01 00:00:00', 'uxvzbxfr');
INSERT INTO `gps` VALUES ('410', '359836040135865', '114.4494774', '30.6652409', '1970-01-01 00:00:00', 'uxvzczcx');
INSERT INTO `gps` VALUES ('411', '359836040135866', '114.4347482', '30.6342113', '1970-01-01 00:00:00', 'uxvzcpgp');
INSERT INTO `gps` VALUES ('412', '359836040135867', '114.4369688', '30.6581985', '1970-01-01 00:00:00', 'uxvzcxux');
INSERT INTO `gps` VALUES ('413', '359836040135868', '114.4641302', '30.6896899', '1970-01-01 00:00:00', 'uxvzfrgx');
INSERT INTO `gps` VALUES ('414', '359836040135869', '114.4942553', '30.6366908', '1970-01-01 00:00:00', 'uxvzcpuz');
INSERT INTO `gps` VALUES ('415', '359836040135870', '114.4937406', '30.6303621', '1970-01-01 00:00:00', 'uxvzcpbr');
INSERT INTO `gps` VALUES ('416', '359836040135871', '114.4425437', '30.6300065', '1970-01-01 00:00:00', 'uxvzcpbp');
INSERT INTO `gps` VALUES ('417', '359836040135872', '114.4843662', '30.6126427', '1970-01-01 00:00:00', 'uxvzbxgr');
INSERT INTO `gps` VALUES ('418', '359836040135873', '114.4321139', '30.6383683', '1970-01-01 00:00:00', 'uxvzcpyp');
INSERT INTO `gps` VALUES ('419', '359836040135874', '114.4245785', '30.6714658', '1970-01-01 00:00:00', 'uxvzczyr');
INSERT INTO `gps` VALUES ('420', '359836040135875', '114.4775458', '30.6553945', '1970-01-01 00:00:00', 'uxvzcxfx');
INSERT INTO `gps` VALUES ('421', '359836040135876', '114.499822', '30.6727034', '1970-01-01 00:00:00', 'uxvzczzp');
INSERT INTO `gps` VALUES ('422', '359836040135877', '114.4339936', '30.6703682', '1970-01-01 00:00:00', 'uxvzczvr');
INSERT INTO `gps` VALUES ('423', '359836040135878', '114.4371141', '30.6434528', '1970-01-01 00:00:00', 'uxvzcrcz');
INSERT INTO `gps` VALUES ('424', '359836040135879', '114.4481223', '30.6295502', '1970-01-01 00:00:00', 'uxvzbzzz');
INSERT INTO `gps` VALUES ('425', '359836040135880', '114.4606906', '30.6599223', '1970-01-01 00:00:00', 'uxvzcxvz');
INSERT INTO `gps` VALUES ('426', '359836040135881', '114.4636572', '30.6435243', '1970-01-01 00:00:00', 'uxvzcrcz');
INSERT INTO `gps` VALUES ('427', '359836040135882', '114.4510297', '30.6235767', '1970-01-01 00:00:00', 'uxvzbzgr');
INSERT INTO `gps` VALUES ('428', '359836040135883', '114.4981496', '30.6697342', '1970-01-01 00:00:00', 'uxvzczvp');
INSERT INTO `gps` VALUES ('429', '359836040135884', '114.4193329', '30.6671934', '1970-01-01 00:00:00', 'uxvzczgp');
INSERT INTO `gps` VALUES ('430', '359836040135885', '114.4279825', '30.6730515', '1970-01-01 00:00:00', 'uxvzczzr');
INSERT INTO `gps` VALUES ('431', '359836040135886', '114.4644788', '30.6955268', '1970-01-01 00:00:00', 'uxvzfrzz');
INSERT INTO `gps` VALUES ('432', '359836040135887', '114.4814277', '30.6226299', '1970-01-01 00:00:00', 'uxvzbzfx');
INSERT INTO `gps` VALUES ('433', '359836040135888', '114.4970879', '30.6832915', '1970-01-01 00:00:00', 'uxvzfpyz');
INSERT INTO `gps` VALUES ('434', '359836040135889', '114.4790719', '30.6700966', '1970-01-01 00:00:00', 'uxvzczvr');
INSERT INTO `gps` VALUES ('435', '359836040135890', '114.4850484', '30.6219125', '1970-01-01 00:00:00', 'uxvzbzfp');
INSERT INTO `gps` VALUES ('436', '359836040135891', '114.4511159', '30.6578555', '1970-01-01 00:00:00', 'uxvzcxur');
INSERT INTO `gps` VALUES ('437', '359836040135892', '114.4947951', '30.6102296', '1970-01-01 00:00:00', 'uxvzbxcx');
INSERT INTO `gps` VALUES ('438', '359836040135893', '114.4586792', '30.6137284', '1970-01-01 00:00:00', 'uxvzbxup');
INSERT INTO `gps` VALUES ('439', '359836040135894', '114.4257265', '30.6197814', '1970-01-01 00:00:00', 'uxvzbzbx');
INSERT INTO `gps` VALUES ('440', '359836040135895', '114.4779529', '30.6322686', '1970-01-01 00:00:00', 'uxvzcpcx');
INSERT INTO `gps` VALUES ('441', '359836040135896', '114.4899928', '30.662934', '1970-01-01 00:00:00', 'uxvzczbp');
INSERT INTO `gps` VALUES ('442', '359836040135897', '114.475296', '30.6731577', '1970-01-01 00:00:00', 'uxvzczzx');
INSERT INTO `gps` VALUES ('443', '359836040135898', '114.4210888', '30.6784313', '1970-01-01 00:00:00', 'uxvzfpgr');
INSERT INTO `gps` VALUES ('444', '359836040135899', '114.4970454', '30.6296386', '1970-01-01 00:00:00', 'uxvzbzzz');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pic_url` varchar(100) NOT NULL DEFAULT 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg',
  `sex` int(1) NOT NULL DEFAULT '0' COMMENT '0 女 1男',
  `personal_note` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('351565053248644', 'feicien', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'feicien');
INSERT INTO `user_info` VALUES ('358472045454005', 'guodong', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '1', 'guodong');
INSERT INTO `user_info` VALUES ('358512032147722', 'YY', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'NB');
INSERT INTO `user_info` VALUES ('359836040135646', 'songge', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '1', 'songge');
INSERT INTO `user_info` VALUES ('359836040135647', 'xiaoye', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'xiaoye');
INSERT INTO `user_info` VALUES ('359836040135648', 'qige', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '1', 'qige');
INSERT INTO `user_info` VALUES ('359836040135649', 'weige', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'weige');
INSERT INTO `user_info` VALUES ('359836040135650', 'liuge', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '1', 'liuge');
INSERT INTO `user_info` VALUES ('359836040135651', 'zhangge', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'zhangge');
INSERT INTO `user_info` VALUES ('359836040135652', 'lige', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '1', 'lige');
INSERT INTO `user_info` VALUES ('359836040135653', 'xiaogge', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'xiaoge');
INSERT INTO `user_info` VALUES ('359836040135654', 'xiangge', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '1', 'xiangge');
INSERT INTO `user_info` VALUES ('359836040135700', 'andy0', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_0');
INSERT INTO `user_info` VALUES ('359836040135701', 'andy1', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_1');
INSERT INTO `user_info` VALUES ('359836040135702', 'andy2', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_2');
INSERT INTO `user_info` VALUES ('359836040135703', 'andy3', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_3');
INSERT INTO `user_info` VALUES ('359836040135704', 'andy4', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_4');
INSERT INTO `user_info` VALUES ('359836040135705', 'andy5', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_5');
INSERT INTO `user_info` VALUES ('359836040135706', 'andy6', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_6');
INSERT INTO `user_info` VALUES ('359836040135707', 'andy7', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_7');
INSERT INTO `user_info` VALUES ('359836040135708', 'andy8', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_8');
INSERT INTO `user_info` VALUES ('359836040135709', 'andy9', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_9');
INSERT INTO `user_info` VALUES ('359836040135710', 'andy10', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_10');
INSERT INTO `user_info` VALUES ('359836040135711', 'andy11', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_11');
INSERT INTO `user_info` VALUES ('359836040135712', 'andy12', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_12');
INSERT INTO `user_info` VALUES ('359836040135713', 'andy13', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_13');
INSERT INTO `user_info` VALUES ('359836040135714', 'andy14', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_14');
INSERT INTO `user_info` VALUES ('359836040135715', 'andy15', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_15');
INSERT INTO `user_info` VALUES ('359836040135716', 'andy16', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_16');
INSERT INTO `user_info` VALUES ('359836040135717', 'andy17', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_17');
INSERT INTO `user_info` VALUES ('359836040135718', 'andy18', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_18');
INSERT INTO `user_info` VALUES ('359836040135719', 'andy19', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_19');
INSERT INTO `user_info` VALUES ('359836040135720', 'andy20', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_20');
INSERT INTO `user_info` VALUES ('359836040135721', 'andy21', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_21');
INSERT INTO `user_info` VALUES ('359836040135722', 'andy22', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_22');
INSERT INTO `user_info` VALUES ('359836040135723', 'andy23', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_23');
INSERT INTO `user_info` VALUES ('359836040135724', 'andy24', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_24');
INSERT INTO `user_info` VALUES ('359836040135725', 'andy25', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_25');
INSERT INTO `user_info` VALUES ('359836040135726', 'andy26', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_26');
INSERT INTO `user_info` VALUES ('359836040135727', 'andy27', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_27');
INSERT INTO `user_info` VALUES ('359836040135728', 'andy28', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_28');
INSERT INTO `user_info` VALUES ('359836040135729', 'andy29', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_29');
INSERT INTO `user_info` VALUES ('359836040135730', 'andy30', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_30');
INSERT INTO `user_info` VALUES ('359836040135731', 'andy31', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_31');
INSERT INTO `user_info` VALUES ('359836040135732', 'andy32', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_32');
INSERT INTO `user_info` VALUES ('359836040135733', 'andy33', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_33');
INSERT INTO `user_info` VALUES ('359836040135734', 'andy34', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_34');
INSERT INTO `user_info` VALUES ('359836040135735', 'andy35', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_35');
INSERT INTO `user_info` VALUES ('359836040135736', 'andy36', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_36');
INSERT INTO `user_info` VALUES ('359836040135737', 'andy37', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_37');
INSERT INTO `user_info` VALUES ('359836040135738', 'andy38', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_38');
INSERT INTO `user_info` VALUES ('359836040135739', 'andy39', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_39');
INSERT INTO `user_info` VALUES ('359836040135740', 'andy40', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_40');
INSERT INTO `user_info` VALUES ('359836040135741', 'andy41', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_41');
INSERT INTO `user_info` VALUES ('359836040135742', 'andy42', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_42');
INSERT INTO `user_info` VALUES ('359836040135743', 'andy43', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_43');
INSERT INTO `user_info` VALUES ('359836040135744', 'andy44', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_44');
INSERT INTO `user_info` VALUES ('359836040135745', 'andy45', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_45');
INSERT INTO `user_info` VALUES ('359836040135746', 'andy46', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_46');
INSERT INTO `user_info` VALUES ('359836040135747', 'andy47', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_47');
INSERT INTO `user_info` VALUES ('359836040135748', 'andy48', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_48');
INSERT INTO `user_info` VALUES ('359836040135749', 'andy49', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_49');
INSERT INTO `user_info` VALUES ('359836040135750', 'andy50', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_50');
INSERT INTO `user_info` VALUES ('359836040135751', 'andy51', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_51');
INSERT INTO `user_info` VALUES ('359836040135752', 'andy52', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_52');
INSERT INTO `user_info` VALUES ('359836040135753', 'andy53', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_53');
INSERT INTO `user_info` VALUES ('359836040135754', 'andy54', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_54');
INSERT INTO `user_info` VALUES ('359836040135755', 'andy55', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_55');
INSERT INTO `user_info` VALUES ('359836040135756', 'andy56', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_56');
INSERT INTO `user_info` VALUES ('359836040135757', 'andy57', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_57');
INSERT INTO `user_info` VALUES ('359836040135758', 'andy58', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_58');
INSERT INTO `user_info` VALUES ('359836040135759', 'andy59', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_59');
INSERT INTO `user_info` VALUES ('359836040135760', 'andy60', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_60');
INSERT INTO `user_info` VALUES ('359836040135761', 'andy61', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_61');
INSERT INTO `user_info` VALUES ('359836040135762', 'andy62', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_62');
INSERT INTO `user_info` VALUES ('359836040135763', 'andy63', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_63');
INSERT INTO `user_info` VALUES ('359836040135764', 'andy64', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_64');
INSERT INTO `user_info` VALUES ('359836040135765', 'andy65', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_65');
INSERT INTO `user_info` VALUES ('359836040135766', 'andy66', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_66');
INSERT INTO `user_info` VALUES ('359836040135767', 'andy67', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_67');
INSERT INTO `user_info` VALUES ('359836040135768', 'andy68', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_68');
INSERT INTO `user_info` VALUES ('359836040135769', 'andy69', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_69');
INSERT INTO `user_info` VALUES ('359836040135770', 'andy70', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_70');
INSERT INTO `user_info` VALUES ('359836040135771', 'andy71', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_71');
INSERT INTO `user_info` VALUES ('359836040135772', 'andy72', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_72');
INSERT INTO `user_info` VALUES ('359836040135773', 'andy73', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_73');
INSERT INTO `user_info` VALUES ('359836040135774', 'andy74', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_74');
INSERT INTO `user_info` VALUES ('359836040135775', 'andy75', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_75');
INSERT INTO `user_info` VALUES ('359836040135776', 'andy76', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_76');
INSERT INTO `user_info` VALUES ('359836040135777', 'andy77', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_77');
INSERT INTO `user_info` VALUES ('359836040135778', 'andy78', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_78');
INSERT INTO `user_info` VALUES ('359836040135779', 'andy79', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_79');
INSERT INTO `user_info` VALUES ('359836040135780', 'andy80', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_80');
INSERT INTO `user_info` VALUES ('359836040135781', 'andy81', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_81');
INSERT INTO `user_info` VALUES ('359836040135782', 'andy82', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_82');
INSERT INTO `user_info` VALUES ('359836040135783', 'andy83', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_83');
INSERT INTO `user_info` VALUES ('359836040135784', 'andy84', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_84');
INSERT INTO `user_info` VALUES ('359836040135785', 'andy85', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_85');
INSERT INTO `user_info` VALUES ('359836040135786', 'andy86', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_86');
INSERT INTO `user_info` VALUES ('359836040135787', 'andy87', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_87');
INSERT INTO `user_info` VALUES ('359836040135788', 'andy88', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_88');
INSERT INTO `user_info` VALUES ('359836040135789', 'andy89', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_89');
INSERT INTO `user_info` VALUES ('359836040135790', 'andy90', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_90');
INSERT INTO `user_info` VALUES ('359836040135791', 'andy91', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_91');
INSERT INTO `user_info` VALUES ('359836040135792', 'andy92', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_92');
INSERT INTO `user_info` VALUES ('359836040135793', 'andy93', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_93');
INSERT INTO `user_info` VALUES ('359836040135794', 'andy94', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_94');
INSERT INTO `user_info` VALUES ('359836040135795', 'andy95', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_95');
INSERT INTO `user_info` VALUES ('359836040135796', 'andy96', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_96');
INSERT INTO `user_info` VALUES ('359836040135797', 'andy97', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_97');
INSERT INTO `user_info` VALUES ('359836040135798', 'andy98', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_98');
INSERT INTO `user_info` VALUES ('359836040135799', 'andy99', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_99');
INSERT INTO `user_info` VALUES ('359836040135800', 'andy100', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_100');
INSERT INTO `user_info` VALUES ('359836040135801', 'andy101', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_101');
INSERT INTO `user_info` VALUES ('359836040135802', 'andy102', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_102');
INSERT INTO `user_info` VALUES ('359836040135803', 'andy103', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_103');
INSERT INTO `user_info` VALUES ('359836040135804', 'andy104', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_104');
INSERT INTO `user_info` VALUES ('359836040135805', 'andy105', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_105');
INSERT INTO `user_info` VALUES ('359836040135806', 'andy106', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_106');
INSERT INTO `user_info` VALUES ('359836040135807', 'andy107', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_107');
INSERT INTO `user_info` VALUES ('359836040135808', 'andy108', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_108');
INSERT INTO `user_info` VALUES ('359836040135809', 'andy109', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_109');
INSERT INTO `user_info` VALUES ('359836040135810', 'andy110', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_110');
INSERT INTO `user_info` VALUES ('359836040135811', 'andy111', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_111');
INSERT INTO `user_info` VALUES ('359836040135812', 'andy112', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_112');
INSERT INTO `user_info` VALUES ('359836040135813', 'andy113', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_113');
INSERT INTO `user_info` VALUES ('359836040135814', 'andy114', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_114');
INSERT INTO `user_info` VALUES ('359836040135815', 'andy115', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_115');
INSERT INTO `user_info` VALUES ('359836040135816', 'andy116', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_116');
INSERT INTO `user_info` VALUES ('359836040135817', 'andy117', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_117');
INSERT INTO `user_info` VALUES ('359836040135818', 'andy118', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_118');
INSERT INTO `user_info` VALUES ('359836040135819', 'andy119', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_119');
INSERT INTO `user_info` VALUES ('359836040135820', 'andy120', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_120');
INSERT INTO `user_info` VALUES ('359836040135821', 'andy121', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_121');
INSERT INTO `user_info` VALUES ('359836040135822', 'andy122', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_122');
INSERT INTO `user_info` VALUES ('359836040135823', 'andy123', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_123');
INSERT INTO `user_info` VALUES ('359836040135824', 'andy124', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_124');
INSERT INTO `user_info` VALUES ('359836040135825', 'andy125', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_125');
INSERT INTO `user_info` VALUES ('359836040135826', 'andy126', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_126');
INSERT INTO `user_info` VALUES ('359836040135827', 'andy127', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_127');
INSERT INTO `user_info` VALUES ('359836040135828', 'andy128', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_128');
INSERT INTO `user_info` VALUES ('359836040135829', 'andy129', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_129');
INSERT INTO `user_info` VALUES ('359836040135830', 'andy130', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_130');
INSERT INTO `user_info` VALUES ('359836040135831', 'andy131', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_131');
INSERT INTO `user_info` VALUES ('359836040135832', 'andy132', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_132');
INSERT INTO `user_info` VALUES ('359836040135833', 'andy133', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_133');
INSERT INTO `user_info` VALUES ('359836040135834', 'andy134', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_134');
INSERT INTO `user_info` VALUES ('359836040135835', 'andy135', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_135');
INSERT INTO `user_info` VALUES ('359836040135836', 'andy136', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_136');
INSERT INTO `user_info` VALUES ('359836040135837', 'andy137', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_137');
INSERT INTO `user_info` VALUES ('359836040135838', 'andy138', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_138');
INSERT INTO `user_info` VALUES ('359836040135839', 'andy139', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_139');
INSERT INTO `user_info` VALUES ('359836040135840', 'andy140', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_140');
INSERT INTO `user_info` VALUES ('359836040135841', 'andy141', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_141');
INSERT INTO `user_info` VALUES ('359836040135842', 'andy142', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_142');
INSERT INTO `user_info` VALUES ('359836040135843', 'andy143', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_143');
INSERT INTO `user_info` VALUES ('359836040135844', 'andy144', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_144');
INSERT INTO `user_info` VALUES ('359836040135845', 'andy145', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_145');
INSERT INTO `user_info` VALUES ('359836040135846', 'andy146', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_146');
INSERT INTO `user_info` VALUES ('359836040135847', 'andy147', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_147');
INSERT INTO `user_info` VALUES ('359836040135848', 'andy148', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_148');
INSERT INTO `user_info` VALUES ('359836040135849', 'andy149', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_149');
INSERT INTO `user_info` VALUES ('359836040135850', 'andy150', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_150');
INSERT INTO `user_info` VALUES ('359836040135851', 'andy151', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_151');
INSERT INTO `user_info` VALUES ('359836040135852', 'andy152', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_152');
INSERT INTO `user_info` VALUES ('359836040135853', 'andy153', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_153');
INSERT INTO `user_info` VALUES ('359836040135854', 'andy154', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_154');
INSERT INTO `user_info` VALUES ('359836040135855', 'andy155', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_155');
INSERT INTO `user_info` VALUES ('359836040135856', 'andy156', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_156');
INSERT INTO `user_info` VALUES ('359836040135857', 'andy157', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_157');
INSERT INTO `user_info` VALUES ('359836040135858', 'andy158', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_158');
INSERT INTO `user_info` VALUES ('359836040135859', 'andy159', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_159');
INSERT INTO `user_info` VALUES ('359836040135860', 'andy160', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_160');
INSERT INTO `user_info` VALUES ('359836040135861', 'andy161', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_161');
INSERT INTO `user_info` VALUES ('359836040135862', 'andy162', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_162');
INSERT INTO `user_info` VALUES ('359836040135863', 'andy163', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_163');
INSERT INTO `user_info` VALUES ('359836040135864', 'andy164', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_164');
INSERT INTO `user_info` VALUES ('359836040135865', 'andy165', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_165');
INSERT INTO `user_info` VALUES ('359836040135866', 'andy166', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_166');
INSERT INTO `user_info` VALUES ('359836040135867', 'andy167', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_167');
INSERT INTO `user_info` VALUES ('359836040135868', 'andy168', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_168');
INSERT INTO `user_info` VALUES ('359836040135869', 'andy169', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_169');
INSERT INTO `user_info` VALUES ('359836040135870', 'andy170', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_170');
INSERT INTO `user_info` VALUES ('359836040135871', 'andy171', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_171');
INSERT INTO `user_info` VALUES ('359836040135872', 'andy172', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_172');
INSERT INTO `user_info` VALUES ('359836040135873', 'andy173', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_173');
INSERT INTO `user_info` VALUES ('359836040135874', 'andy174', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_174');
INSERT INTO `user_info` VALUES ('359836040135875', 'andy175', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_175');
INSERT INTO `user_info` VALUES ('359836040135876', 'andy176', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_176');
INSERT INTO `user_info` VALUES ('359836040135877', 'andy177', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_177');
INSERT INTO `user_info` VALUES ('359836040135878', 'andy178', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_178');
INSERT INTO `user_info` VALUES ('359836040135879', 'andy179', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_179');
INSERT INTO `user_info` VALUES ('359836040135880', 'andy180', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_180');
INSERT INTO `user_info` VALUES ('359836040135881', 'andy181', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_181');
INSERT INTO `user_info` VALUES ('359836040135882', 'andy182', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_182');
INSERT INTO `user_info` VALUES ('359836040135883', 'andy183', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_183');
INSERT INTO `user_info` VALUES ('359836040135884', 'andy184', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_184');
INSERT INTO `user_info` VALUES ('359836040135885', 'andy185', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_185');
INSERT INTO `user_info` VALUES ('359836040135886', 'andy186', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_186');
INSERT INTO `user_info` VALUES ('359836040135887', 'andy187', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_187');
INSERT INTO `user_info` VALUES ('359836040135888', 'andy188', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_188');
INSERT INTO `user_info` VALUES ('359836040135889', 'andy189', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_189');
INSERT INTO `user_info` VALUES ('359836040135890', 'andy190', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_190');
INSERT INTO `user_info` VALUES ('359836040135891', 'andy191', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_191');
INSERT INTO `user_info` VALUES ('359836040135892', 'andy192', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_192');
INSERT INTO `user_info` VALUES ('359836040135893', 'andy193', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_193');
INSERT INTO `user_info` VALUES ('359836040135894', 'andy194', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_194');
INSERT INTO `user_info` VALUES ('359836040135895', 'andy195', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_195');
INSERT INTO `user_info` VALUES ('359836040135896', 'andy196', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_196');
INSERT INTO `user_info` VALUES ('359836040135897', 'andy197', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_197');
INSERT INTO `user_info` VALUES ('359836040135898', 'andy198', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_198');
INSERT INTO `user_info` VALUES ('359836040135899', 'andy199', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'andy_199');
INSERT INTO `user_info` VALUES ('861344022478010', 'weiwei', 'http://www.eoeandroid.com/uc_server/data/avatar/000/58/59/95_avatar_small.jpg', '0', 'weiwei');

-- ----------------------------
-- Function structure for `CustomerLevel`
-- ----------------------------
DROP FUNCTION IF EXISTS `CustomerLevel`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CustomerLevel`(`p_creditLimit` double) RETURNS varchar(10) CHARSET utf8
BEGIN
	#Routine body goes here...
	DECLARE lvl VARCHAR(10);
	IF p_creditLimit > 50000 THEN
			SET lvl = 'PLATINUM';
	ELSEIF (p_creditLimit <= 50000 AND p_creditLimit >= 10000) THEN
			SET lvl = 'GOLD';
	ELSEIF p_creditLimit < 10000 THEN
			SET lvl = 'SILVER';
	END IF;
	RETURN(lvl);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `geohash_base32`
-- ----------------------------
DROP FUNCTION IF EXISTS `geohash_base32`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `geohash_base32`(
    _index TINYINT UNSIGNED
) RETURNS char(1) CHARSET gb2312
    NO SQL
    DETERMINISTIC
    COMMENT 'geohash_base32(0) => "0", geohash_base32(31) => "z"'
BEGIN
    DECLARE ch CHAR(1) DEFAULT NULL;

    CASE _index
        WHEN 0 THEN SET ch = '0';
        WHEN 1 THEN SET ch = '1';
        WHEN 2 THEN SET ch = '2';
        WHEN 3 THEN SET ch = '3';
        WHEN 4 THEN SET ch = '4';
        WHEN 5 THEN SET ch = '5';
        WHEN 6 THEN SET ch = '6';
        WHEN 7 THEN SET ch = '7';
        WHEN 8 THEN SET ch = '8';
        WHEN 9 THEN SET ch = '9';
        WHEN 10 THEN SET ch = 'b';
        WHEN 11 THEN SET ch = 'c';
        WHEN 12 THEN SET ch = 'd';
        WHEN 13 THEN SET ch = 'e';
        WHEN 14 THEN SET ch = 'f';
        WHEN 15 THEN SET ch = 'g';
        WHEN 16 THEN SET ch = 'h';
        WHEN 17 THEN SET ch = 'j';
        WHEN 18 THEN SET ch = 'k';
        WHEN 19 THEN SET ch = 'm';
        WHEN 20 THEN SET ch = 'n';
        WHEN 21 THEN SET ch = 'p';
        WHEN 22 THEN SET ch = 'q';
        WHEN 23 THEN SET ch = 'r';
        WHEN 24 THEN SET ch = 's';
        WHEN 25 THEN SET ch = 't';
        WHEN 26 THEN SET ch = 'u';
        WHEN 27 THEN SET ch = 'v';
        WHEN 28 THEN SET ch = 'w';
        WHEN 29 THEN SET ch = 'x';
        WHEN 30 THEN SET ch = 'y';
        WHEN 31 THEN SET ch = 'z';
    END CASE;

    RETURN ch;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `geohash_base32_index`
-- ----------------------------
DROP FUNCTION IF EXISTS `geohash_base32_index`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `geohash_base32_index`(
    _ch CHAR(1)
) RETURNS tinyint(3) unsigned
    NO SQL
    DETERMINISTIC
    COMMENT 'geohash_base32_index("b") => 10, geohash_base32_index("z") => 31'
BEGIN
    DECLARE idx TINYINT UNSIGNED DEFAULT NULL;

    CASE _ch
        WHEN '0' THEN SET idx = 0;
        WHEN '1' THEN SET idx = 1;
        WHEN '2' THEN SET idx = 2;
        WHEN '3' THEN SET idx = 3;
        WHEN '4' THEN SET idx = 4;
        WHEN '5' THEN SET idx = 5;
        WHEN '6' THEN SET idx = 6;
        WHEN '7' THEN SET idx = 7;
        WHEN '8' THEN SET idx = 8;
        WHEN '9' THEN SET idx = 9;
        WHEN 'b' THEN SET idx = 10;
        WHEN 'c' THEN SET idx = 11;
        WHEN 'd' THEN SET idx = 12;
        WHEN 'e' THEN SET idx = 13;
        WHEN 'f' THEN SET idx = 14;
        WHEN 'g' THEN SET idx = 15;
        WHEN 'h' THEN SET idx = 16;
        WHEN 'j' THEN SET idx = 17;
        WHEN 'k' THEN SET idx = 18;
        WHEN 'm' THEN SET idx = 19;
        WHEN 'n' THEN SET idx = 20;
        WHEN 'p' THEN SET idx = 21;
        WHEN 'q' THEN SET idx = 22;
        WHEN 'r' THEN SET idx = 23;
        WHEN 's' THEN SET idx = 24;
        WHEN 't' THEN SET idx = 25;
        WHEN 'u' THEN SET idx = 26;
        WHEN 'v' THEN SET idx = 27;
        WHEN 'w' THEN SET idx = 28;
        WHEN 'x' THEN SET idx = 29;
        WHEN 'y' THEN SET idx = 30;
        WHEN 'z' THEN SET idx = 31;
    END CASE;

    RETURN idx;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `geohash_bit`
-- ----------------------------
DROP FUNCTION IF EXISTS `geohash_bit`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `geohash_bit`(
    _bit TINYINT UNSIGNED
) RETURNS tinyint(3) unsigned
    NO SQL
    DETERMINISTIC
    COMMENT 'geohash_bit(0) => 16, geohash_bit(1) => 8'
BEGIN
    DECLARE bit TINYINT UNSIGNED DEFAULT NULL;

    CASE _bit
        WHEN 0 THEN SET bit = 16;
        WHEN 1 THEN SET bit = 8;
        WHEN 2 THEN SET bit = 4;
        WHEN 3 THEN SET bit = 2;
        WHEN 4 THEN SET bit = 1;
    END CASE;

    RETURN bit;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `geohash_decode`
-- ----------------------------
DROP FUNCTION IF EXISTS `geohash_decode`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `geohash_decode`(
    _geohash VARCHAR(12)
) RETURNS char(77) CHARSET gb2312
    NO SQL
    DETERMINISTIC
    COMMENT 'geohash_decode(u4pru) => csv'
BEGIN
    DECLARE latL DOUBLE(10, 7) DEFAULT -90.0;
    DECLARE latR DOUBLE(10, 7) DEFAULT 90.0;

    DECLARE lonT DOUBLE(10, 7) DEFAULT -180.0;
    DECLARE lonB DOUBLE(10, 7) DEFAULT 180.0;

    DECLARE lat_err DOUBLE(10, 7) DEFAULT 90.0;
    DECLARE lon_err DOUBLE(10, 7) DEFAULT 180.0;

    DECLARE ch CHAR(1) DEFAULT '';
    DECLARE ch_pos INT UNSIGNED DEFAULT 0;

    DECLARE even TINYINT UNSIGNED DEFAULT 1;
    DECLARE geohash_length TINYINT UNSIGNED DEFAULT 0;
    DECLARE geohash_pos TINYINT UNSIGNED DEFAULT 0;
    DECLARE pos TINYINT UNSIGNED DEFAULT 0;

    DECLARE mask TINYINT UNSIGNED DEFAULT 0;
    DECLARE masked_val TINYINT UNSIGNED DEFAULT 0;

    DECLARE buf VARCHAR(77) DEFAULT '';

    SET geohash_length = LENGTH(_geohash);

    WHILE geohash_pos < geohash_length DO
        SET ch = geohash_base32(geohash_pos);
        SET ch_pos = geohash_base32_index(ch);

        SET pos = 0;
        WHILE pos < 5 DO
            SET mask = geohash_bit(pos);
            SET masked_val = ch_pos & mask;

            IF even = 1 THEN
                SET lon_err = lon_err / 2;

                IF masked_val != 0 THEN
                    SET lonT = (lonT + lonB) / 2;
                ELSE
                    SET lonB = (lonT + lonB) / 2;
                END IF;
            ELSE
                SET lat_err = lat_err / 2;

                IF masked_val != 0 THEN
                    SET latL = (latL + latR) / 2;
                ELSE
                    SET latR = (latL + latR) / 2;
                END IF;
            END IF;
            
            SET even = !even;
            SET pos = pos + 1;
        END WHILE;

        SET geohash_pos = geohash_pos + 1;
    END WHILE;

    SET lat_err = (latL + latR) / 2;
    SET lon_err = (lonT + lonB) / 2;

    /*
    IF _column_output = 1 THEN
        SELECT latL AS 'latitude', lonT AS 'longitude'
        UNION ALL
        SELECT latR AS 'latitude', lonB AS 'longitude'
        UNION ALL
        SELECT lat_err AS 'latitude', lon_err AS 'longitude';
    END IF;
    */

    SET buf = CONCAT(buf, latL, ',', lonT);
    SET buf = CONCAT(buf, '\n');
    SET buf = CONCAT(buf, latR, ',', lonB);
    SET buf = CONCAT(buf, '\n');
    SET buf = CONCAT(buf, lat_err, ',', lon_err);

    RETURN buf;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `geohash_encode`
-- ----------------------------
DROP FUNCTION IF EXISTS `geohash_encode`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `geohash_encode`(_latitude DOUBLE(10, 7),
    _longitude DOUBLE(10, 7),
    _precision int) RETURNS varchar(12) CHARSET gb2312
    COMMENT 'geohash_encode(57.64911, 10.40744, 12) => u4pruydqquvx'
BEGIN
    DECLARE latL DOUBLE(10, 7) DEFAULT -90.0;
    DECLARE latR DOUBLE(10, 7) DEFAULT 90.0;

    DECLARE lonT DOUBLE(10, 7) DEFAULT -180.0;
    DECLARE lonB DOUBLE(10, 7) DEFAULT 180.0;

    DECLARE bit TINYINT UNSIGNED DEFAULT 0;
    DECLARE bit_pos TINYINT UNSIGNED DEFAULT 0;
    DECLARE ch CHAR(1) DEFAULT '';
    DECLARE ch_pos INT UNSIGNED DEFAULT 0;
    DECLARE mid DOUBLE(10, 7) DEFAULT NULL;

    DECLARE even TINYINT UNSIGNED DEFAULT 1;
    DECLARE geohash VARCHAR(12) DEFAULT '';
    DECLARE geohash_length TINYINT UNSIGNED DEFAULT 0;

    /*
    CREATE TEMPORARY TABLE `TMP_BIT` (`pos` TINYINT UNSIGNED, `val` TINYINT UNSIGNED) ENGINE=MEMORY;
    CREATE TEMPORARY TABLE `TMP_BASE32` (`pos` TINYINT UNSIGNED, `val` CHAR(1)) ENGINE=MEMORY;

    INSERT INTO `TMP_BIT` (`pos`, `val`) VALUES (0, 16), (1, 8), (2, 4), (3, 2), (4, 1);
    INSERT INTO `TMP_BASE32` (`pos`, `val`) VALUES
        (0, '0'), (1, '1'), (2, '2'), (3, '3'), (4, '4'),
        (5, '5'), (6, '6'), (7, '7'), (8, '8'), (9, '9'),
        (10, 'b'), (11, 'c'), (12, 'd'), (13, 'e'), (14, 'f'),
        (15, 'g'), (16, 'h'), (17, 'j'), (18, 'k'), (19, 'm'),
        (20, 'n'), (21, 'p'), (22, 'q'), (23, 'r'), (24, 's'),
        (25, 't'), (26, 'u'), (27, 'v'), (28, 'w'), (29, 'x'),
        (30, 'y'), (31, 'z');
    */

    IF _precision IS NULL THEN
        SET _precision = 12;
    END IF;

    WHILE geohash_length < _precision DO
        IF even = 1 THEN
            --
            -- is even
            --
            
            SET mid = (lonT + lonB) / 2;
            IF mid < _longitude THEN
                SET bit = geohash_bit(bit_pos);
                /*
                 * SELECT `val` INTO bit FROM `TMP_BIT` WHERE `pos` = bit_pos;
                 */
                SET ch_pos = ch_pos | bit;
                SET lonT = mid;
            ELSE
                SET lonB = mid;
            END IF;
        ELSE
            --
            -- not even
            --
            
            SET mid = (latL + latR) / 2;
            IF mid < _latitude THEN
                SET bit = geohash_bit(bit_pos);
                /*
                 * SELECT `val` INTO bit FROM `TMP_BIT` WHERE `pos` = bit_pos;
                 */
                SET ch_pos = ch_pos | bit;
                SET latL = mid;
            ELSE
                SET latR = mid;
            END IF;
        END IF;

        -- toggle even
        SET even = !even;

        IF bit_pos < 4 THEN
            SET bit_pos = bit_pos + 1;
        ELSE
            SET ch = geohash_base32(ch_pos);
            /*
             * SELECT `val` INTO ch FROM `TMP_BASE32` WHERE `pos` = ch_pos;
             */
            SET geohash = CONCAT(geohash, ch);
            SET bit_pos = 0;
            SET ch_pos = 0;
        END IF;

        SET geohash_length = LENGTH(geohash);
    END WHILE;

    /*
    DROP TEMPORARY TABLE IF EXISTS `TMP_BIT`;
    DROP TEMPORARY TABLE IF EXISTS `TMP_BASE32`;
    */

    RETURN geohash;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `getdistance`
-- ----------------------------
DROP FUNCTION IF EXISTS `getdistance`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getdistance`(`lat1` double,`lng1` double,`lat2` double,`lng2` double) RETURNS double
BEGIN
	#Routine body goes here...
	DECLARE RAD DOUBLE;
	DECLARE EARTH_RADIUS DOUBLE DEFAULT 6378137;
	DECLARE radLat1 DOUBLE;
	DECLARE radLat2 DOUBLE;
	DECLARE radLng1 DOUBLE;
	DECLARE radLng2 DOUBLE;
	DECLARE s DOUBLE;
	SET RAD = PI() / 180.0;
	SET radLat1 = lat1 * RAD;
	SET radLat2 = lat2 * RAD;
	SET radLng1 = lng1 * RAD;
	SET radLng2 = lng2 * RAD;
	SET s = ACOS(COS(radLat1)*COS(radLat2)*COS(radLng1-radLng2)+SIN(radLat1)*SIN(radLat2))*EARTH_RADIUS;
	SET s = ROUND(s * 10000) / 10000;
	RETURN s;
END
;;
DELIMITER ;
