/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : daftar

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 05/09/2020 19:08:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nilai_ijazah
-- ----------------------------
DROP TABLE IF EXISTS `nilai_ijazah`;
CREATE TABLE `nilai_ijazah`  (
  `id_ijazah` bigint(11) NOT NULL AUTO_INCREMENT,
  `nisn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nilai_ujian_bindo` int(11) NOT NULL,
  `nilai_ujian_bing` int(11) NOT NULL,
  `nilai_ujian_ipa` int(11) NOT NULL,
  `nilai_ujian_ips` int(11) NOT NULL,
  `nilai_ujian_mmtk` int(11) NOT NULL,
  `nilai_hasil_akhir` int(11) NOT NULL,
  `keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_ijazah`) USING BTREE,
  UNIQUE INDEX `nisn_2`(`nisn`) USING BTREE,
  INDEX `nisn`(`nisn`) USING BTREE,
  INDEX `nisn_3`(`nisn`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of nilai_ijazah
-- ----------------------------
INSERT INTO `nilai_ijazah` VALUES (111, '123', 85, 0, 75, 0, 70, 46, 'Saw :92.986111111111');
INSERT INTO `nilai_ijazah` VALUES (112, '1234', 90, 0, 55, 0, 77, 92, 'Anda Masuk Unggulan<br>Dengan Nilai Saw : 92');
INSERT INTO `nilai_ijazah` VALUES (113, '12345', 75, 0, 70, 0, 70, 90, 'Anda Masuk Unggulan<br>Dengan Nilai Saw : 89.742424242424');

-- ----------------------------
-- Table structure for pendaftaran
-- ----------------------------
DROP TABLE IF EXISTS `pendaftaran`;
CREATE TABLE `pendaftaran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `menu` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pendaftaran
-- ----------------------------
INSERT INTO `pendaftaran` VALUES (1, '<div class=\'col-lg-8 col-md-8 col-sm-8 col-xs-12\'>\n        <div class=\'row\'>\n            <div class=\'col-lg-12 col-md-12 col-sm-12 col-xs-12\'>\n                <h1>Form Pendaftaran</h1>\n                    <p> Please complete the form below. We\'ll do everything we can to respond to you as quickly as possible.</p>\n                        <form method=\'post\' action=\'\'>\n                                <div class=\'row\'>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>nisn*</label>\n                                        <input type=\'text\' name=\'nisn\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>nama*</label>\n                                        <input type=\'text\' name=\'nama\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>tempat lahir*</label>\n                                        <input type=\'text\' name=\'tmpt_lhir\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>jenis kelamin*</label>\n                                        <select class=\'form-control\' name=\'jenis_kelamin\' required>\n                                            <option value=\'Laki-Laki\'>Laki-Laki</option>\n                                            <option value=\'Perempuan\'>Perempuan</option>\n                                        </select>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>tanggal lahir*</label>\n                                        <div class=\'datepicker-center\'>\n                                            <div class=\'input-group date \' data-date=\'\' data-date-format=\'yyyy-mm-dd\'>\n                                                <span class=\'input-group-addon\'><i class=\'glyphicon glyphicon-calendar\'></i></span>\n                                                <input class=\'form-control\' type=\'text\' name=\'tgl_regis\' readonly=\'readonly\'>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    \n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>agama*</label>\n                                        <select class=\'form-control\' name=\'agama\' required>\n                                            <option value=\'Islam\'>Islam</option>\n                                            <option value=\'Khatolik\'>Khatolik</option>\n                                            <option value=\'Protestan\'>Protestan</option>\n                                            <option value=\'Hindu\'>Hindu</option>\n                                            <option value=\'Budha\'>Budha</option>\n                                        </select>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>anak ke</label>\n                                        <input type=\'number\' name=\'ank_ke\' placeholder=\'\' class=\'form-control\'>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>jumlah saudara</label>\n                                        <input type=\'number\' name=\'jml_saudara\' placeholder=\'\' class=\'form-control\'>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Alamat Siswa*</label>\n                                        <textarea class=\'form-control\' name=\'almt_siswa\' rows=\'6\' placeholder=\'\' required></textarea>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>No. HP Siswa*</label>\n                                        <input type=\'tel\' name=\'hp_siswa\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Berat Badan</label>\n                                        <input type=\'number\' name=\'brt_badan\' placeholder=\'\' class=\'form-control\'>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Tinggi Badan</label>\n                                        <input type=\'number\' name=\'tgi_badan\' placeholder=\'\' class=\'form-control\'>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Gol. Darah</label>\n                                        <select class=\'form-control\' name=\'gol_darah\'>\n                                            <option value=\'A\'>A</option>\n                                            <option value=\'B\'>B</option>\n                                            <option value=\'AB\'>AB</option>\n                                            <option value=\'O\'>O</option>\n                                        </select>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Alamat Sekolah</label>\n                                        <textarea class=\'form-control\' name=\'almt_sekolah\' rows=\'6\' placeholder=\'\'></textarea>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Asal Sekolah*</label>\n                                        <input type=\'text\' name=\'asal_sekolah\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    \n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Nama Ayah*</label>\n                                        <input type=\'text\' name=\'nama_ayah\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Alamat Orang Tua*</label>\n                                        <textarea class=\'form-control\' name=\'almt_ortu\' rows=\'6\' placeholder=\'\' required></textarea>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Nama Ibu*</label>\n                                        <input type=\'text\' name=\'nama_ibu\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>No. HP Orang Tua*</label>\n                                        <input type=\'tel\' name=\'hp_ortu\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Pekerjaan Ayah*</label>\n                                        <input type=\'text\' name=\'kerja_ayah\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Pekerjaan Ibu*</label>\n                                        <input type=\'text\' name=\'kerja_ibu\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Penghasilan Orang Tua*</label>\n                                        <input type=\'number\' name=\'penghasilan_ortu\' placeholder=\'\' class=\'form-control\' required>\n                                    </div>\n                                    <div class=\'col-md-6\'>\n                                        <label class=\'control-label\'>Tanggungan Anak</label>\n                                        <input type=\'number\' name=\'tggungan\' placeholder=\'\' class=\'form-control\'>\n                                    </div>\n                                    <div class=\'col-md-12\'>\n                                        <div class=\'form-group\'>\n                                            <input name=\'singlebutton\' class=\'btn btn-default\' type=\'submit\' value=\'Daftar\'>\n                                        </div>\n                                    </div>\n                                </div>\n                            </form>\n                        </div>\n                    </div>\n                </div>', 'daftar');
INSERT INTO `pendaftaran` VALUES (2, '<div class=\"col-lg-8 col-md-8 col-sm-8 col-xs-12\">\r\n<div class=\"row\">\r\n<div class=\'col-lg-12 col-md-12 col-sm-12 col-xs-12\'>\r\n                <h1>Pendaftar Tahun Ajaran 2020/2020</h1>\r\n                    <p> Thank you for your submit.</p>             <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">                 <table class=\'table table-striped\'>                 <thead>                     <tr>                         \r\n<th>No.</th>\r\n<th>NISN</th>                         <th>Nama</th>                         <th>Asal Sekolah</th>                     </tr>                 </thead>         <tbody>', 'lht_pndftr');
INSERT INTO `pendaftaran` VALUES (3, '<div class=\"col-lg-8 col-md-8 col-sm-8 col-xs-12\">\r\n    <div class=\"row\">\r\n        <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\r\n            <h1>Kirim Pesan Anda Untuk Kami</h1>\r\n            <p> Please complete the form below. We\'ll do everything we can to respond to you as quickly as possible.</p>\r\n                <form method=\"post\" action=\"\">\r\n                    <div class=\"row\">\r\n                        <div class=\"col-md-6\">\r\n                            <label class=\"control-label\" for=\"email\">email</label>\r\n                            <input type=\"email\" name=\"email\" id=\"email\" placeholder=\"\" class=\"form-control\" required>\r\n                        </div>\r\n                        <div class=\"col-md-6\">\r\n                            <label class=\"control-label\" for=\"Subject\">Subject</label>\r\n                            <input type=\"text\" name=\"Subject\" id=\"Subject\" placeholder=\"\" class=\"form-control\" required>\r\n                        </div>\r\n                        <div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\">\r\n                            <div class=\"form-group\">\r\n                                <label class=\"control-label\" for=\"textarea\">Message</label>\r\n                                <textarea class=\"form-control\" id=\"textarea\" name=\"textarea\" rows=\"6\" placeholder=\"\" required></textarea>\r\n                            </div>\r\n                        </div>\r\n                        <div class=\"col-md-12\">\r\n                             <div class=\"form-group\">\r\n                                    <input name=\"singlebutton\" class=\"btn btn-default\" type=\"submit\" value=\"Kirim\">\r\n                            </div>\r\n                        </div>\r\n                    </div>\r\n                </form>\r\n            </div>\r\n        </div>\r\n    </div>', 'krm_pesan');

-- ----------------------------
-- Table structure for pesan_peserta
-- ----------------------------
DROP TABLE IF EXISTS `pesan_peserta`;
CREATE TABLE `pesan_peserta`  (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `subject` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pesan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id_pesan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for peserta_pendaftar
-- ----------------------------
DROP TABLE IF EXISTS `peserta_pendaftar`;
CREATE TABLE `peserta_pendaftar`  (
  `nisn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `agama` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `jml_saudara` int(11) NOT NULL,
  `hp_siswa` int(11) NOT NULL,
  `alamat_siswa` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `gol_darah` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `asal_sekolah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_sekolah` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ayah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ibu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_ortu` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `hp_ortu` int(11) NOT NULL,
  `kerja_ayah` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kerja_ibu` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penghasilan_ortu` bigint(11) NOT NULL,
  `tanggungan_anak` int(11) NOT NULL,
  `tahun` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`nisn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of peserta_pendaftar
-- ----------------------------
INSERT INTO `peserta_pendaftar` VALUES ('123', 'wawan', 'TUBAN', '2020-09-15', 'Laki-Laki', 'Islam', 2, 2, 87, 'AA', 8, 8, 'A', 'ALA', '                                        ALAMAT                                    ', 'AYAH', 'K', '                                        A                                    ', 87876, 'KJD', 'KDJF', 78787, 1, '2017');
INSERT INTO `peserta_pendaftar` VALUES ('1234', 'topek', 'DD', '2020-09-02', 'Laki-Laki', 'Islam', 6, 2, 44, '8', 77, 77, 'A', 'AD', '                                        ALA                                    ', 'DK', 'DK', '                                        DK                                    ', 9878, 'KJK', 'DK', 878, 878, '2017');
INSERT INTO `peserta_pendaftar` VALUES ('12345', 'adi', 'bojonegoro', '2020-09-02', 'Laki-Laki', 'Islam', 1, 2, 6767, 'alamat', 8, 8, 'A', 'asal sekolah', 'sekolah', 'ayah', 'ibu', 'alamat ortu', 86766, 'tani', 'tani', 7676, 6, '2017');

-- ----------------------------
-- Table structure for tahun_ajaran
-- ----------------------------
DROP TABLE IF EXISTS `tahun_ajaran`;
CREATE TABLE `tahun_ajaran`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tahun_ajaran
-- ----------------------------
INSERT INTO `tahun_ajaran` VALUES (1, 2015);
INSERT INTO `tahun_ajaran` VALUES (2, 2016);
INSERT INTO `tahun_ajaran` VALUES (3, 2017);
INSERT INTO `tahun_ajaran` VALUES (4, 2018);
INSERT INTO `tahun_ajaran` VALUES (5, 2019);
INSERT INTO `tahun_ajaran` VALUES (6, 2020);
INSERT INTO `tahun_ajaran` VALUES (7, 2021);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `adm_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `type` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`adm_id`) USING BTREE,
  UNIQUE INDEX `username_2`(`username`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `username_3`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 142 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 'admin');
INSERT INTO `user` VALUES (139, '123', '123', 'siswa');
INSERT INTO `user` VALUES (140, '1234', '1234', 'siswa');
INSERT INTO `user` VALUES (141, '12345', '12345', 'siswa');

SET FOREIGN_KEY_CHECKS = 1;
