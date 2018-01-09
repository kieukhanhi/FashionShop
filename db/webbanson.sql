/*
Navicat MySQL Data Transfer

Source Server         : PC\SQLEXPRESS
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : webbanhang

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2018-01-08 22:27:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `chitietdondathang`
-- ----------------------------
DROP TABLE IF EXISTS `chitietdondathang`;
CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) NOT NULL DEFAULT '',
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) DEFAULT NULL,
  `MaSanPham` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaChiTietDonDatHang`),
  UNIQUE KEY `pk_chitietdondathang` (`MaChiTietDonDatHang`),
  KEY `fk_chitietdondathang_dondathang` (`MaDonDatHang`),
  KEY `fk_chitietdondathang_sanpham` (`MaSanPham`),
  CONSTRAINT `fk_chitietdondathang_dondathang` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_chitietdondathang_sanpham` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chitietdondathang
-- ----------------------------
INSERT INTO `chitietdondathang` VALUES ('00000000100', '1', '185000', '000000001', '1');
INSERT INTO `chitietdondathang` VALUES ('00000000200', '1', '179000', '000000002', '2');
INSERT INTO `chitietdondathang` VALUES ('00000000300', '1', '180000', '000000003', '3');
INSERT INTO `chitietdondathang` VALUES ('00000000400', '1', '369000', '000000004', '4');
INSERT INTO `chitietdondathang` VALUES ('00000000500', '1', '450000', '000000005', '5');

-- ----------------------------
-- Table structure for `dondathang`
-- ----------------------------
DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) DEFAULT NULL,
  `MaTinhTrang` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaDonDatHang`),
  UNIQUE KEY `pk_dondathang` (`MaDonDatHang`),
  KEY `fk_dondathang_tinhtrang` (`MaTinhTrang`),
  KEY `fk_dondathang_taikhoan` (`MaTaiKhoan`),
  CONSTRAINT `fk_dondathang_taikhoan` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_dondathang_tinhtrang` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dondathang
-- ----------------------------
INSERT INTO `dondathang` VALUES ('000000001', '2017-12-30 00:00:00', '185000', '1', '1');
INSERT INTO `dondathang` VALUES ('000000002', '2017-12-30 00:00:00', '179000', '1', '1');
INSERT INTO `dondathang` VALUES ('000000003', '2017-12-30 00:00:00', '180000', '1', '1');
INSERT INTO `dondathang` VALUES ('000000004', '2017-12-30 00:00:00', '369000', '1', '1');
INSERT INTO `dondathang` VALUES ('000000005', '2017-12-30 00:00:00', '450000', '1', '1');

-- ----------------------------
-- Table structure for `hangsanxuat`
-- ----------------------------
DROP TABLE IF EXISTS `hangsanxuat`;
CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT,
  `TenHangSanXuat` varchar(60) DEFAULT NULL,
  `LogoURL` varchar(50) DEFAULT NULL,
  `BiXoa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MaHangSanXuat`),
  UNIQUE KEY `pk_hangsanxuat` (`MaHangSanXuat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hangsanxuat
-- ----------------------------
INSERT INTO `hangsanxuat` VALUES ('1', 'Maybelline', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('2', 'MAC', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('3', 'L\'Oreál', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('4', 'NYX', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('5', 'Chanel', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('6', '3CE', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('7', 'Laneige', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('8', 'The Face Shop', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('9', 'Missha', null, '\0');
INSERT INTO `hangsanxuat` VALUES ('10', 'Innisfree', null, '\0');

-- ----------------------------
-- Table structure for `loaisanpham`
-- ----------------------------
DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(60) DEFAULT NULL,
  `BiXoa` bit(1) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiSanPham`),
  UNIQUE KEY `pk_loaisp` (`MaLoaiSanPham`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loaisanpham
-- ----------------------------
INSERT INTO `loaisanpham` VALUES ('1', 'Son bóng (Lip gloss)', '\0');
INSERT INTO `loaisanpham` VALUES ('2', 'Son lì (Matte lipstick)', '\0');
INSERT INTO `loaisanpham` VALUES ('3', 'Son tint (Lip tint)', '\0');
INSERT INTO `loaisanpham` VALUES ('4', 'Son kem (Crème lipstick)', '\0');
INSERT INTO `loaisanpham` VALUES ('5', 'Son nhũ (Pearly/frost lipstick)', '\0');
INSERT INTO `loaisanpham` VALUES ('6', 'Son đổi màu (Sheer/Stain lipstick)', '\0');
INSERT INTO `loaisanpham` VALUES ('7', 'Son lâu trôi (Long lasting lipstick)', '\0');
INSERT INTO `loaisanpham` VALUES ('8', 'Son dưỡng môi (Lip balm)', '\0');
INSERT INTO `loaisanpham` VALUES ('9', 'Chì kẻ môi (Lip contour/lip liner)', '\0');

-- ----------------------------
-- Table structure for `loaitaikhoan`
-- ----------------------------
DROP TABLE IF EXISTS `loaitaikhoan`;
CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiTaiKhoan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaLoaiTaiKhoan`),
  UNIQUE KEY `pk_loaitk` (`MaLoaiTaiKhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loaitaikhoan
-- ----------------------------
INSERT INTO `loaitaikhoan` VALUES ('1', 'User');
INSERT INTO `loaitaikhoan` VALUES ('2', 'Admin');

-- ----------------------------
-- Table structure for `sanpham`
-- ----------------------------
DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL AUTO_INCREMENT,
  `TenSanPham` varchar(100) DEFAULT NULL,
  `HinhURL` varchar(50) DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuotXem` int(11) DEFAULT NULL,
  `MoTa` text,
  `BiXoa` bit(1) DEFAULT NULL,
  `MaLoaiSanPham` int(11) DEFAULT NULL,
  `MaHangSanXuat` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaSanPham`),
  UNIQUE KEY `pk_sanpham` (`MaSanPham`),
  KEY `fk_sanpham_loaisp` (`MaLoaiSanPham`),
  KEY `fk_sanpham_hangsanxuat` (`MaHangSanXuat`),
  CONSTRAINT `fk_sanpham_hangsanxuat` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_sanpham_loaisp` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sanpham
-- ----------------------------
INSERT INTO `sanpham` VALUES ('1', 'Innisfree Glow Tint Stick', null, '185000', '2017-01-12 00:00:00', '5', '5', '10', null, '\0', '1', '10');
INSERT INTO `sanpham` VALUES ('2', 'Innisfree Creammellow Lipstick', null, '179000', '2017-01-12 00:00:00', '5', '5', '10', null, '\0', '4', '10');
INSERT INTO `sanpham` VALUES ('3', 'Innisfree Creamy Tint Lipstick', null, '180000', '2017-01-12 00:00:00', '5', '5', '10', null, '\0', '4', '10');
INSERT INTO `sanpham` VALUES ('4', '3CE Mood Recipe Matte Lip Color', null, '369000', '2017-01-12 00:00:00', '2', '5', '100', null, '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('5', '3CE Red Recipe Matte Lip Color', null, '450000', '2017-01-12 00:00:00', '1', '20', '500', null, '\0', '2', '6');
INSERT INTO `sanpham` VALUES ('6', '3CE LIQUID LIP COLOR #Màu Charmed (Hồng Thẫm)', null, '410000', '2017-01-12 00:00:00', '5', '10', '50', null, '\0', '4', '6');
INSERT INTO `sanpham` VALUES ('7', 'Laneige Water Drop Tinted Lipbalm', null, '450000', '2017-01-12 00:00:00', '2', '2', '10', null, '\0', '8', '7');
INSERT INTO `sanpham` VALUES ('8', 'Laneige Special Care Lip Sleeping Mask 3g', null, '115000', '2017-01-12 00:00:00', '0', '10', '50', null, '\0', '8', '7');
INSERT INTO `sanpham` VALUES ('9', 'Laneige Silk Intense Lipstick', null, '420000', '2017-01-12 00:00:00', '0', '8', '50', null, '\0', '4', '7');
INSERT INTO `sanpham` VALUES ('10', 'Maybelline Colour Sensational Vivid Matte Liquid Lipgloss', null, '150000', '2017-01-12 00:00:00', '0', '10', '50', null, '\0', '1', '1');
INSERT INTO `sanpham` VALUES ('11', 'Maybelline Color Sensational Creme Lip Gloss', null, '150000', '2017-01-12 00:00:00', '5', '10', '50', null, '\0', '1', '1');
INSERT INTO `sanpham` VALUES ('12', 'Maybelline Superstay Lip Liner', null, '150000', '2017-01-12 00:00:00', '2', '5', '50', null, '\0', '9', '1');
INSERT INTO `sanpham` VALUES ('13', 'MAC Satin Lipstick', null, '380000', '2017-01-12 00:00:00', '10', '1', '60', null, '\0', '7', '2');
INSERT INTO `sanpham` VALUES ('14', 'MAC Up The Amp', null, '450000', '2017-01-12 00:00:00', '5', '5', '50', null, '\0', '7', '2');
INSERT INTO `sanpham` VALUES ('15', 'MAC Liptensity Lipstick', null, '465000', '2017-01-12 00:00:00', '0', '10', '60', null, '\0', '7', '2');
INSERT INTO `sanpham` VALUES ('16', 'NYX Matte lipstick in Whipped Caviar', null, '330000', '2017-01-12 00:00:00', '0', '20', '200', null, '\0', '2', '4');
INSERT INTO `sanpham` VALUES ('17', 'NYX Super Cliquey Matte Lipstick', null, '279000', '2017-01-12 00:00:00', '2', '10', '100', null, '\0', '2', '4');
INSERT INTO `sanpham` VALUES ('18', 'NYX Soft Matte Lip Cream', null, '210000', '2017-01-12 00:00:00', '2', '5', '10', null, '\0', '2', '4');
INSERT INTO `sanpham` VALUES ('19', 'L\'oreal Tint Caresse Cushion Lip Gradation', null, '350000', '2017-01-12 00:00:00', '2', '5', '50', null, '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('20', 'L\'oreal Color Riche 24k Gold', null, '228000', '2017-01-12 00:00:00', '0', '7', '10', null, '\0', '5', '3');
INSERT INTO `sanpham` VALUES ('21', 'L\'oreal Rouge Magique', null, '210000', '2017-01-12 00:00:00', '2', '5', '10', null, '\0', '7', '3');
INSERT INTO `sanpham` VALUES ('22', 'Chanel Rouge Allure', null, '850000', '2017-01-12 00:00:00', '5', '2', '10', null, '\0', '7', '5');
INSERT INTO `sanpham` VALUES ('23', 'Chanel Rouge Coco Shine', null, '850000', '2017-01-12 00:00:00', '2', '10', '50', null, '\0', '5', '5');
INSERT INTO `sanpham` VALUES ('24', 'Chanel Rouge Allure Velvet', null, '849000', '2017-01-12 00:00:00', '2', '2', '10', null, '\0', '2', '5');
INSERT INTO `sanpham` VALUES ('25', 'The Face Shop Ink Gel Stick', null, '230000', null, '5', '12', '50', null, '\0', '1', '8');
INSERT INTO `sanpham` VALUES ('26', 'The Face Shop Matte Up Tint', null, '250000', null, '21', '10', '100', null, '\0', '3', '8');
INSERT INTO `sanpham` VALUES ('27', 'The Face Shop Lip Care Stick', null, '219000', null, '12', '50', '200', null, '\0', '8', '8');
INSERT INTO `sanpham` VALUES ('28', 'Missha Wrinkle Care Stick Lip Balm', null, '139000', null, '2', '5', '10', null, '\0', '8', '9');
INSERT INTO `sanpham` VALUES ('29', 'Missha SPF17 Matt M Lip Rouge', null, '149000', null, '5', '5', '30', null, '\0', '2', '9');
INSERT INTO `sanpham` VALUES ('30', 'Missha Water Volume Tint', null, '135000', null, '50', '100', '200', null, '\0', '4', '9');
INSERT INTO `sanpham` VALUES ('31', 'Innisfree Glow Eco Flower Tint Balm 3.5g', null, '119000', null, '10', '20', '50', null, '\0', '6', '10');
INSERT INTO `sanpham` VALUES ('32', 'Innisfree Canola Honey Lip Balm - Deep Moisture', null, '89000', null, '2', '5', '50', null, '\0', '8', '10');
INSERT INTO `sanpham` VALUES ('33', 'Innisfree Vivid Creamy Tint', null, '230000', null, '2', '10', '30', null, '\0', '4', '10');
INSERT INTO `sanpham` VALUES ('34', '3CE Studio Velvet Cream Lip & Pencil', null, '309000', null, '10', '25', '30', null, '\0', '9', '6');
INSERT INTO `sanpham` VALUES ('35', 'Love 3CE Velvet Lip Stick', null, '319000', null, '2', '25', '30', null, '\0', '4', '6');
INSERT INTO `sanpham` VALUES ('36', '3CE Velvet Lip Tint', null, '285000', null, '2', '20', '50', '', '\0', '2', '6');

-- ----------------------------
-- Table structure for `taikhoan`
-- ----------------------------
DROP TABLE IF EXISTS `taikhoan`;
CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` bit(1) NOT NULL,
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaTaiKhoan`),
  UNIQUE KEY `pk_taikhoan` (`MaTaiKhoan`),
  KEY `fk_taikhoan_loaitk` (`MaLoaiTaiKhoan`),
  CONSTRAINT `fk_taikhoan_loaitk` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaLoaiTaiKhoan`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of taikhoan
-- ----------------------------
INSERT INTO `taikhoan` VALUES ('1', '135 Trần Hưng Đạo', '01667470948', 'dotrankhanhmy@gmail.com', '\0', '1', 'khanhmy', 'khanhmy^_^', 'Khánh My');
INSERT INTO `taikhoan` VALUES ('3', '227 Nguyễn Văn Cừ', null, null, '\0', '2', 'my2nhi', 'my2nhi***', 'Admin');

-- ----------------------------
-- Table structure for `tinhtrang`
-- ----------------------------
DROP TABLE IF EXISTS `tinhtrang`;
CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT,
  `TenTinhTrang` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`MaTinhTrang`),
  UNIQUE KEY `pk_tinhtrang` (`MaTinhTrang`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tinhtrang
-- ----------------------------
INSERT INTO `tinhtrang` VALUES ('1', 'Đặt hàng');
INSERT INTO `tinhtrang` VALUES ('2', 'Đang giao hàng');
INSERT INTO `tinhtrang` VALUES ('3', 'Thanh toán');
INSERT INTO `tinhtrang` VALUES ('4', 'Hủy');
