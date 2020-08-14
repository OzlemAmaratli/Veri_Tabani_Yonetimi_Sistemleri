/*
 Navicat Premium Data Transfer

 Source Server         : apart
 Source Server Type    : PostgreSQL
 Source Server Version : 120003
 Source Host           : 185.122.39.183:5432
 Source Catalog        : ApartmanYonet
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110000
 File Encoding         : 65001

 Date: 14/08/2020 21:35:50
*/


-- ----------------------------
-- Sequence structure for AlinanKararlar_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "AlinanKararlar_ID_seq";
CREATE SEQUENCE "AlinanKararlar_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for BinaTanimla_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "BinaTanimla_ID_seq";
CREATE SEQUENCE "BinaTanimla_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for DemirbasTakip_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "DemirbasTakip_ID_seq";
CREATE SEQUENCE "DemirbasTakip_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for GelirIslemleri_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "GelirIslemleri_ID_seq";
CREATE SEQUENCE "GelirIslemleri_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for GenelTanimlar_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "GenelTanimlar_ID_seq";
CREATE SEQUENCE "GenelTanimlar_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for GiderIslemleri_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "GiderIslemleri_ID_seq";
CREATE SEQUENCE "GiderIslemleri_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for KararDefteri_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "KararDefteri_ID_seq";
CREATE SEQUENCE "KararDefteri_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for Katilimcilar_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "Katilimcilar_ID_seq";
CREATE SEQUENCE "Katilimcilar_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for KisiIslemleri_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "KisiIslemleri_ID_seq";
CREATE SEQUENCE "KisiIslemleri_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for KisiTanimla_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "KisiTanimla_ID_seq";
CREATE SEQUENCE "KisiTanimla_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for KullaniciTanimla_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "KullaniciTanimla_ID_seq";
CREATE SEQUENCE "KullaniciTanimla_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for MeskenTanimla_IDS_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "MeskenTanimla_IDS_seq";
CREATE SEQUENCE "MeskenTanimla_IDS_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for PersonelTanimla,_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "PersonelTanimla,_ID_seq";
CREATE SEQUENCE "PersonelTanimla,_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for SiraTanimla_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "SiraTanimla_ID_seq";
CREATE SEQUENCE "SiraTanimla_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for SiteTanimla_ID_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "SiteTanimla_ID_seq";
CREATE SEQUENCE "SiteTanimla_ID_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 32767
START 1
CACHE 1;

-- ----------------------------
-- Table structure for AlinanKararlar
-- ----------------------------
DROP TABLE IF EXISTS "AlinanKararlar";
CREATE TABLE "AlinanKararlar" (
  "ID" int2 NOT NULL DEFAULT nextval('"AlinanKararlar_ID_seq"'::regclass),
  "KARARDEFTERID" int4,
  "KARARNO" int4,
  "ALINANKARARLAR" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of AlinanKararlar
-- ----------------------------
BEGIN;
INSERT INTO "AlinanKararlar" VALUES (1, 1, 1, 'sdfsdfsdfsdf');
INSERT INTO "AlinanKararlar" VALUES (3, 1, 2, 'dxvbcvbcvbc');
INSERT INTO "AlinanKararlar" VALUES (4, 1, 3, 'sadasdsd');
INSERT INTO "AlinanKararlar" VALUES (5, 0, 123, 'asdasd');
INSERT INTO "AlinanKararlar" VALUES (6, 0, 123, '123');
INSERT INTO "AlinanKararlar" VALUES (7, 0, 23123, 'asdasdasd');
INSERT INTO "AlinanKararlar" VALUES (8, 0, 123, '123123');
INSERT INTO "AlinanKararlar" VALUES (9, 0, 13, 'sdfsdfsdf');
INSERT INTO "AlinanKararlar" VALUES (10, 0, 12, 'asdasda');
INSERT INTO "AlinanKararlar" VALUES (11, 0, 123, 'sdfsdfdfdf');
INSERT INTO "AlinanKararlar" VALUES (12, 0, 2312, 'sdfsf');
COMMIT;

-- ----------------------------
-- Table structure for BinaTanimla
-- ----------------------------
DROP TABLE IF EXISTS "BinaTanimla";
CREATE TABLE "BinaTanimla" (
  "ID" int2 NOT NULL DEFAULT nextval('"BinaTanimla_ID_seq"'::regclass),
  "BINAADI" varchar(255) COLLATE "pg_catalog"."default",
  "KATSAYISI" varchar(10) COLLATE "pg_catalog"."default",
  "MESKENSAYISI" varchar(10) COLLATE "pg_catalog"."default",
  "YONETICI" varchar(255) COLLATE "pg_catalog"."default",
  "AIDAT" float4,
  "BINAKODU" varchar(20) COLLATE "pg_catalog"."default",
  "GOREVLI" int4
)
;

-- ----------------------------
-- Records of BinaTanimla
-- ----------------------------
BEGIN;
INSERT INTO "BinaTanimla" VALUES (7, 'A BLOK', '8', '16', 'DEBENE', 100, '12', 1);
COMMIT;

-- ----------------------------
-- Table structure for DemirbasTakip
-- ----------------------------
DROP TABLE IF EXISTS "DemirbasTakip";
CREATE TABLE "DemirbasTakip" (
  "ID" int2 NOT NULL DEFAULT nextval('"DemirbasTakip_ID_seq"'::regclass),
  "DEMIRBASNO" varchar(20) COLLATE "pg_catalog"."default",
  "DEMIRBASADI" varchar(100) COLLATE "pg_catalog"."default",
  "ADET" int2,
  "KULLANIMYERI" varchar(50) COLLATE "pg_catalog"."default",
  "KAYITTARIH" date,
  "MALIYET" float4,
  "ACIKLAMA" varchar(500) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of DemirbasTakip
-- ----------------------------
BEGIN;
INSERT INTO "DemirbasTakip" VALUES (1, '123', 'asdasdasd', 12, 'asasdasd', '2020-08-14', 123, 'asdasda');
COMMIT;

-- ----------------------------
-- Table structure for GelirIslemleri
-- ----------------------------
DROP TABLE IF EXISTS "GelirIslemleri";
CREATE TABLE "GelirIslemleri" (
  "ID" int2 NOT NULL DEFAULT nextval('"GelirIslemleri_ID_seq"'::regclass),
  "TIP" int2,
  "TUR" int2,
  "TARIH" date,
  "TUTAR" float4,
  "ACIKLAMA" varchar(500) COLLATE "pg_catalog"."default",
  "KASAID" int4
)
;

-- ----------------------------
-- Records of GelirIslemleri
-- ----------------------------
BEGIN;
INSERT INTO "GelirIslemleri" VALUES (1, 1, 3, '2020-08-13', 123, 'wqewqwe', NULL);
INSERT INTO "GelirIslemleri" VALUES (3, 1, 4, '2020-08-13', 1234, 'sadasdas', NULL);
INSERT INTO "GelirIslemleri" VALUES (6, 1, 5, '2020-08-14', 5000, 'Apartman Reklam Geliri', NULL);
COMMIT;

-- ----------------------------
-- Table structure for GenelTanimlar
-- ----------------------------
DROP TABLE IF EXISTS "GenelTanimlar";
CREATE TABLE "GenelTanimlar" (
  "ID" int2 NOT NULL DEFAULT nextval('"GenelTanimlar_ID_seq"'::regclass),
  "PARAMETREID" int4,
  "PARAMETREKOD" varchar(10) COLLATE "pg_catalog"."default",
  "PARAMETREADI" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of GenelTanimlar
-- ----------------------------
BEGIN;
INSERT INTO "GenelTanimlar" VALUES (1, 1, '1', 'Gelir İşlemi');
INSERT INTO "GenelTanimlar" VALUES (2, 1, '2', 'Gider İşlemi');
INSERT INTO "GenelTanimlar" VALUES (3, 2, '1', 'Aidat');
INSERT INTO "GenelTanimlar" VALUES (4, 2, '2', 'Kira');
INSERT INTO "GenelTanimlar" VALUES (5, 2, '3', 'Reklam');
INSERT INTO "GenelTanimlar" VALUES (6, 2, '4', 'Faiz');
INSERT INTO "GenelTanimlar" VALUES (7, 2, '5', 'Transfer');
INSERT INTO "GenelTanimlar" VALUES (8, 2, '6', 'Diğerleri');
INSERT INTO "GenelTanimlar" VALUES (9, 3, '1', 'Asansör');
INSERT INTO "GenelTanimlar" VALUES (10, 3, '2', 'Bakım');
INSERT INTO "GenelTanimlar" VALUES (11, 3, '3', 'Elektrik');
INSERT INTO "GenelTanimlar" VALUES (12, 3, '4', 'Su');
INSERT INTO "GenelTanimlar" VALUES (13, 3, '5', 'Doğalgaz');
INSERT INTO "GenelTanimlar" VALUES (14, 3, '6', 'Telefon');
INSERT INTO "GenelTanimlar" VALUES (15, 3, '7', 'Kırtasiye');
INSERT INTO "GenelTanimlar" VALUES (16, 3, '8', 'Muhasebe');
INSERT INTO "GenelTanimlar" VALUES (17, 3, '9', 'Personel');
INSERT INTO "GenelTanimlar" VALUES (18, 3, '10', 'Temizlik');
INSERT INTO "GenelTanimlar" VALUES (19, 4, '1', 'Adana');
INSERT INTO "GenelTanimlar" VALUES (20, 4, '2', 'Adıyaman');
INSERT INTO "GenelTanimlar" VALUES (21, 4, '3', 'Afyon');
INSERT INTO "GenelTanimlar" VALUES (22, 4, '4', 'Ağrı');
INSERT INTO "GenelTanimlar" VALUES (23, 4, '5', 'Amasya');
INSERT INTO "GenelTanimlar" VALUES (24, 4, '6', 'Ankara');
INSERT INTO "GenelTanimlar" VALUES (25, 4, '7', 'Antalya');
INSERT INTO "GenelTanimlar" VALUES (26, 4, '8', 'Artvin');
INSERT INTO "GenelTanimlar" VALUES (27, 4, '9', 'Aydın');
INSERT INTO "GenelTanimlar" VALUES (28, 4, '10', 'Balıkesir');
INSERT INTO "GenelTanimlar" VALUES (29, 4, '11', 'Bilecik');
INSERT INTO "GenelTanimlar" VALUES (30, 4, '12', 'Bingöl');
INSERT INTO "GenelTanimlar" VALUES (31, 4, '13', 'Bitlis');
INSERT INTO "GenelTanimlar" VALUES (32, 4, '14', 'Bolu');
INSERT INTO "GenelTanimlar" VALUES (33, 4, '15', 'Burdur');
INSERT INTO "GenelTanimlar" VALUES (34, 4, '16', 'Bursa');
INSERT INTO "GenelTanimlar" VALUES (35, 4, '17', 'Çanakkale');
INSERT INTO "GenelTanimlar" VALUES (36, 4, '18', 'Çankırı');
INSERT INTO "GenelTanimlar" VALUES (37, 4, '19', 'Çorum');
INSERT INTO "GenelTanimlar" VALUES (38, 4, '20', 'Denizli');
INSERT INTO "GenelTanimlar" VALUES (39, 4, '21', 'Diyarbakır');
INSERT INTO "GenelTanimlar" VALUES (40, 4, '22', 'Edirne');
INSERT INTO "GenelTanimlar" VALUES (41, 4, '23', 'Elazığ');
INSERT INTO "GenelTanimlar" VALUES (42, 4, '24', 'Erzincan');
INSERT INTO "GenelTanimlar" VALUES (43, 4, '25', 'Erzurum');
INSERT INTO "GenelTanimlar" VALUES (44, 4, '26', 'Eskişehir');
INSERT INTO "GenelTanimlar" VALUES (45, 4, '27', 'Gaziantep');
INSERT INTO "GenelTanimlar" VALUES (47, 4, '29', 'Gümüşhane');
INSERT INTO "GenelTanimlar" VALUES (48, 4, '30', 'Hakkari');
INSERT INTO "GenelTanimlar" VALUES (49, 4, '31', 'Hatay');
INSERT INTO "GenelTanimlar" VALUES (50, 4, '32', 'Isparta');
INSERT INTO "GenelTanimlar" VALUES (51, 4, '33', 'Mersin');
INSERT INTO "GenelTanimlar" VALUES (52, 4, '34', 'İstanbul');
INSERT INTO "GenelTanimlar" VALUES (53, 4, '35', 'İzmir');
INSERT INTO "GenelTanimlar" VALUES (54, 4, '36', 'Kars');
INSERT INTO "GenelTanimlar" VALUES (55, 4, '37', 'Kastamonu');
INSERT INTO "GenelTanimlar" VALUES (56, 4, '38', 'Kayseri');
INSERT INTO "GenelTanimlar" VALUES (57, 4, '39', 'Kırklareli');
INSERT INTO "GenelTanimlar" VALUES (58, 4, '40', 'Kırşehir');
INSERT INTO "GenelTanimlar" VALUES (59, 4, '41', 'Kocaeli');
INSERT INTO "GenelTanimlar" VALUES (60, 4, '42', 'Konya');
INSERT INTO "GenelTanimlar" VALUES (61, 4, '43', 'Kütahya');
INSERT INTO "GenelTanimlar" VALUES (62, 4, '44', 'Malatya');
INSERT INTO "GenelTanimlar" VALUES (63, 4, '45', 'Manisa');
INSERT INTO "GenelTanimlar" VALUES (64, 4, '46', 'K.Maraş');
INSERT INTO "GenelTanimlar" VALUES (65, 4, '47', 'Mardin');
INSERT INTO "GenelTanimlar" VALUES (66, 4, '48', 'Muğla');
INSERT INTO "GenelTanimlar" VALUES (67, 4, '49', 'Muş');
INSERT INTO "GenelTanimlar" VALUES (68, 4, '50', 'Nevşehir');
INSERT INTO "GenelTanimlar" VALUES (69, 4, '51', 'Niğde');
INSERT INTO "GenelTanimlar" VALUES (70, 4, '52', 'Ordu');
INSERT INTO "GenelTanimlar" VALUES (71, 4, '53', 'Rize');
INSERT INTO "GenelTanimlar" VALUES (72, 4, '54', 'Sakarya');
INSERT INTO "GenelTanimlar" VALUES (73, 4, '55', 'Samsun');
INSERT INTO "GenelTanimlar" VALUES (74, 4, '56', 'Siirt');
INSERT INTO "GenelTanimlar" VALUES (75, 4, '57', 'Sinop');
INSERT INTO "GenelTanimlar" VALUES (76, 4, '58', 'Sivas');
INSERT INTO "GenelTanimlar" VALUES (77, 4, '59', 'Tekirdağ');
INSERT INTO "GenelTanimlar" VALUES (78, 4, '60', 'Tokat');
INSERT INTO "GenelTanimlar" VALUES (79, 4, '61', 'Trabzon');
INSERT INTO "GenelTanimlar" VALUES (80, 4, '62', 'Tunceli');
INSERT INTO "GenelTanimlar" VALUES (81, 4, '63', 'Şanlıurfa');
INSERT INTO "GenelTanimlar" VALUES (82, 4, '64', 'Uşak');
INSERT INTO "GenelTanimlar" VALUES (83, 4, '65', 'Van');
INSERT INTO "GenelTanimlar" VALUES (84, 4, '66', 'Yozgat');
INSERT INTO "GenelTanimlar" VALUES (85, 4, '67', 'Zonguldak');
INSERT INTO "GenelTanimlar" VALUES (86, 4, '68', 'Aksaray');
INSERT INTO "GenelTanimlar" VALUES (87, 4, '69', 'Bayburt');
INSERT INTO "GenelTanimlar" VALUES (88, 4, '70', 'Karaman');
INSERT INTO "GenelTanimlar" VALUES (89, 4, '71', 'Kırıkkale');
INSERT INTO "GenelTanimlar" VALUES (90, 4, '72', 'Batman');
INSERT INTO "GenelTanimlar" VALUES (91, 4, '73', 'Şırnak');
INSERT INTO "GenelTanimlar" VALUES (92, 4, '74', 'Bartın');
INSERT INTO "GenelTanimlar" VALUES (93, 4, '75', 'Ardahan');
INSERT INTO "GenelTanimlar" VALUES (94, 4, '76', 'Iğdır');
INSERT INTO "GenelTanimlar" VALUES (95, 4, '77', 'Yalova');
INSERT INTO "GenelTanimlar" VALUES (96, 4, '78', 'Karabük');
INSERT INTO "GenelTanimlar" VALUES (97, 4, '79', 'Kilis');
INSERT INTO "GenelTanimlar" VALUES (98, 4, '80', 'Osmaniye');
INSERT INTO "GenelTanimlar" VALUES (99, 4, '81', 'Düzce');
INSERT INTO "GenelTanimlar" VALUES (46, 4, '28', 'Giresun');
INSERT INTO "GenelTanimlar" VALUES (100, 5, '19', 'Çukurova');
INSERT INTO "GenelTanimlar" VALUES (101, 5, '19', 'Karaisalı');
INSERT INTO "GenelTanimlar" VALUES (102, 5, '19', 'Karataş');
INSERT INTO "GenelTanimlar" VALUES (103, 5, '19', 'Seyhan');
INSERT INTO "GenelTanimlar" VALUES (104, 5, '19', 'Yumurtalık');
INSERT INTO "GenelTanimlar" VALUES (105, 5, '19', 'Aladağ(Karsantı)');
INSERT INTO "GenelTanimlar" VALUES (106, 5, '19', 'Ceyhan');
INSERT INTO "GenelTanimlar" VALUES (107, 5, '19', 'Feke');
INSERT INTO "GenelTanimlar" VALUES (108, 5, '19', 'İmamoğlu');
INSERT INTO "GenelTanimlar" VALUES (109, 5, '19', 'Kozan');
INSERT INTO "GenelTanimlar" VALUES (110, 5, '19', 'Tufanbeyli');
INSERT INTO "GenelTanimlar" VALUES (111, 5, '19', 'Pozantı');
INSERT INTO "GenelTanimlar" VALUES (112, 5, '19', 'Saimbeyli');
INSERT INTO "GenelTanimlar" VALUES (113, 5, '19', 'Sarıçam');
INSERT INTO "GenelTanimlar" VALUES (114, 5, '19', 'Yüreğir');
INSERT INTO "GenelTanimlar" VALUES (115, 5, '19', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (116, 5, '20', 'Gölbaşı');
INSERT INTO "GenelTanimlar" VALUES (117, 5, '20', 'Tut');
INSERT INTO "GenelTanimlar" VALUES (118, 5, '20', 'Besni');
INSERT INTO "GenelTanimlar" VALUES (119, 5, '20', 'Çelikhan');
INSERT INTO "GenelTanimlar" VALUES (120, 5, '20', 'Gerger');
INSERT INTO "GenelTanimlar" VALUES (121, 5, '20', 'Samsat');
INSERT INTO "GenelTanimlar" VALUES (122, 5, '20', 'Kahta');
INSERT INTO "GenelTanimlar" VALUES (123, 5, '20', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (124, 5, '20', 'Sincik');
INSERT INTO "GenelTanimlar" VALUES (125, 5, '21', 'Bayat');
INSERT INTO "GenelTanimlar" VALUES (126, 5, '21', 'Çobanlar');
INSERT INTO "GenelTanimlar" VALUES (127, 5, '21', 'Şuhut');
INSERT INTO "GenelTanimlar" VALUES (128, 5, '21', 'Başmakçı');
INSERT INTO "GenelTanimlar" VALUES (129, 5, '21', 'Bolvadin');
INSERT INTO "GenelTanimlar" VALUES (130, 5, '21', 'Dazkırı');
INSERT INTO "GenelTanimlar" VALUES (131, 5, '21', 'Emirdağ');
INSERT INTO "GenelTanimlar" VALUES (132, 5, '21', 'Evciler');
INSERT INTO "GenelTanimlar" VALUES (133, 5, '21', 'İscehisar');
INSERT INTO "GenelTanimlar" VALUES (134, 5, '21', 'Kızılören');
INSERT INTO "GenelTanimlar" VALUES (135, 5, '21', 'Sandıklı');
INSERT INTO "GenelTanimlar" VALUES (136, 5, '21', 'Çay');
INSERT INTO "GenelTanimlar" VALUES (137, 5, '21', 'Dinar');
INSERT INTO "GenelTanimlar" VALUES (138, 5, '21', 'Hocalar');
INSERT INTO "GenelTanimlar" VALUES (139, 5, '21', 'İhsaniye');
INSERT INTO "GenelTanimlar" VALUES (140, 5, '21', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (141, 5, '21', 'Sultandağı');
INSERT INTO "GenelTanimlar" VALUES (142, 5, '21', 'Sincanlı(Sinanpaşa)');
INSERT INTO "GenelTanimlar" VALUES (143, 5, '22', 'Eleşkirt');
INSERT INTO "GenelTanimlar" VALUES (144, 5, '22', 'Hamur');
INSERT INTO "GenelTanimlar" VALUES (145, 5, '22', 'Patnos');
INSERT INTO "GenelTanimlar" VALUES (146, 5, '22', 'Diyadin');
INSERT INTO "GenelTanimlar" VALUES (147, 5, '22', 'Tutak');
INSERT INTO "GenelTanimlar" VALUES (148, 5, '22', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (149, 5, '22', 'Taşlıçay');
INSERT INTO "GenelTanimlar" VALUES (150, 5, '22', 'Doğubayazıt(Doğubeyazıt)');
INSERT INTO "GenelTanimlar" VALUES (151, 5, '23', 'Gümüşhacıköy');
INSERT INTO "GenelTanimlar" VALUES (152, 5, '23', 'Merzifon');
INSERT INTO "GenelTanimlar" VALUES (153, 5, '23', 'Hamamözü');
INSERT INTO "GenelTanimlar" VALUES (154, 5, '23', 'Göynücek');
INSERT INTO "GenelTanimlar" VALUES (155, 5, '23', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (156, 5, '23', 'Suluova');
INSERT INTO "GenelTanimlar" VALUES (157, 5, '23', 'Taşova');
INSERT INTO "GenelTanimlar" VALUES (158, 5, '24', 'Evren');
INSERT INTO "GenelTanimlar" VALUES (159, 5, '24', 'Güdül');
INSERT INTO "GenelTanimlar" VALUES (160, 5, '24', 'Kazan');
INSERT INTO "GenelTanimlar" VALUES (161, 5, '24', 'Pursaklar');
INSERT INTO "GenelTanimlar" VALUES (162, 5, '24', 'Çubuk');
INSERT INTO "GenelTanimlar" VALUES (163, 5, '24', 'Etimesgut');
INSERT INTO "GenelTanimlar" VALUES (164, 5, '24', 'Gölbaşı');
INSERT INTO "GenelTanimlar" VALUES (165, 5, '24', 'Haymana');
INSERT INTO "GenelTanimlar" VALUES (166, 5, '24', 'Mamak');
INSERT INTO "GenelTanimlar" VALUES (167, 5, '24', 'Polatlı');
INSERT INTO "GenelTanimlar" VALUES (168, 5, '24', 'Akyurt');
INSERT INTO "GenelTanimlar" VALUES (169, 5, '24', 'Ayaş');
INSERT INTO "GenelTanimlar" VALUES (170, 5, '24', 'Çankaya');
INSERT INTO "GenelTanimlar" VALUES (171, 5, '24', 'Elmadağ');
INSERT INTO "GenelTanimlar" VALUES (172, 5, '24', 'Nallıhan');
INSERT INTO "GenelTanimlar" VALUES (173, 5, '24', 'Sincan');
INSERT INTO "GenelTanimlar" VALUES (174, 5, '24', 'Altındağ');
INSERT INTO "GenelTanimlar" VALUES (175, 5, '24', 'Bala');
INSERT INTO "GenelTanimlar" VALUES (176, 5, '24', 'Beypazarı');
INSERT INTO "GenelTanimlar" VALUES (177, 5, '24', 'Çamlıdere');
INSERT INTO "GenelTanimlar" VALUES (178, 5, '24', 'Kalecik');
INSERT INTO "GenelTanimlar" VALUES (179, 5, '24', 'Keçiören');
INSERT INTO "GenelTanimlar" VALUES (180, 5, '24', 'Kızılcahamam');
INSERT INTO "GenelTanimlar" VALUES (181, 5, '24', 'Şereflikoçhisar');
INSERT INTO "GenelTanimlar" VALUES (182, 5, '24', 'Yenimahalle');
INSERT INTO "GenelTanimlar" VALUES (183, 5, '25', 'Aksu');
INSERT INTO "GenelTanimlar" VALUES (184, 5, '25', 'Demre(Kale)');
INSERT INTO "GenelTanimlar" VALUES (185, 5, '25', 'Gazipaşa');
INSERT INTO "GenelTanimlar" VALUES (186, 5, '25', 'Kaş');
INSERT INTO "GenelTanimlar" VALUES (187, 5, '25', 'Konyaaltı');
INSERT INTO "GenelTanimlar" VALUES (188, 5, '25', 'Muratpaşa');
INSERT INTO "GenelTanimlar" VALUES (189, 5, '25', 'Döşemealtı');
INSERT INTO "GenelTanimlar" VALUES (190, 5, '25', 'Finike');
INSERT INTO "GenelTanimlar" VALUES (191, 5, '25', 'Manavgat');
INSERT INTO "GenelTanimlar" VALUES (192, 5, '25', 'Akseki');
INSERT INTO "GenelTanimlar" VALUES (193, 5, '25', 'Alanya');
INSERT INTO "GenelTanimlar" VALUES (194, 5, '25', 'İbradı(Aydınkent)');
INSERT INTO "GenelTanimlar" VALUES (195, 5, '25', 'Kepez');
INSERT INTO "GenelTanimlar" VALUES (196, 5, '25', 'Korkuteli');
INSERT INTO "GenelTanimlar" VALUES (197, 5, '25', 'Kumluca');
INSERT INTO "GenelTanimlar" VALUES (198, 5, '25', 'Serik');
INSERT INTO "GenelTanimlar" VALUES (199, 5, '25', 'Elmalı');
INSERT INTO "GenelTanimlar" VALUES (200, 5, '25', 'Gündoğmuş');
INSERT INTO "GenelTanimlar" VALUES (201, 5, '25', 'Kemer');
INSERT INTO "GenelTanimlar" VALUES (202, 5, '26', 'Arhavi');
INSERT INTO "GenelTanimlar" VALUES (203, 5, '26', 'Borçka');
INSERT INTO "GenelTanimlar" VALUES (204, 5, '26', 'Hopa');
INSERT INTO "GenelTanimlar" VALUES (205, 5, '26', 'Murgul(Göktaş)');
INSERT INTO "GenelTanimlar" VALUES (206, 5, '26', 'Yusufeli');
INSERT INTO "GenelTanimlar" VALUES (207, 5, '26', 'Ardanuç');
INSERT INTO "GenelTanimlar" VALUES (208, 5, '26', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (209, 5, '26', 'Şavşat');
INSERT INTO "GenelTanimlar" VALUES (210, 5, '27', 'Buharkent(Çubukdağı)');
INSERT INTO "GenelTanimlar" VALUES (211, 5, '27', 'Çine');
INSERT INTO "GenelTanimlar" VALUES (212, 5, '27', 'İncirliova');
INSERT INTO "GenelTanimlar" VALUES (213, 5, '27', 'Karacasu');
INSERT INTO "GenelTanimlar" VALUES (214, 5, '27', 'Karpuzlu');
INSERT INTO "GenelTanimlar" VALUES (215, 5, '27', 'Köşk');
INSERT INTO "GenelTanimlar" VALUES (216, 5, '27', 'Nazilli');
INSERT INTO "GenelTanimlar" VALUES (217, 5, '27', 'Sultanhisar');
INSERT INTO "GenelTanimlar" VALUES (218, 5, '27', 'Kuşadası');
INSERT INTO "GenelTanimlar" VALUES (219, 5, '27', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (220, 5, '27', 'Söke');
INSERT INTO "GenelTanimlar" VALUES (221, 5, '27', 'Yenipazar');
INSERT INTO "GenelTanimlar" VALUES (222, 5, '27', 'Bozdoğan');
INSERT INTO "GenelTanimlar" VALUES (223, 5, '27', 'Germencik');
INSERT INTO "GenelTanimlar" VALUES (224, 5, '27', 'Kuyucak');
INSERT INTO "GenelTanimlar" VALUES (225, 5, '27', 'Didim(Yenihisar)');
INSERT INTO "GenelTanimlar" VALUES (226, 5, '27', 'Koçarlı');
INSERT INTO "GenelTanimlar" VALUES (227, 5, '28', 'Ayvalık');
INSERT INTO "GenelTanimlar" VALUES (228, 5, '28', 'Balya');
INSERT INTO "GenelTanimlar" VALUES (229, 5, '28', 'Burhaniye');
INSERT INTO "GenelTanimlar" VALUES (230, 5, '28', 'Edremit');
INSERT INTO "GenelTanimlar" VALUES (231, 5, '28', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (232, 5, '28', 'Sındırgı');
INSERT INTO "GenelTanimlar" VALUES (233, 5, '28', 'Havran');
INSERT INTO "GenelTanimlar" VALUES (234, 5, '28', 'Kepsut');
INSERT INTO "GenelTanimlar" VALUES (235, 5, '28', 'Marmara');
INSERT INTO "GenelTanimlar" VALUES (236, 5, '28', 'Savaştepe');
INSERT INTO "GenelTanimlar" VALUES (237, 5, '28', 'Bandırma');
INSERT INTO "GenelTanimlar" VALUES (238, 5, '28', 'Bigadiç');
INSERT INTO "GenelTanimlar" VALUES (239, 5, '28', 'Gömeç');
INSERT INTO "GenelTanimlar" VALUES (240, 5, '28', 'Dursunbey');
INSERT INTO "GenelTanimlar" VALUES (241, 5, '28', 'Erdek');
INSERT INTO "GenelTanimlar" VALUES (242, 5, '28', 'Gönen');
INSERT INTO "GenelTanimlar" VALUES (243, 5, '28', 'İvrindi');
INSERT INTO "GenelTanimlar" VALUES (244, 5, '28', 'Manyas');
INSERT INTO "GenelTanimlar" VALUES (245, 5, '28', 'Susurluk');
INSERT INTO "GenelTanimlar" VALUES (246, 5, '29', 'Gölpazarı');
INSERT INTO "GenelTanimlar" VALUES (247, 5, '29', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (248, 5, '29', 'Bozüyük');
INSERT INTO "GenelTanimlar" VALUES (249, 5, '29', 'İnhisar');
INSERT INTO "GenelTanimlar" VALUES (250, 5, '29', 'Pazaryeri');
INSERT INTO "GenelTanimlar" VALUES (251, 5, '29', 'Söğüt');
INSERT INTO "GenelTanimlar" VALUES (252, 5, '29', 'Yenipazar');
INSERT INTO "GenelTanimlar" VALUES (253, 5, '29', 'Osmaneli');
INSERT INTO "GenelTanimlar" VALUES (254, 5, '30', 'Adaklı');
INSERT INTO "GenelTanimlar" VALUES (255, 5, '30', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (256, 5, '30', 'Yedisu');
INSERT INTO "GenelTanimlar" VALUES (257, 5, '30', 'Genç');
INSERT INTO "GenelTanimlar" VALUES (258, 5, '30', 'Yayladere');
INSERT INTO "GenelTanimlar" VALUES (259, 5, '30', 'Karlıova');
INSERT INTO "GenelTanimlar" VALUES (260, 5, '30', 'Kiğı');
INSERT INTO "GenelTanimlar" VALUES (261, 5, '30', 'Solhan');
INSERT INTO "GenelTanimlar" VALUES (262, 5, '31', 'Adilcevaz');
INSERT INTO "GenelTanimlar" VALUES (263, 5, '31', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (264, 5, '31', 'Güroymak');
INSERT INTO "GenelTanimlar" VALUES (265, 5, '31', 'Hizan');
INSERT INTO "GenelTanimlar" VALUES (266, 5, '31', 'Mutki');
INSERT INTO "GenelTanimlar" VALUES (267, 5, '31', 'Ahlat');
INSERT INTO "GenelTanimlar" VALUES (268, 5, '31', 'Tatvan');
INSERT INTO "GenelTanimlar" VALUES (269, 5, '32', 'Dörtdivan');
INSERT INTO "GenelTanimlar" VALUES (270, 5, '32', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (271, 5, '32', 'Göynük');
INSERT INTO "GenelTanimlar" VALUES (272, 5, '32', 'Kıbrıscık');
INSERT INTO "GenelTanimlar" VALUES (273, 5, '32', 'Mudurnu');
INSERT INTO "GenelTanimlar" VALUES (274, 5, '32', 'Gerede');
INSERT INTO "GenelTanimlar" VALUES (275, 5, '32', 'Seben');
INSERT INTO "GenelTanimlar" VALUES (276, 5, '32', 'Yeniçağa');
INSERT INTO "GenelTanimlar" VALUES (277, 5, '33', 'Altınyayla(Dirmil)');
INSERT INTO "GenelTanimlar" VALUES (278, 5, '33', 'Çavdır');
INSERT INTO "GenelTanimlar" VALUES (279, 5, '33', 'Kemer');
INSERT INTO "GenelTanimlar" VALUES (280, 5, '33', 'Ağlasun');
INSERT INTO "GenelTanimlar" VALUES (281, 5, '33', 'Bucak');
INSERT INTO "GenelTanimlar" VALUES (282, 5, '33', 'Çeltikçi');
INSERT INTO "GenelTanimlar" VALUES (283, 5, '33', 'Yeşilova');
INSERT INTO "GenelTanimlar" VALUES (284, 5, '33', 'Gölhisar');
INSERT INTO "GenelTanimlar" VALUES (285, 5, '33', 'Karamanlı');
INSERT INTO "GenelTanimlar" VALUES (286, 5, '33', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (287, 5, '33', 'Tefenni');
INSERT INTO "GenelTanimlar" VALUES (288, 5, '34', 'Büyükorhan');
INSERT INTO "GenelTanimlar" VALUES (289, 5, '34', 'Gemlik');
INSERT INTO "GenelTanimlar" VALUES (290, 5, '34', 'Mustafakemalpaşa');
INSERT INTO "GenelTanimlar" VALUES (291, 5, '34', 'Nilüfer');
INSERT INTO "GenelTanimlar" VALUES (292, 5, '34', 'İnegöl');
INSERT INTO "GenelTanimlar" VALUES (293, 5, '34', 'Keles');
INSERT INTO "GenelTanimlar" VALUES (294, 5, '34', 'Mudanya');
INSERT INTO "GenelTanimlar" VALUES (295, 5, '34', 'Orhaneli');
INSERT INTO "GenelTanimlar" VALUES (296, 5, '34', 'Orhangazi');
INSERT INTO "GenelTanimlar" VALUES (297, 5, '34', 'Yenişehir');
INSERT INTO "GenelTanimlar" VALUES (298, 5, '34', 'Yıldırım');
INSERT INTO "GenelTanimlar" VALUES (299, 5, '34', 'İznik');
INSERT INTO "GenelTanimlar" VALUES (300, 5, '34', 'Karacabey');
INSERT INTO "GenelTanimlar" VALUES (301, 5, '34', 'Osmangazi');
INSERT INTO "GenelTanimlar" VALUES (302, 5, '34', 'Gürsu');
INSERT INTO "GenelTanimlar" VALUES (303, 5, '34', 'Harmancık');
INSERT INTO "GenelTanimlar" VALUES (304, 5, '34', 'Kestel');
INSERT INTO "GenelTanimlar" VALUES (305, 5, '35', 'Bayramiç');
INSERT INTO "GenelTanimlar" VALUES (306, 5, '35', 'Eceabat');
INSERT INTO "GenelTanimlar" VALUES (307, 5, '35', 'Yenice');
INSERT INTO "GenelTanimlar" VALUES (308, 5, '35', 'Ayvacık');
INSERT INTO "GenelTanimlar" VALUES (309, 5, '35', 'Bozcaada');
INSERT INTO "GenelTanimlar" VALUES (310, 5, '35', 'Ezine');
INSERT INTO "GenelTanimlar" VALUES (311, 5, '35', 'Gelibolu');
INSERT INTO "GenelTanimlar" VALUES (312, 5, '35', 'Lapseki');
INSERT INTO "GenelTanimlar" VALUES (313, 5, '35', 'Biga');
INSERT INTO "GenelTanimlar" VALUES (314, 5, '35', 'Çan');
INSERT INTO "GenelTanimlar" VALUES (315, 5, '35', 'Gökçeada(İmroz)');
INSERT INTO "GenelTanimlar" VALUES (316, 5, '35', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (317, 5, '36', 'Atkaracalar');
INSERT INTO "GenelTanimlar" VALUES (318, 5, '36', 'Bayramören');
INSERT INTO "GenelTanimlar" VALUES (319, 5, '36', 'Çerkeş');
INSERT INTO "GenelTanimlar" VALUES (320, 5, '36', 'Yapraklı');
INSERT INTO "GenelTanimlar" VALUES (321, 5, '36', 'Eldivan');
INSERT INTO "GenelTanimlar" VALUES (322, 5, '36', 'Ilgaz');
INSERT INTO "GenelTanimlar" VALUES (323, 5, '36', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (324, 5, '36', 'Kızılırmak');
INSERT INTO "GenelTanimlar" VALUES (325, 5, '36', 'Şabanözü');
INSERT INTO "GenelTanimlar" VALUES (326, 5, '36', 'Korgun');
INSERT INTO "GenelTanimlar" VALUES (327, 5, '36', 'Kurşunlu');
INSERT INTO "GenelTanimlar" VALUES (328, 5, '36', 'Orta');
INSERT INTO "GenelTanimlar" VALUES (329, 5, '37', 'Bayat');
INSERT INTO "GenelTanimlar" VALUES (330, 5, '37', 'İskilip');
INSERT INTO "GenelTanimlar" VALUES (331, 5, '37', 'Osmancık');
INSERT INTO "GenelTanimlar" VALUES (332, 5, '37', 'Uğurludağ');
INSERT INTO "GenelTanimlar" VALUES (333, 5, '37', 'Dodurga');
INSERT INTO "GenelTanimlar" VALUES (334, 5, '37', 'Kargı');
INSERT INTO "GenelTanimlar" VALUES (335, 5, '37', 'Mecitözü');
INSERT INTO "GenelTanimlar" VALUES (336, 5, '37', 'Alaca');
INSERT INTO "GenelTanimlar" VALUES (337, 5, '37', 'Laçin');
INSERT INTO "GenelTanimlar" VALUES (338, 5, '37', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (339, 5, '37', 'Oğuzlar(Karaören)');
INSERT INTO "GenelTanimlar" VALUES (340, 5, '37', 'Sungurlu');
INSERT INTO "GenelTanimlar" VALUES (341, 5, '37', 'Boğazkale');
INSERT INTO "GenelTanimlar" VALUES (342, 5, '37', 'Ortaköy');
INSERT INTO "GenelTanimlar" VALUES (343, 5, '38', 'Baklan');
INSERT INTO "GenelTanimlar" VALUES (344, 5, '38', 'Çal');
INSERT INTO "GenelTanimlar" VALUES (345, 5, '38', 'Güney');
INSERT INTO "GenelTanimlar" VALUES (346, 5, '38', 'Tavas');
INSERT INTO "GenelTanimlar" VALUES (347, 5, '38', 'Babadağ');
INSERT INTO "GenelTanimlar" VALUES (348, 5, '38', 'Buldan');
INSERT INTO "GenelTanimlar" VALUES (349, 5, '38', 'Sarayköy');
INSERT INTO "GenelTanimlar" VALUES (350, 5, '38', 'Serinhisar');
INSERT INTO "GenelTanimlar" VALUES (351, 5, '38', 'Acıpayam');
INSERT INTO "GenelTanimlar" VALUES (352, 5, '38', 'Beyağaç');
INSERT INTO "GenelTanimlar" VALUES (353, 5, '38', 'Çardak');
INSERT INTO "GenelTanimlar" VALUES (354, 5, '38', 'Honaz');
INSERT INTO "GenelTanimlar" VALUES (355, 5, '38', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (356, 5, '38', 'Akköy');
INSERT INTO "GenelTanimlar" VALUES (357, 5, '38', 'Bekilli');
INSERT INTO "GenelTanimlar" VALUES (358, 5, '38', 'Bozkurt');
INSERT INTO "GenelTanimlar" VALUES (359, 5, '38', 'Çameli');
INSERT INTO "GenelTanimlar" VALUES (360, 5, '38', 'Çivril');
INSERT INTO "GenelTanimlar" VALUES (361, 5, '38', 'Kale');
INSERT INTO "GenelTanimlar" VALUES (362, 5, '38', 'Üçler');
INSERT INTO "GenelTanimlar" VALUES (363, 5, '39', 'Çınar');
INSERT INTO "GenelTanimlar" VALUES (364, 5, '39', 'Çüngüş');
INSERT INTO "GenelTanimlar" VALUES (365, 5, '39', 'Dicle');
INSERT INTO "GenelTanimlar" VALUES (366, 5, '39', 'Lice');
INSERT INTO "GenelTanimlar" VALUES (367, 5, '39', 'Sur');
INSERT INTO "GenelTanimlar" VALUES (368, 5, '39', 'Yenişehir');
INSERT INTO "GenelTanimlar" VALUES (369, 5, '39', 'Bismil');
INSERT INTO "GenelTanimlar" VALUES (370, 5, '39', 'Silvan');
INSERT INTO "GenelTanimlar" VALUES (371, 5, '39', 'Çermik');
INSERT INTO "GenelTanimlar" VALUES (372, 5, '39', 'Eğil');
INSERT INTO "GenelTanimlar" VALUES (373, 5, '39', 'Ergani');
INSERT INTO "GenelTanimlar" VALUES (374, 5, '39', 'Hazro');
INSERT INTO "GenelTanimlar" VALUES (375, 5, '39', 'Kayapınar');
INSERT INTO "GenelTanimlar" VALUES (376, 5, '39', 'Kulp');
INSERT INTO "GenelTanimlar" VALUES (377, 5, '39', 'Bağlar');
INSERT INTO "GenelTanimlar" VALUES (378, 5, '39', 'Hani');
INSERT INTO "GenelTanimlar" VALUES (379, 5, '39', 'Kocaköy');
INSERT INTO "GenelTanimlar" VALUES (380, 5, '40', 'Keşan');
INSERT INTO "GenelTanimlar" VALUES (381, 5, '40', 'Süloğlu(Süleoğlu)');
INSERT INTO "GenelTanimlar" VALUES (382, 5, '40', 'Havsa');
INSERT INTO "GenelTanimlar" VALUES (383, 5, '40', 'İpsala');
INSERT INTO "GenelTanimlar" VALUES (384, 5, '40', 'Meriç');
INSERT INTO "GenelTanimlar" VALUES (385, 5, '40', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (386, 5, '40', 'Uzunköprü');
INSERT INTO "GenelTanimlar" VALUES (387, 5, '40', 'Enez');
INSERT INTO "GenelTanimlar" VALUES (388, 5, '40', 'Lalapaşa');
INSERT INTO "GenelTanimlar" VALUES (389, 5, '41', 'Alacakaya');
INSERT INTO "GenelTanimlar" VALUES (390, 5, '41', 'Kovancılar');
INSERT INTO "GenelTanimlar" VALUES (391, 5, '41', 'Baskil');
INSERT INTO "GenelTanimlar" VALUES (392, 5, '41', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (393, 5, '41', 'Palu');
INSERT INTO "GenelTanimlar" VALUES (394, 5, '41', 'Sivrice');
INSERT INTO "GenelTanimlar" VALUES (395, 5, '41', 'Ağın');
INSERT INTO "GenelTanimlar" VALUES (396, 5, '41', 'Arıcak');
INSERT INTO "GenelTanimlar" VALUES (397, 5, '41', 'Karakoçan');
INSERT INTO "GenelTanimlar" VALUES (398, 5, '41', 'Keban');
INSERT INTO "GenelTanimlar" VALUES (399, 5, '41', 'Maden');
INSERT INTO "GenelTanimlar" VALUES (400, 5, '42', 'Kemaliye');
INSERT INTO "GenelTanimlar" VALUES (401, 5, '42', 'Üzümlü');
INSERT INTO "GenelTanimlar" VALUES (402, 5, '42', 'Çayırlı');
INSERT INTO "GenelTanimlar" VALUES (403, 5, '42', 'Kemah');
INSERT INTO "GenelTanimlar" VALUES (404, 5, '42', 'Tercan');
INSERT INTO "GenelTanimlar" VALUES (405, 5, '42', 'Ilıç(İliç)');
INSERT INTO "GenelTanimlar" VALUES (406, 5, '42', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (407, 5, '42', 'Otlukbeli');
INSERT INTO "GenelTanimlar" VALUES (408, 5, '42', 'Refahiye');
INSERT INTO "GenelTanimlar" VALUES (409, 5, '43', 'Karaçoban');
INSERT INTO "GenelTanimlar" VALUES (410, 5, '43', 'Narman');
INSERT INTO "GenelTanimlar" VALUES (411, 5, '43', 'Oltu');
INSERT INTO "GenelTanimlar" VALUES (412, 5, '43', 'Olur');
INSERT INTO "GenelTanimlar" VALUES (413, 5, '43', 'Tekman');
INSERT INTO "GenelTanimlar" VALUES (414, 5, '43', 'Tortum');
INSERT INTO "GenelTanimlar" VALUES (415, 5, '43', 'Uzundere');
INSERT INTO "GenelTanimlar" VALUES (416, 5, '43', 'Horasan');
INSERT INTO "GenelTanimlar" VALUES (417, 5, '43', 'İspir');
INSERT INTO "GenelTanimlar" VALUES (418, 5, '43', 'Pasinler');
INSERT INTO "GenelTanimlar" VALUES (419, 5, '43', 'Şenkaya');
INSERT INTO "GenelTanimlar" VALUES (420, 5, '43', 'Aşkale');
INSERT INTO "GenelTanimlar" VALUES (421, 5, '43', 'Aziziye(Ilıca)');
INSERT INTO "GenelTanimlar" VALUES (422, 5, '43', 'Çat');
INSERT INTO "GenelTanimlar" VALUES (423, 5, '43', 'Karayazı');
INSERT INTO "GenelTanimlar" VALUES (424, 5, '43', 'Köprüköy');
INSERT INTO "GenelTanimlar" VALUES (425, 5, '43', 'Palandöken');
INSERT INTO "GenelTanimlar" VALUES (426, 5, '43', 'Yakutiye');
INSERT INTO "GenelTanimlar" VALUES (427, 5, '43', 'Hınıs');
INSERT INTO "GenelTanimlar" VALUES (428, 5, '43', 'Pazaryolu');
INSERT INTO "GenelTanimlar" VALUES (429, 5, '44', 'Çifteler');
INSERT INTO "GenelTanimlar" VALUES (430, 5, '44', 'Han');
INSERT INTO "GenelTanimlar" VALUES (431, 5, '44', 'Mihalgazi');
INSERT INTO "GenelTanimlar" VALUES (432, 5, '44', 'Mihalıççık');
INSERT INTO "GenelTanimlar" VALUES (433, 5, '44', 'Tepebaşı');
INSERT INTO "GenelTanimlar" VALUES (434, 5, '44', 'Alpu');
INSERT INTO "GenelTanimlar" VALUES (435, 5, '44', 'Günyüzü');
INSERT INTO "GenelTanimlar" VALUES (436, 5, '44', 'Sarıcakaya');
INSERT INTO "GenelTanimlar" VALUES (437, 5, '44', 'Beylikova');
INSERT INTO "GenelTanimlar" VALUES (438, 5, '44', 'İnönü');
INSERT INTO "GenelTanimlar" VALUES (439, 5, '44', 'Mahmudiye');
INSERT INTO "GenelTanimlar" VALUES (440, 5, '44', 'Odunpazarı');
INSERT INTO "GenelTanimlar" VALUES (441, 5, '44', 'Seyitgazi');
INSERT INTO "GenelTanimlar" VALUES (442, 5, '44', 'Sivrihisar');
INSERT INTO "GenelTanimlar" VALUES (443, 5, '44', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (444, 5, '45', 'İslahiye');
INSERT INTO "GenelTanimlar" VALUES (445, 5, '45', 'Yavuzeli');
INSERT INTO "GenelTanimlar" VALUES (446, 5, '45', 'Karkamış');
INSERT INTO "GenelTanimlar" VALUES (447, 5, '45', 'Nizip');
INSERT INTO "GenelTanimlar" VALUES (448, 5, '45', 'Oğuzeli');
INSERT INTO "GenelTanimlar" VALUES (449, 5, '45', 'Şahinbey');
INSERT INTO "GenelTanimlar" VALUES (450, 5, '45', 'Nurdağı');
INSERT INTO "GenelTanimlar" VALUES (451, 5, '45', 'Araban');
INSERT INTO "GenelTanimlar" VALUES (452, 5, '45', 'Şehitkamil');
INSERT INTO "GenelTanimlar" VALUES (453, 5, '46', 'Alucra');
INSERT INTO "GenelTanimlar" VALUES (454, 5, '46', 'Bulancak');
INSERT INTO "GenelTanimlar" VALUES (455, 5, '46', 'Çanakçı');
INSERT INTO "GenelTanimlar" VALUES (456, 5, '46', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (457, 5, '46', 'Yağlıdere');
INSERT INTO "GenelTanimlar" VALUES (458, 5, '46', 'Dereli');
INSERT INTO "GenelTanimlar" VALUES (459, 5, '46', 'Eynesil');
INSERT INTO "GenelTanimlar" VALUES (460, 5, '46', 'Güce');
INSERT INTO "GenelTanimlar" VALUES (461, 5, '46', 'Keşap');
INSERT INTO "GenelTanimlar" VALUES (462, 5, '46', 'Doğankent');
INSERT INTO "GenelTanimlar" VALUES (463, 5, '46', 'Görele');
INSERT INTO "GenelTanimlar" VALUES (464, 5, '46', 'Çamoluk');
INSERT INTO "GenelTanimlar" VALUES (465, 5, '46', 'Espiye');
INSERT INTO "GenelTanimlar" VALUES (466, 5, '46', 'Piraziz');
INSERT INTO "GenelTanimlar" VALUES (467, 5, '46', 'Şebinkarahisar');
INSERT INTO "GenelTanimlar" VALUES (468, 5, '46', 'Tirebolu');
INSERT INTO "GenelTanimlar" VALUES (469, 5, '47', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (470, 5, '47', 'Torul');
INSERT INTO "GenelTanimlar" VALUES (471, 5, '47', 'Köse');
INSERT INTO "GenelTanimlar" VALUES (472, 5, '47', 'Kürtün');
INSERT INTO "GenelTanimlar" VALUES (473, 5, '47', 'Kelkit');
INSERT INTO "GenelTanimlar" VALUES (474, 5, '47', 'Şiran');
INSERT INTO "GenelTanimlar" VALUES (475, 5, '48', 'Çukurca');
INSERT INTO "GenelTanimlar" VALUES (476, 5, '48', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (477, 5, '48', 'Yüksekova');
INSERT INTO "GenelTanimlar" VALUES (478, 5, '48', 'Şemdinli');
INSERT INTO "GenelTanimlar" VALUES (479, 5, '49', 'İskenderun');
INSERT INTO "GenelTanimlar" VALUES (480, 5, '49', 'Kumlu');
INSERT INTO "GenelTanimlar" VALUES (481, 5, '49', 'Dörtyol');
INSERT INTO "GenelTanimlar" VALUES (482, 5, '49', 'Hassa');
INSERT INTO "GenelTanimlar" VALUES (483, 5, '49', 'Reyhanlı');
INSERT INTO "GenelTanimlar" VALUES (484, 5, '49', 'Samandağ');
INSERT INTO "GenelTanimlar" VALUES (485, 5, '49', 'Yayladağı');
INSERT INTO "GenelTanimlar" VALUES (486, 5, '49', 'Altınözü');
INSERT INTO "GenelTanimlar" VALUES (487, 5, '49', 'Antakya');
INSERT INTO "GenelTanimlar" VALUES (488, 5, '49', 'Belen');
INSERT INTO "GenelTanimlar" VALUES (489, 5, '49', 'Erzin');
INSERT INTO "GenelTanimlar" VALUES (490, 5, '49', 'Kırıkhan');
INSERT INTO "GenelTanimlar" VALUES (491, 5, '49', 'Payas');
INSERT INTO "GenelTanimlar" VALUES (492, 5, '50', 'Atabey');
INSERT INTO "GenelTanimlar" VALUES (493, 5, '50', 'Sütçüler');
INSERT INTO "GenelTanimlar" VALUES (494, 5, '50', 'Uluborlu');
INSERT INTO "GenelTanimlar" VALUES (495, 5, '50', 'Gönen');
INSERT INTO "GenelTanimlar" VALUES (496, 5, '50', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (497, 5, '50', 'Aksu');
INSERT INTO "GenelTanimlar" VALUES (498, 5, '50', 'Eğirdir(Eğridir)');
INSERT INTO "GenelTanimlar" VALUES (499, 5, '50', 'Gelendost');
INSERT INTO "GenelTanimlar" VALUES (500, 5, '50', 'Keçiborlu');
INSERT INTO "GenelTanimlar" VALUES (501, 5, '50', 'Senirkent');
INSERT INTO "GenelTanimlar" VALUES (502, 5, '50', 'Şarkikaraağaç');
INSERT INTO "GenelTanimlar" VALUES (503, 5, '50', 'Yalvaç');
INSERT INTO "GenelTanimlar" VALUES (504, 5, '50', 'Yenişarbademli');
INSERT INTO "GenelTanimlar" VALUES (505, 5, '51', 'Akdeniz');
INSERT INTO "GenelTanimlar" VALUES (506, 5, '51', 'Aydıncık');
INSERT INTO "GenelTanimlar" VALUES (507, 5, '51', 'Bozyazı');
INSERT INTO "GenelTanimlar" VALUES (508, 5, '51', 'Çamlıyayla');
INSERT INTO "GenelTanimlar" VALUES (509, 5, '51', 'Erdemli');
INSERT INTO "GenelTanimlar" VALUES (510, 5, '51', 'Mut');
INSERT INTO "GenelTanimlar" VALUES (511, 5, '51', 'Toroslar');
INSERT INTO "GenelTanimlar" VALUES (512, 5, '51', 'Anamur');
INSERT INTO "GenelTanimlar" VALUES (513, 5, '51', 'Gülnar (Gülpınar)');
INSERT INTO "GenelTanimlar" VALUES (514, 5, '51', 'Silifke');
INSERT INTO "GenelTanimlar" VALUES (515, 5, '51', 'Mezitli');
INSERT INTO "GenelTanimlar" VALUES (516, 5, '51', 'Tarsus');
INSERT INTO "GenelTanimlar" VALUES (517, 5, '51', 'Yenişehir');
INSERT INTO "GenelTanimlar" VALUES (518, 5, '52', 'Adalar');
INSERT INTO "GenelTanimlar" VALUES (519, 5, '52', 'Avcılar');
INSERT INTO "GenelTanimlar" VALUES (520, 5, '52', 'Beykoz');
INSERT INTO "GenelTanimlar" VALUES (521, 5, '52', 'Çatalca');
INSERT INTO "GenelTanimlar" VALUES (522, 5, '52', 'Esenler');
INSERT INTO "GenelTanimlar" VALUES (523, 5, '52', 'Eyüp');
INSERT INTO "GenelTanimlar" VALUES (524, 5, '52', 'Fatih');
INSERT INTO "GenelTanimlar" VALUES (525, 5, '52', 'Gaziosmanpaşa');
INSERT INTO "GenelTanimlar" VALUES (526, 5, '52', 'Kağıthane');
INSERT INTO "GenelTanimlar" VALUES (527, 5, '52', 'Kartal');
INSERT INTO "GenelTanimlar" VALUES (528, 5, '52', 'Pendik');
INSERT INTO "GenelTanimlar" VALUES (529, 5, '52', 'Sarıyer');
INSERT INTO "GenelTanimlar" VALUES (530, 5, '52', 'Sultangazi');
INSERT INTO "GenelTanimlar" VALUES (531, 5, '52', 'Tuzla');
INSERT INTO "GenelTanimlar" VALUES (532, 5, '52', 'Zeytinburnu');
INSERT INTO "GenelTanimlar" VALUES (533, 5, '52', 'Arnavutköy');
INSERT INTO "GenelTanimlar" VALUES (534, 5, '52', 'Bağcılar');
INSERT INTO "GenelTanimlar" VALUES (535, 5, '52', 'Bayrampaşa');
INSERT INTO "GenelTanimlar" VALUES (536, 5, '52', 'Esenyurt');
INSERT INTO "GenelTanimlar" VALUES (537, 5, '52', 'Maltepe');
INSERT INTO "GenelTanimlar" VALUES (538, 5, '52', 'Silivri');
INSERT INTO "GenelTanimlar" VALUES (539, 5, '52', 'Şişli');
INSERT INTO "GenelTanimlar" VALUES (540, 5, '52', 'Üsküdar');
INSERT INTO "GenelTanimlar" VALUES (541, 5, '52', 'Bakırköy');
INSERT INTO "GenelTanimlar" VALUES (542, 5, '52', 'Başakşehir');
INSERT INTO "GenelTanimlar" VALUES (543, 5, '52', 'Beşiktaş');
INSERT INTO "GenelTanimlar" VALUES (544, 5, '52', 'Beylikdüzü');
INSERT INTO "GenelTanimlar" VALUES (545, 5, '52', 'Büyükçekmece');
INSERT INTO "GenelTanimlar" VALUES (546, 5, '52', 'Kadıköy');
INSERT INTO "GenelTanimlar" VALUES (547, 5, '52', 'Sancaktepe');
INSERT INTO "GenelTanimlar" VALUES (548, 5, '52', 'Sultanbeyli');
INSERT INTO "GenelTanimlar" VALUES (549, 5, '52', 'Ataşehir');
INSERT INTO "GenelTanimlar" VALUES (550, 5, '52', 'Bahçelievler');
INSERT INTO "GenelTanimlar" VALUES (551, 5, '52', 'Beyoğlu');
INSERT INTO "GenelTanimlar" VALUES (552, 5, '52', 'Çekmeköy');
INSERT INTO "GenelTanimlar" VALUES (553, 5, '52', 'Güngören');
INSERT INTO "GenelTanimlar" VALUES (554, 5, '52', 'Küçükçekmece');
INSERT INTO "GenelTanimlar" VALUES (555, 5, '52', 'Şile');
INSERT INTO "GenelTanimlar" VALUES (556, 5, '52', 'Ümraniye');
INSERT INTO "GenelTanimlar" VALUES (557, 5, '53', 'Balçova');
INSERT INTO "GenelTanimlar" VALUES (558, 5, '53', 'Bayındır');
INSERT INTO "GenelTanimlar" VALUES (559, 5, '53', 'Çiğli');
INSERT INTO "GenelTanimlar" VALUES (560, 5, '53', 'Güzelbahçe');
INSERT INTO "GenelTanimlar" VALUES (561, 5, '53', 'Karabağlar');
INSERT INTO "GenelTanimlar" VALUES (562, 5, '53', 'Karaburun');
INSERT INTO "GenelTanimlar" VALUES (563, 5, '53', 'Kemalpaşa');
INSERT INTO "GenelTanimlar" VALUES (564, 5, '53', 'Konak');
INSERT INTO "GenelTanimlar" VALUES (565, 5, '53', 'Ödemiş');
INSERT INTO "GenelTanimlar" VALUES (566, 5, '53', 'Tire');
INSERT INTO "GenelTanimlar" VALUES (567, 5, '53', 'Bayraklı');
INSERT INTO "GenelTanimlar" VALUES (568, 5, '53', 'Dikili');
INSERT INTO "GenelTanimlar" VALUES (569, 5, '53', 'Seferihisar');
INSERT INTO "GenelTanimlar" VALUES (570, 5, '53', 'Aliağa');
INSERT INTO "GenelTanimlar" VALUES (571, 5, '53', 'Beydağ');
INSERT INTO "GenelTanimlar" VALUES (572, 5, '53', 'Buca');
INSERT INTO "GenelTanimlar" VALUES (573, 5, '53', 'Çeşme');
INSERT INTO "GenelTanimlar" VALUES (574, 5, '53', 'Foça');
INSERT INTO "GenelTanimlar" VALUES (575, 5, '53', 'Gaziemir');
INSERT INTO "GenelTanimlar" VALUES (576, 5, '53', 'Kınık');
INSERT INTO "GenelTanimlar" VALUES (577, 5, '53', 'Kiraz');
INSERT INTO "GenelTanimlar" VALUES (578, 5, '53', 'Torbalı');
INSERT INTO "GenelTanimlar" VALUES (579, 5, '53', 'Urla');
INSERT INTO "GenelTanimlar" VALUES (580, 5, '53', 'Bergama');
INSERT INTO "GenelTanimlar" VALUES (581, 5, '53', 'Bornova');
INSERT INTO "GenelTanimlar" VALUES (582, 5, '53', 'Karşıyaka');
INSERT INTO "GenelTanimlar" VALUES (583, 5, '53', 'Menderes(Cumaovası)');
INSERT INTO "GenelTanimlar" VALUES (584, 5, '53', 'Menemen');
INSERT INTO "GenelTanimlar" VALUES (585, 5, '53', 'Narlıdere');
INSERT INTO "GenelTanimlar" VALUES (586, 5, '53', 'Selçuk');
INSERT INTO "GenelTanimlar" VALUES (587, 5, '54', 'Arpaçay');
INSERT INTO "GenelTanimlar" VALUES (588, 5, '54', 'Kağızman');
INSERT INTO "GenelTanimlar" VALUES (589, 5, '54', 'Susuz');
INSERT INTO "GenelTanimlar" VALUES (590, 5, '54', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (591, 5, '54', 'Akyaka');
INSERT INTO "GenelTanimlar" VALUES (592, 5, '54', 'Digor');
INSERT INTO "GenelTanimlar" VALUES (593, 5, '54', 'Sarıkamış');
INSERT INTO "GenelTanimlar" VALUES (594, 5, '54', 'Selim');
INSERT INTO "GenelTanimlar" VALUES (595, 5, '55', 'Azdavay');
INSERT INTO "GenelTanimlar" VALUES (596, 5, '55', 'Hanönü(Gökçeağaç)');
INSERT INTO "GenelTanimlar" VALUES (597, 5, '55', 'İnebolu');
INSERT INTO "GenelTanimlar" VALUES (598, 5, '55', 'Araç');
INSERT INTO "GenelTanimlar" VALUES (599, 5, '55', 'Bozkurt');
INSERT INTO "GenelTanimlar" VALUES (600, 5, '55', 'Cide');
INSERT INTO "GenelTanimlar" VALUES (601, 5, '55', 'Çatalzeytin');
INSERT INTO "GenelTanimlar" VALUES (602, 5, '55', 'Daday');
INSERT INTO "GenelTanimlar" VALUES (603, 5, '55', 'Devrekani');
INSERT INTO "GenelTanimlar" VALUES (604, 5, '55', 'Doğanyurt');
INSERT INTO "GenelTanimlar" VALUES (605, 5, '55', 'İhsangazi');
INSERT INTO "GenelTanimlar" VALUES (606, 5, '55', 'Küre');
INSERT INTO "GenelTanimlar" VALUES (607, 5, '55', 'Seydiler');
INSERT INTO "GenelTanimlar" VALUES (608, 5, '55', 'Taşköprü');
INSERT INTO "GenelTanimlar" VALUES (609, 5, '55', 'Abana');
INSERT INTO "GenelTanimlar" VALUES (610, 5, '55', 'Ağlı');
INSERT INTO "GenelTanimlar" VALUES (611, 5, '55', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (612, 5, '55', 'Pınarbaşı');
INSERT INTO "GenelTanimlar" VALUES (613, 5, '55', 'Tosya');
INSERT INTO "GenelTanimlar" VALUES (614, 5, '55', 'Şenpazar');
INSERT INTO "GenelTanimlar" VALUES (615, 5, '56', 'Hacılar');
INSERT INTO "GenelTanimlar" VALUES (616, 5, '56', 'Akkışla');
INSERT INTO "GenelTanimlar" VALUES (617, 5, '56', 'Bünyan');
INSERT INTO "GenelTanimlar" VALUES (618, 5, '56', 'Tomarza');
INSERT INTO "GenelTanimlar" VALUES (619, 5, '56', 'Yahyalı');
INSERT INTO "GenelTanimlar" VALUES (620, 5, '56', 'Felahiye');
INSERT INTO "GenelTanimlar" VALUES (621, 5, '56', 'İncesu');
INSERT INTO "GenelTanimlar" VALUES (622, 5, '56', 'Kocasinan');
INSERT INTO "GenelTanimlar" VALUES (623, 5, '56', 'Pınarbaşı');
INSERT INTO "GenelTanimlar" VALUES (624, 5, '56', 'Sarız');
INSERT INTO "GenelTanimlar" VALUES (625, 5, '56', 'Talas');
INSERT INTO "GenelTanimlar" VALUES (626, 5, '56', 'Develi');
INSERT INTO "GenelTanimlar" VALUES (627, 5, '56', 'Melikgazi');
INSERT INTO "GenelTanimlar" VALUES (628, 5, '56', 'Özvatan(Çukur)');
INSERT INTO "GenelTanimlar" VALUES (629, 5, '56', 'Sarıoğlan');
INSERT INTO "GenelTanimlar" VALUES (630, 5, '56', 'Yeşilhisar');
INSERT INTO "GenelTanimlar" VALUES (631, 5, '57', 'Demirköy');
INSERT INTO "GenelTanimlar" VALUES (632, 5, '57', 'Kofçaz');
INSERT INTO "GenelTanimlar" VALUES (633, 5, '57', 'Pehlivanköy');
INSERT INTO "GenelTanimlar" VALUES (634, 5, '57', 'Vize');
INSERT INTO "GenelTanimlar" VALUES (635, 5, '57', 'Lüleburgaz');
INSERT INTO "GenelTanimlar" VALUES (636, 5, '57', 'Babaeski');
INSERT INTO "GenelTanimlar" VALUES (637, 5, '57', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (638, 5, '57', 'Pınarhisar');
INSERT INTO "GenelTanimlar" VALUES (639, 5, '58', 'Akpınar');
INSERT INTO "GenelTanimlar" VALUES (640, 5, '58', 'Boztepe');
INSERT INTO "GenelTanimlar" VALUES (641, 5, '58', 'Kaman');
INSERT INTO "GenelTanimlar" VALUES (642, 5, '58', 'Mucur');
INSERT INTO "GenelTanimlar" VALUES (643, 5, '58', 'Akçakent');
INSERT INTO "GenelTanimlar" VALUES (644, 5, '58', 'Çiçekdağı');
INSERT INTO "GenelTanimlar" VALUES (645, 5, '58', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (646, 5, '59', 'Dilovası');
INSERT INTO "GenelTanimlar" VALUES (647, 5, '59', 'Körfez(Tütünçiftlik)');
INSERT INTO "GenelTanimlar" VALUES (648, 5, '59', 'Darıca');
INSERT INTO "GenelTanimlar" VALUES (649, 5, '59', 'Derince');
INSERT INTO "GenelTanimlar" VALUES (650, 5, '59', 'Gebze');
INSERT INTO "GenelTanimlar" VALUES (651, 5, '59', 'Karamürsel');
INSERT INTO "GenelTanimlar" VALUES (652, 5, '59', 'Başiskele');
INSERT INTO "GenelTanimlar" VALUES (653, 5, '59', 'Çayırova');
INSERT INTO "GenelTanimlar" VALUES (654, 5, '59', 'Gölcük');
INSERT INTO "GenelTanimlar" VALUES (655, 5, '59', 'İzmit');
INSERT INTO "GenelTanimlar" VALUES (656, 5, '59', 'Kandıra');
INSERT INTO "GenelTanimlar" VALUES (657, 5, '59', 'Kartepe');
INSERT INTO "GenelTanimlar" VALUES (658, 5, '64', 'Çağlıyancerit');
INSERT INTO "GenelTanimlar" VALUES (659, 5, '64', 'Nurhak');
INSERT INTO "GenelTanimlar" VALUES (660, 5, '64', 'Andırın');
INSERT INTO "GenelTanimlar" VALUES (661, 5, '64', 'Ekinözü');
INSERT INTO "GenelTanimlar" VALUES (662, 5, '64', 'Afşin');
INSERT INTO "GenelTanimlar" VALUES (663, 5, '64', 'Elbistan');
INSERT INTO "GenelTanimlar" VALUES (664, 5, '64', 'Pazarcık');
INSERT INTO "GenelTanimlar" VALUES (665, 5, '64', 'Göksun');
INSERT INTO "GenelTanimlar" VALUES (666, 5, '64', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (667, 5, '64', 'Türkoğlu');
INSERT INTO "GenelTanimlar" VALUES (668, 5, '60', 'Akören');
INSERT INTO "GenelTanimlar" VALUES (669, 5, '60', 'Çumra');
INSERT INTO "GenelTanimlar" VALUES (670, 5, '60', 'Derbent');
INSERT INTO "GenelTanimlar" VALUES (671, 5, '60', 'Doğanhisar');
INSERT INTO "GenelTanimlar" VALUES (672, 5, '60', 'Emirgazi');
INSERT INTO "GenelTanimlar" VALUES (673, 5, '60', 'Ereğli');
INSERT INTO "GenelTanimlar" VALUES (674, 5, '60', 'Ilgın');
INSERT INTO "GenelTanimlar" VALUES (675, 5, '60', 'Sarayönü');
INSERT INTO "GenelTanimlar" VALUES (676, 5, '60', 'Bozkır');
INSERT INTO "GenelTanimlar" VALUES (677, 5, '60', 'Güneysınır');
INSERT INTO "GenelTanimlar" VALUES (678, 5, '60', 'Hadim');
INSERT INTO "GenelTanimlar" VALUES (679, 5, '60', 'Hüyük');
INSERT INTO "GenelTanimlar" VALUES (680, 5, '60', 'Seydişehir');
INSERT INTO "GenelTanimlar" VALUES (681, 5, '60', 'Yunak');
INSERT INTO "GenelTanimlar" VALUES (682, 5, '60', 'Akşehir');
INSERT INTO "GenelTanimlar" VALUES (683, 5, '60', 'Altınekin');
INSERT INTO "GenelTanimlar" VALUES (684, 5, '60', 'Cihanbeyli');
INSERT INTO "GenelTanimlar" VALUES (685, 5, '60', 'Çeltik');
INSERT INTO "GenelTanimlar" VALUES (686, 5, '60', 'Derebucak');
INSERT INTO "GenelTanimlar" VALUES (687, 5, '60', 'Kadınhanı');
INSERT INTO "GenelTanimlar" VALUES (688, 5, '60', 'Karapınar');
INSERT INTO "GenelTanimlar" VALUES (689, 5, '60', 'Kulu');
INSERT INTO "GenelTanimlar" VALUES (690, 5, '60', 'Selçuklu');
INSERT INTO "GenelTanimlar" VALUES (691, 5, '60', 'Yalıhüyük');
INSERT INTO "GenelTanimlar" VALUES (692, 5, '60', 'Ahırlı');
INSERT INTO "GenelTanimlar" VALUES (693, 5, '60', 'Beyşehir');
INSERT INTO "GenelTanimlar" VALUES (694, 5, '60', 'Halkapınar');
INSERT INTO "GenelTanimlar" VALUES (695, 5, '60', 'Karatay');
INSERT INTO "GenelTanimlar" VALUES (696, 5, '60', 'Meram');
INSERT INTO "GenelTanimlar" VALUES (697, 5, '60', 'Taşkent');
INSERT INTO "GenelTanimlar" VALUES (698, 5, '60', 'Tuzlukçu');
INSERT INTO "GenelTanimlar" VALUES (699, 5, '60', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (700, 5, '61', 'Çavdarhisar');
INSERT INTO "GenelTanimlar" VALUES (701, 5, '61', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (702, 5, '61', 'Tavşanlı');
INSERT INTO "GenelTanimlar" VALUES (703, 5, '61', 'Domaniç');
INSERT INTO "GenelTanimlar" VALUES (704, 5, '61', 'Dumlupınar');
INSERT INTO "GenelTanimlar" VALUES (705, 5, '61', 'Emet');
INSERT INTO "GenelTanimlar" VALUES (706, 5, '61', 'Gediz');
INSERT INTO "GenelTanimlar" VALUES (707, 5, '61', 'Hisarcık');
INSERT INTO "GenelTanimlar" VALUES (708, 5, '61', 'Pazarlar');
INSERT INTO "GenelTanimlar" VALUES (709, 5, '61', 'Şaphane');
INSERT INTO "GenelTanimlar" VALUES (710, 5, '61', 'Altıntaş');
INSERT INTO "GenelTanimlar" VALUES (711, 5, '61', 'Aslanapa');
INSERT INTO "GenelTanimlar" VALUES (712, 5, '61', 'Simav');
INSERT INTO "GenelTanimlar" VALUES (713, 5, '62', 'Akçadağ');
INSERT INTO "GenelTanimlar" VALUES (714, 5, '62', 'Doğanşehir');
INSERT INTO "GenelTanimlar" VALUES (715, 5, '62', 'Kuluncak');
INSERT INTO "GenelTanimlar" VALUES (716, 5, '62', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (717, 5, '62', 'Arapkir(Arapgir)');
INSERT INTO "GenelTanimlar" VALUES (718, 5, '62', 'Battalgazi');
INSERT INTO "GenelTanimlar" VALUES (719, 5, '62', 'Hekimhan');
INSERT INTO "GenelTanimlar" VALUES (720, 5, '62', 'Yeşilyurt');
INSERT INTO "GenelTanimlar" VALUES (721, 5, '62', 'Darende');
INSERT INTO "GenelTanimlar" VALUES (722, 5, '62', 'Pütürge(Pötürge)');
INSERT INTO "GenelTanimlar" VALUES (723, 5, '62', 'Yazıhan');
INSERT INTO "GenelTanimlar" VALUES (724, 5, '62', 'Arguvan');
INSERT INTO "GenelTanimlar" VALUES (725, 5, '62', 'Doğanyol');
INSERT INTO "GenelTanimlar" VALUES (726, 5, '62', 'Kale');
INSERT INTO "GenelTanimlar" VALUES (727, 5, '63', 'Gölmarmara');
INSERT INTO "GenelTanimlar" VALUES (728, 5, '63', 'Gördes');
INSERT INTO "GenelTanimlar" VALUES (729, 5, '63', 'Kula');
INSERT INTO "GenelTanimlar" VALUES (730, 5, '63', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (731, 5, '63', 'Sarıgöl');
INSERT INTO "GenelTanimlar" VALUES (732, 5, '63', 'Selendi');
INSERT INTO "GenelTanimlar" VALUES (733, 5, '63', 'Soma');
INSERT INTO "GenelTanimlar" VALUES (734, 5, '63', 'Ahmetli');
INSERT INTO "GenelTanimlar" VALUES (735, 5, '63', 'Demirci');
INSERT INTO "GenelTanimlar" VALUES (736, 5, '63', 'Salihli');
INSERT INTO "GenelTanimlar" VALUES (737, 5, '63', 'Köprübaşı');
INSERT INTO "GenelTanimlar" VALUES (738, 5, '63', 'Saruhanlı');
INSERT INTO "GenelTanimlar" VALUES (739, 5, '63', 'Akhisar');
INSERT INTO "GenelTanimlar" VALUES (740, 5, '63', 'Alaşehir');
INSERT INTO "GenelTanimlar" VALUES (741, 5, '63', 'Kırkağaç');
INSERT INTO "GenelTanimlar" VALUES (742, 5, '63', 'Turgutlu');
INSERT INTO "GenelTanimlar" VALUES (743, 5, '65', 'Dargeçit');
INSERT INTO "GenelTanimlar" VALUES (744, 5, '65', 'Derik');
INSERT INTO "GenelTanimlar" VALUES (745, 5, '65', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (746, 5, '65', 'Mazıdağı');
INSERT INTO "GenelTanimlar" VALUES (747, 5, '65', 'Kızıltepe');
INSERT INTO "GenelTanimlar" VALUES (748, 5, '65', 'Midyat(Estel)');
INSERT INTO "GenelTanimlar" VALUES (749, 5, '65', 'Nusaybin');
INSERT INTO "GenelTanimlar" VALUES (750, 5, '65', 'Ömerli');
INSERT INTO "GenelTanimlar" VALUES (751, 5, '65', 'Savur');
INSERT INTO "GenelTanimlar" VALUES (752, 5, '65', 'Yeşilli');
INSERT INTO "GenelTanimlar" VALUES (753, 5, '66', 'Köyceğiz');
INSERT INTO "GenelTanimlar" VALUES (754, 5, '66', 'Milas');
INSERT INTO "GenelTanimlar" VALUES (755, 5, '66', 'Dalaman');
INSERT INTO "GenelTanimlar" VALUES (756, 5, '66', 'Datça');
INSERT INTO "GenelTanimlar" VALUES (757, 5, '66', 'Kavaklıdere');
INSERT INTO "GenelTanimlar" VALUES (758, 5, '66', 'Marmaris');
INSERT INTO "GenelTanimlar" VALUES (759, 5, '66', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (760, 5, '66', 'Ortaca');
INSERT INTO "GenelTanimlar" VALUES (761, 5, '66', 'Bodrum');
INSERT INTO "GenelTanimlar" VALUES (762, 5, '66', 'Fethiye');
INSERT INTO "GenelTanimlar" VALUES (763, 5, '66', 'Ula');
INSERT INTO "GenelTanimlar" VALUES (764, 5, '66', 'Yatağan');
INSERT INTO "GenelTanimlar" VALUES (765, 5, '67', 'Hasköy');
INSERT INTO "GenelTanimlar" VALUES (766, 5, '67', 'Malazgirt');
INSERT INTO "GenelTanimlar" VALUES (767, 5, '67', 'Bulanık');
INSERT INTO "GenelTanimlar" VALUES (768, 5, '67', 'Varto');
INSERT INTO "GenelTanimlar" VALUES (769, 5, '67', 'Korkut');
INSERT INTO "GenelTanimlar" VALUES (770, 5, '67', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (771, 5, '68', 'Avanos');
INSERT INTO "GenelTanimlar" VALUES (772, 5, '68', 'Kozaklı');
INSERT INTO "GenelTanimlar" VALUES (773, 5, '68', 'Derinkuyu');
INSERT INTO "GenelTanimlar" VALUES (774, 5, '68', 'Gülşehir');
INSERT INTO "GenelTanimlar" VALUES (775, 5, '68', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (776, 5, '68', 'Acıgöl');
INSERT INTO "GenelTanimlar" VALUES (777, 5, '68', 'Hacıbektaş');
INSERT INTO "GenelTanimlar" VALUES (778, 5, '68', 'Ürgüp');
INSERT INTO "GenelTanimlar" VALUES (779, 5, '69', 'Çamardı');
INSERT INTO "GenelTanimlar" VALUES (780, 5, '69', 'Ulukışla');
INSERT INTO "GenelTanimlar" VALUES (781, 5, '69', 'Çiftlik(Özyurt)');
INSERT INTO "GenelTanimlar" VALUES (782, 5, '69', 'Altunhisar');
INSERT INTO "GenelTanimlar" VALUES (783, 5, '69', 'Bor');
INSERT INTO "GenelTanimlar" VALUES (784, 5, '69', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (785, 5, '70', 'Akkuş');
INSERT INTO "GenelTanimlar" VALUES (786, 5, '70', 'Çatalpınar');
INSERT INTO "GenelTanimlar" VALUES (787, 5, '70', 'Çaybaşı');
INSERT INTO "GenelTanimlar" VALUES (788, 5, '70', 'Gülyalı');
INSERT INTO "GenelTanimlar" VALUES (789, 5, '70', 'Aybastı');
INSERT INTO "GenelTanimlar" VALUES (790, 5, '70', 'Fatsa');
INSERT INTO "GenelTanimlar" VALUES (791, 5, '70', 'İkizce');
INSERT INTO "GenelTanimlar" VALUES (792, 5, '70', 'Kumru');
INSERT INTO "GenelTanimlar" VALUES (793, 5, '70', 'Ulubey');
INSERT INTO "GenelTanimlar" VALUES (794, 5, '70', 'Gölköy');
INSERT INTO "GenelTanimlar" VALUES (795, 5, '70', 'Gürgentepe');
INSERT INTO "GenelTanimlar" VALUES (796, 5, '70', 'Kabadüz(Karadüz)');
INSERT INTO "GenelTanimlar" VALUES (797, 5, '70', 'Korgan');
INSERT INTO "GenelTanimlar" VALUES (798, 5, '70', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (799, 5, '70', 'Mesudiye');
INSERT INTO "GenelTanimlar" VALUES (800, 5, '70', 'Ünye');
INSERT INTO "GenelTanimlar" VALUES (801, 5, '70', 'Çamaş');
INSERT INTO "GenelTanimlar" VALUES (802, 5, '70', 'Kabataş');
INSERT INTO "GenelTanimlar" VALUES (803, 5, '70', 'Perşembe');
INSERT INTO "GenelTanimlar" VALUES (804, 5, '71', 'Derepazarı');
INSERT INTO "GenelTanimlar" VALUES (805, 5, '71', 'Çamlıhemşin');
INSERT INTO "GenelTanimlar" VALUES (806, 5, '71', 'Ardeşen');
INSERT INTO "GenelTanimlar" VALUES (807, 5, '71', 'Çayeli');
INSERT INTO "GenelTanimlar" VALUES (808, 5, '71', 'Fındıklı');
INSERT INTO "GenelTanimlar" VALUES (809, 5, '71', 'Hemşin');
INSERT INTO "GenelTanimlar" VALUES (810, 5, '71', 'İyidere');
INSERT INTO "GenelTanimlar" VALUES (811, 5, '71', 'Kalkandere');
INSERT INTO "GenelTanimlar" VALUES (812, 5, '71', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (813, 5, '71', 'Güneysu');
INSERT INTO "GenelTanimlar" VALUES (814, 5, '71', 'İkizdere');
INSERT INTO "GenelTanimlar" VALUES (815, 5, '71', 'Pazar');
INSERT INTO "GenelTanimlar" VALUES (816, 5, '72', 'Arifiye');
INSERT INTO "GenelTanimlar" VALUES (817, 5, '72', 'Hendek');
INSERT INTO "GenelTanimlar" VALUES (818, 5, '72', 'Karasu');
INSERT INTO "GenelTanimlar" VALUES (819, 5, '72', 'Kaynarca');
INSERT INTO "GenelTanimlar" VALUES (820, 5, '72', 'Sapanca');
INSERT INTO "GenelTanimlar" VALUES (821, 5, '72', 'Serdivan');
INSERT INTO "GenelTanimlar" VALUES (822, 5, '72', 'Akyazı');
INSERT INTO "GenelTanimlar" VALUES (823, 5, '72', 'Geyve');
INSERT INTO "GenelTanimlar" VALUES (824, 5, '72', 'Pamukova');
INSERT INTO "GenelTanimlar" VALUES (825, 5, '72', 'Karapürçek');
INSERT INTO "GenelTanimlar" VALUES (826, 5, '72', 'Söğütlü');
INSERT INTO "GenelTanimlar" VALUES (827, 5, '72', 'Adapazarı');
INSERT INTO "GenelTanimlar" VALUES (828, 5, '72', 'Erenler');
INSERT INTO "GenelTanimlar" VALUES (829, 5, '72', 'Ferizli');
INSERT INTO "GenelTanimlar" VALUES (830, 5, '72', 'Kocaali');
INSERT INTO "GenelTanimlar" VALUES (831, 5, '72', 'Taraklı');
INSERT INTO "GenelTanimlar" VALUES (832, 5, '73', 'Canik');
INSERT INTO "GenelTanimlar" VALUES (833, 5, '73', 'Çarşamba');
INSERT INTO "GenelTanimlar" VALUES (834, 5, '73', 'Terme');
INSERT INTO "GenelTanimlar" VALUES (835, 5, '73', 'Vezirköprü');
INSERT INTO "GenelTanimlar" VALUES (836, 5, '73', 'Asarcık');
INSERT INTO "GenelTanimlar" VALUES (837, 5, '73', 'Havza');
INSERT INTO "GenelTanimlar" VALUES (838, 5, '73', 'İlkadım');
INSERT INTO "GenelTanimlar" VALUES (839, 5, '73', 'Ondokuzmayıs(Ballıca)');
INSERT INTO "GenelTanimlar" VALUES (840, 5, '73', 'Salıpazarı');
INSERT INTO "GenelTanimlar" VALUES (841, 5, '73', 'Ayvacık');
INSERT INTO "GenelTanimlar" VALUES (842, 5, '73', 'Kavak');
INSERT INTO "GenelTanimlar" VALUES (843, 5, '73', 'Ladik');
INSERT INTO "GenelTanimlar" VALUES (844, 5, '73', 'Tekkeköy');
INSERT INTO "GenelTanimlar" VALUES (845, 5, '73', 'Yakakent');
INSERT INTO "GenelTanimlar" VALUES (846, 5, '73', 'Alaçam');
INSERT INTO "GenelTanimlar" VALUES (847, 5, '73', 'Atakum');
INSERT INTO "GenelTanimlar" VALUES (848, 5, '73', 'Bafra');
INSERT INTO "GenelTanimlar" VALUES (849, 5, '74', 'Aydınlar');
INSERT INTO "GenelTanimlar" VALUES (850, 5, '74', 'Baykan');
INSERT INTO "GenelTanimlar" VALUES (851, 5, '74', 'Pervari');
INSERT INTO "GenelTanimlar" VALUES (852, 5, '74', 'Şirvan');
INSERT INTO "GenelTanimlar" VALUES (853, 5, '74', 'Eruh');
INSERT INTO "GenelTanimlar" VALUES (854, 5, '74', 'Kurtalan');
INSERT INTO "GenelTanimlar" VALUES (855, 5, '74', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (856, 5, '75', 'Ayancık');
INSERT INTO "GenelTanimlar" VALUES (857, 5, '75', 'Boyabat');
INSERT INTO "GenelTanimlar" VALUES (858, 5, '75', 'Durağan');
INSERT INTO "GenelTanimlar" VALUES (859, 5, '75', 'Dikmen');
INSERT INTO "GenelTanimlar" VALUES (860, 5, '75', 'Erfelek');
INSERT INTO "GenelTanimlar" VALUES (861, 5, '75', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (862, 5, '75', 'Saraydüzü');
INSERT INTO "GenelTanimlar" VALUES (863, 5, '75', 'Türkeli');
INSERT INTO "GenelTanimlar" VALUES (864, 5, '75', 'Gerze');
INSERT INTO "GenelTanimlar" VALUES (865, 5, '76', 'Gürün');
INSERT INTO "GenelTanimlar" VALUES (866, 5, '76', 'Kangal');
INSERT INTO "GenelTanimlar" VALUES (867, 5, '76', 'Koyulhisar');
INSERT INTO "GenelTanimlar" VALUES (868, 5, '76', 'Gemerek');
INSERT INTO "GenelTanimlar" VALUES (869, 5, '76', 'Gölova');
INSERT INTO "GenelTanimlar" VALUES (870, 5, '76', 'Hafik');
INSERT INTO "GenelTanimlar" VALUES (871, 5, '76', 'Suşehri');
INSERT INTO "GenelTanimlar" VALUES (872, 5, '76', 'Şarkışla');
INSERT INTO "GenelTanimlar" VALUES (873, 5, '76', 'Yıldızeli');
INSERT INTO "GenelTanimlar" VALUES (874, 5, '76', 'Akıncılar');
INSERT INTO "GenelTanimlar" VALUES (875, 5, '76', 'Altınyayla');
INSERT INTO "GenelTanimlar" VALUES (876, 5, '76', 'Divriği');
INSERT INTO "GenelTanimlar" VALUES (877, 5, '76', 'Doğanşar');
INSERT INTO "GenelTanimlar" VALUES (878, 5, '76', 'İmranlı');
INSERT INTO "GenelTanimlar" VALUES (879, 5, '76', 'Ulaş');
INSERT INTO "GenelTanimlar" VALUES (880, 5, '76', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (881, 5, '76', 'Zara');
INSERT INTO "GenelTanimlar" VALUES (882, 5, '77', 'Çorlu');
INSERT INTO "GenelTanimlar" VALUES (883, 5, '77', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (884, 5, '77', 'Şarköy');
INSERT INTO "GenelTanimlar" VALUES (885, 5, '77', 'Çerkezköy');
INSERT INTO "GenelTanimlar" VALUES (886, 5, '77', 'Marmaraereğlisi');
INSERT INTO "GenelTanimlar" VALUES (887, 5, '77', 'Hayrabolu');
INSERT INTO "GenelTanimlar" VALUES (888, 5, '77', 'Malkara');
INSERT INTO "GenelTanimlar" VALUES (889, 5, '77', 'Muratlı');
INSERT INTO "GenelTanimlar" VALUES (890, 5, '77', 'Saray');
INSERT INTO "GenelTanimlar" VALUES (891, 5, '78', 'Almus');
INSERT INTO "GenelTanimlar" VALUES (892, 5, '78', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (893, 5, '78', 'Pazar');
INSERT INTO "GenelTanimlar" VALUES (894, 5, '78', 'Reşadiye');
INSERT INTO "GenelTanimlar" VALUES (895, 5, '78', 'Artova');
INSERT INTO "GenelTanimlar" VALUES (896, 5, '78', 'Erbaa');
INSERT INTO "GenelTanimlar" VALUES (897, 5, '78', 'Niksar');
INSERT INTO "GenelTanimlar" VALUES (898, 5, '78', 'Sulusaray');
INSERT INTO "GenelTanimlar" VALUES (899, 5, '78', 'Zile');
INSERT INTO "GenelTanimlar" VALUES (900, 5, '78', 'Başçiftlik');
INSERT INTO "GenelTanimlar" VALUES (901, 5, '78', 'Turhal');
INSERT INTO "GenelTanimlar" VALUES (902, 5, '78', 'Yeşilyurt');
INSERT INTO "GenelTanimlar" VALUES (903, 5, '79', 'Beşikdüzü');
INSERT INTO "GenelTanimlar" VALUES (904, 5, '79', 'Düzköy');
INSERT INTO "GenelTanimlar" VALUES (905, 5, '79', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (906, 5, '79', 'Tonya');
INSERT INTO "GenelTanimlar" VALUES (907, 5, '79', 'Çarşıbaşı');
INSERT INTO "GenelTanimlar" VALUES (908, 5, '79', 'Çaykara');
INSERT INTO "GenelTanimlar" VALUES (909, 5, '79', 'Sürmene');
INSERT INTO "GenelTanimlar" VALUES (910, 5, '79', 'Vakfıkebir');
INSERT INTO "GenelTanimlar" VALUES (911, 5, '79', 'Akçaabat');
INSERT INTO "GenelTanimlar" VALUES (912, 5, '79', 'Arsin');
INSERT INTO "GenelTanimlar" VALUES (913, 5, '79', 'Dernekpazarı');
INSERT INTO "GenelTanimlar" VALUES (914, 5, '79', 'Köprübaşı');
INSERT INTO "GenelTanimlar" VALUES (915, 5, '79', 'Maçka');
INSERT INTO "GenelTanimlar" VALUES (916, 5, '79', 'Of');
INSERT INTO "GenelTanimlar" VALUES (917, 5, '79', 'Şalpazarı');
INSERT INTO "GenelTanimlar" VALUES (918, 5, '79', 'Yomra');
INSERT INTO "GenelTanimlar" VALUES (919, 5, '79', 'Araklı');
INSERT INTO "GenelTanimlar" VALUES (920, 5, '79', 'Hayrat');
INSERT INTO "GenelTanimlar" VALUES (921, 5, '80', 'Hozat');
INSERT INTO "GenelTanimlar" VALUES (922, 5, '80', 'Mazgirt');
INSERT INTO "GenelTanimlar" VALUES (923, 5, '80', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (924, 5, '80', 'Pülümür');
INSERT INTO "GenelTanimlar" VALUES (925, 5, '80', 'Çemişgezek');
INSERT INTO "GenelTanimlar" VALUES (926, 5, '80', 'Ovacık');
INSERT INTO "GenelTanimlar" VALUES (927, 5, '80', 'Nazımiye');
INSERT INTO "GenelTanimlar" VALUES (928, 5, '80', 'Pertek');
INSERT INTO "GenelTanimlar" VALUES (929, 5, '81', 'Halfeti');
INSERT INTO "GenelTanimlar" VALUES (930, 5, '81', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (931, 5, '81', 'Siverek');
INSERT INTO "GenelTanimlar" VALUES (932, 5, '81', 'Akçakale');
INSERT INTO "GenelTanimlar" VALUES (933, 5, '81', 'Bozova');
INSERT INTO "GenelTanimlar" VALUES (934, 5, '81', 'Ceylanpınar');
INSERT INTO "GenelTanimlar" VALUES (935, 5, '81', 'Harran');
INSERT INTO "GenelTanimlar" VALUES (936, 5, '81', 'Suruç');
INSERT INTO "GenelTanimlar" VALUES (937, 5, '81', 'Birecik');
INSERT INTO "GenelTanimlar" VALUES (938, 5, '81', 'Hilvan');
INSERT INTO "GenelTanimlar" VALUES (939, 5, '81', 'Viranşehir');
INSERT INTO "GenelTanimlar" VALUES (940, 5, '82', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (941, 5, '82', 'Eşme');
INSERT INTO "GenelTanimlar" VALUES (942, 5, '82', 'Karahallı');
INSERT INTO "GenelTanimlar" VALUES (943, 5, '82', 'Ulubey');
INSERT INTO "GenelTanimlar" VALUES (944, 5, '82', 'Banaz');
INSERT INTO "GenelTanimlar" VALUES (945, 5, '82', 'Sivaslı');
INSERT INTO "GenelTanimlar" VALUES (946, 5, '83', 'Çatak');
INSERT INTO "GenelTanimlar" VALUES (947, 5, '83', 'Edremit(Gümüşdere)');
INSERT INTO "GenelTanimlar" VALUES (948, 5, '83', 'Erciş');
INSERT INTO "GenelTanimlar" VALUES (949, 5, '83', 'Gevaş');
INSERT INTO "GenelTanimlar" VALUES (950, 5, '83', 'Gürpınar');
INSERT INTO "GenelTanimlar" VALUES (951, 5, '83', 'Saray');
INSERT INTO "GenelTanimlar" VALUES (952, 5, '83', 'Muradiye');
INSERT INTO "GenelTanimlar" VALUES (953, 5, '83', 'Başkale');
INSERT INTO "GenelTanimlar" VALUES (954, 5, '83', 'Çaldıran');
INSERT INTO "GenelTanimlar" VALUES (955, 5, '83', 'Özalp');
INSERT INTO "GenelTanimlar" VALUES (956, 5, '83', 'Bahçesaray');
INSERT INTO "GenelTanimlar" VALUES (957, 5, '83', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (958, 5, '84', 'Akdağmadeni');
INSERT INTO "GenelTanimlar" VALUES (959, 5, '84', 'Kadışehri');
INSERT INTO "GenelTanimlar" VALUES (960, 5, '84', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (961, 5, '84', 'Şefaatli');
INSERT INTO "GenelTanimlar" VALUES (962, 5, '84', 'Yenifakılı');
INSERT INTO "GenelTanimlar" VALUES (963, 5, '84', 'Boğazlıyan');
INSERT INTO "GenelTanimlar" VALUES (964, 5, '84', 'Aydıncık');
INSERT INTO "GenelTanimlar" VALUES (965, 5, '84', 'Sorgun');
INSERT INTO "GenelTanimlar" VALUES (966, 5, '84', 'Çandır');
INSERT INTO "GenelTanimlar" VALUES (967, 5, '84', 'Çayıralan');
INSERT INTO "GenelTanimlar" VALUES (968, 5, '84', 'Çekerek');
INSERT INTO "GenelTanimlar" VALUES (969, 5, '84', 'Saraykent');
INSERT INTO "GenelTanimlar" VALUES (970, 5, '84', 'Sarıkaya');
INSERT INTO "GenelTanimlar" VALUES (971, 5, '84', 'Yerköy');
INSERT INTO "GenelTanimlar" VALUES (972, 5, '85', 'Gökçebey');
INSERT INTO "GenelTanimlar" VALUES (973, 5, '85', 'Devrek');
INSERT INTO "GenelTanimlar" VALUES (974, 5, '85', 'Karadenizereğli');
INSERT INTO "GenelTanimlar" VALUES (975, 5, '85', 'Çaycuma');
INSERT INTO "GenelTanimlar" VALUES (976, 5, '85', 'Alaplı');
INSERT INTO "GenelTanimlar" VALUES (977, 5, '85', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (978, 5, '86', 'Ağaçören');
INSERT INTO "GenelTanimlar" VALUES (979, 5, '86', 'Gülağaç');
INSERT INTO "GenelTanimlar" VALUES (980, 5, '86', 'Güzelyurt');
INSERT INTO "GenelTanimlar" VALUES (981, 5, '86', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (982, 5, '86', 'Ortaköy');
INSERT INTO "GenelTanimlar" VALUES (983, 5, '86', 'Eskil');
INSERT INTO "GenelTanimlar" VALUES (984, 5, '86', 'Sarıyahşi');
INSERT INTO "GenelTanimlar" VALUES (985, 5, '87', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (986, 5, '87', 'Aydıntepe');
INSERT INTO "GenelTanimlar" VALUES (987, 5, '87', 'Demirözü');
INSERT INTO "GenelTanimlar" VALUES (988, 5, '88', 'Ayrancı');
INSERT INTO "GenelTanimlar" VALUES (989, 5, '88', 'Başyayla');
INSERT INTO "GenelTanimlar" VALUES (990, 5, '88', 'Ermenek');
INSERT INTO "GenelTanimlar" VALUES (991, 5, '88', 'Sarıveliler');
INSERT INTO "GenelTanimlar" VALUES (992, 5, '88', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (993, 5, '88', 'Kazımkarabekir');
INSERT INTO "GenelTanimlar" VALUES (994, 5, '89', 'Delice');
INSERT INTO "GenelTanimlar" VALUES (995, 5, '89', 'Keskin');
INSERT INTO "GenelTanimlar" VALUES (996, 5, '89', 'Balışeyh');
INSERT INTO "GenelTanimlar" VALUES (997, 5, '89', 'Yahşihan');
INSERT INTO "GenelTanimlar" VALUES (998, 5, '89', 'Bahşili');
INSERT INTO "GenelTanimlar" VALUES (999, 5, '89', 'Çelebi');
INSERT INTO "GenelTanimlar" VALUES (1000, 5, '89', 'Karakeçili');
INSERT INTO "GenelTanimlar" VALUES (1001, 5, '89', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1002, 5, '89', 'Sulakyurt');
INSERT INTO "GenelTanimlar" VALUES (1003, 5, '90', 'Beşiri');
INSERT INTO "GenelTanimlar" VALUES (1004, 5, '90', 'Kozluk');
INSERT INTO "GenelTanimlar" VALUES (1005, 5, '90', 'Gercüş');
INSERT INTO "GenelTanimlar" VALUES (1006, 5, '90', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1007, 5, '90', 'Hasankeyf');
INSERT INTO "GenelTanimlar" VALUES (1008, 5, '90', 'Sason');
INSERT INTO "GenelTanimlar" VALUES (1009, 5, '91', 'Cizre');
INSERT INTO "GenelTanimlar" VALUES (1010, 5, '91', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1011, 5, '91', 'Beytüşşebap');
INSERT INTO "GenelTanimlar" VALUES (1012, 5, '91', 'İdil');
INSERT INTO "GenelTanimlar" VALUES (1013, 5, '91', 'Uludere');
INSERT INTO "GenelTanimlar" VALUES (1014, 5, '91', 'Güçlükonak');
INSERT INTO "GenelTanimlar" VALUES (1015, 5, '91', 'Silopi');
INSERT INTO "GenelTanimlar" VALUES (1016, 5, '92', 'Amasra');
INSERT INTO "GenelTanimlar" VALUES (1017, 5, '92', 'Kurucaşile');
INSERT INTO "GenelTanimlar" VALUES (1018, 5, '92', 'Ulus');
INSERT INTO "GenelTanimlar" VALUES (1019, 5, '92', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1020, 5, '93', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1021, 5, '93', 'Çıldır');
INSERT INTO "GenelTanimlar" VALUES (1022, 5, '93', 'Damal');
INSERT INTO "GenelTanimlar" VALUES (1023, 5, '93', 'Hanak');
INSERT INTO "GenelTanimlar" VALUES (1024, 5, '93', 'Posof');
INSERT INTO "GenelTanimlar" VALUES (1025, 5, '93', 'Göle');
INSERT INTO "GenelTanimlar" VALUES (1026, 5, '94', 'Aralık');
INSERT INTO "GenelTanimlar" VALUES (1027, 5, '94', 'Tuzluca');
INSERT INTO "GenelTanimlar" VALUES (1028, 5, '94', 'Karakoyunlu');
INSERT INTO "GenelTanimlar" VALUES (1029, 5, '94', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1030, 5, '95', 'Armutlu');
INSERT INTO "GenelTanimlar" VALUES (1031, 5, '95', 'Çınarcık');
INSERT INTO "GenelTanimlar" VALUES (1032, 5, '95', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1033, 5, '95', 'Altınova');
INSERT INTO "GenelTanimlar" VALUES (1034, 5, '95', 'Çiftlikköy');
INSERT INTO "GenelTanimlar" VALUES (1035, 5, '95', 'Termal');
INSERT INTO "GenelTanimlar" VALUES (1036, 5, '96', 'Ovacık');
INSERT INTO "GenelTanimlar" VALUES (1037, 5, '96', 'Yenice');
INSERT INTO "GenelTanimlar" VALUES (1038, 5, '96', 'Eflani');
INSERT INTO "GenelTanimlar" VALUES (1039, 5, '96', 'Eskipazar');
INSERT INTO "GenelTanimlar" VALUES (1040, 5, '96', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1041, 5, '96', 'Safranbolu');
INSERT INTO "GenelTanimlar" VALUES (1042, 5, '97', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1043, 5, '97', 'Elbeyli');
INSERT INTO "GenelTanimlar" VALUES (1044, 5, '97', 'Musabeyli');
INSERT INTO "GenelTanimlar" VALUES (1045, 5, '97', 'Polateli');
INSERT INTO "GenelTanimlar" VALUES (1046, 5, '98', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1047, 5, '98', 'Toprakkale');
INSERT INTO "GenelTanimlar" VALUES (1048, 5, '98', 'Kadirli');
INSERT INTO "GenelTanimlar" VALUES (1049, 5, '98', 'Bahçe');
INSERT INTO "GenelTanimlar" VALUES (1050, 5, '98', 'Düziçi');
INSERT INTO "GenelTanimlar" VALUES (1051, 5, '98', 'Hasanbeyli');
INSERT INTO "GenelTanimlar" VALUES (1052, 5, '98', 'Sumbas');
INSERT INTO "GenelTanimlar" VALUES (1053, 5, '99', 'Akçakoca');
INSERT INTO "GenelTanimlar" VALUES (1054, 5, '99', 'Kaynaşlı');
INSERT INTO "GenelTanimlar" VALUES (1055, 5, '99', 'Yığılca');
INSERT INTO "GenelTanimlar" VALUES (1056, 5, '99', 'Cumayeri');
INSERT INTO "GenelTanimlar" VALUES (1057, 5, '99', 'Gölyaka');
INSERT INTO "GenelTanimlar" VALUES (1058, 5, '99', 'Çilimli');
INSERT INTO "GenelTanimlar" VALUES (1059, 5, '99', 'Gümüşova');
INSERT INTO "GenelTanimlar" VALUES (1060, 5, '99', 'Merkez');
INSERT INTO "GenelTanimlar" VALUES (1062, 6, '1', 'Daire');
INSERT INTO "GenelTanimlar" VALUES (1063, 6, '2', 'Villa');
INSERT INTO "GenelTanimlar" VALUES (1064, 6, '3', 'Dublex');
INSERT INTO "GenelTanimlar" VALUES (1065, 6, '4', 'Ofis');
INSERT INTO "GenelTanimlar" VALUES (1066, 6, '5', 'Dükkan');
INSERT INTO "GenelTanimlar" VALUES (1067, 6, '6', 'Rezidans');
INSERT INTO "GenelTanimlar" VALUES (1068, 6, '7', 'Yazlık');
INSERT INTO "GenelTanimlar" VALUES (1069, 6, '8', 'Diğer');
COMMIT;

-- ----------------------------
-- Table structure for GiderIslemleri
-- ----------------------------
DROP TABLE IF EXISTS "GiderIslemleri";
CREATE TABLE "GiderIslemleri" (
  "ID" int2 NOT NULL DEFAULT nextval('"GiderIslemleri_ID_seq"'::regclass),
  "TIP" int2,
  "TUR" int2,
  "TARIH" date,
  "TUTAR" float4,
  "ACIKLAMA" varchar(500) COLLATE "pg_catalog"."default",
  "KASAID" int4
)
;

-- ----------------------------
-- Records of GiderIslemleri
-- ----------------------------
BEGIN;
INSERT INTO "GiderIslemleri" VALUES (1, NULL, 9, '2020-08-14', 1231, 'aasdasdasd', NULL);
INSERT INTO "GiderIslemleri" VALUES (2, NULL, 11, '2020-08-14', 1234, 'sasdfsdfsdf', NULL);
COMMIT;

-- ----------------------------
-- Table structure for KararDefteri
-- ----------------------------
DROP TABLE IF EXISTS "KararDefteri";
CREATE TABLE "KararDefteri" (
  "ID" int2 NOT NULL DEFAULT nextval('"KararDefteri_ID_seq"'::regclass),
  "TOPLANTINO" varchar(10) COLLATE "pg_catalog"."default",
  "TOPLANTITARIH" date,
  "TOPLANTIADI" varchar(255) COLLATE "pg_catalog"."default",
  "YONETICIADI" varchar(255) COLLATE "pg_catalog"."default",
  "YARDIMCIADI" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of KararDefteri
-- ----------------------------
BEGIN;
INSERT INTO "KararDefteri" VALUES (1, '123', '2020-08-14', 'asdads', 'asdas', 'asdasd');
INSERT INTO "KararDefteri" VALUES (2, '123', '2020-08-14', '123asdasd', 'asdasd', 'asdasd');
INSERT INTO "KararDefteri" VALUES (3, '99', '2020-08-14', 'asdasd', 'asdasd', 'asdasd');
INSERT INTO "KararDefteri" VALUES (4, '12343', '2020-08-14', 'sasfsf', 'sdfasf', 'asdfasfd');
INSERT INTO "KararDefteri" VALUES (5, 'd', '2020-08-14', 'asdas', 'asdasd', 'asdas');
INSERT INTO "KararDefteri" VALUES (6, '123', '2020-08-14', 'aasd', 'asd', 'asda');
INSERT INTO "KararDefteri" VALUES (7, '1', '2020-08-14', 'ssdf', 'sfsdf', 'sdfs');
INSERT INTO "KararDefteri" VALUES (8, '1', '2020-08-14', 'sdfs', 'sdfsd', 'fsdfs');
COMMIT;

-- ----------------------------
-- Table structure for Katilimcilar
-- ----------------------------
DROP TABLE IF EXISTS "Katilimcilar";
CREATE TABLE "Katilimcilar" (
  "ID" int2 NOT NULL DEFAULT nextval('"Katilimcilar_ID_seq"'::regclass),
  "KARARDEFTERID" int2,
  "NO" int4,
  "KATILANLAR" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of Katilimcilar
-- ----------------------------
BEGIN;
INSERT INTO "Katilimcilar" VALUES (1, 1, 1, 'ESER İPLİK');
INSERT INTO "Katilimcilar" VALUES (2, 1, 2, 'sdfsdfsfds');
INSERT INTO "Katilimcilar" VALUES (3, 1, 3, 'asdasdasds');
INSERT INTO "Katilimcilar" VALUES (4, 0, 123, 'safasdasd');
INSERT INTO "Katilimcilar" VALUES (5, 0, 343223, 'adasdasda');
INSERT INTO "Katilimcilar" VALUES (6, 0, 234234, 'sfsdfsdfdfs');
INSERT INTO "Katilimcilar" VALUES (7, 0, 445, 'xcvxcvxcv');
INSERT INTO "Katilimcilar" VALUES (8, 0, 123, 'sdfsdfdf');
INSERT INTO "Katilimcilar" VALUES (9, 0, 23434, 'dfgdff');
INSERT INTO "Katilimcilar" VALUES (10, NULL, 123, 'fdgdf');
COMMIT;

-- ----------------------------
-- Table structure for KisiIslemleri
-- ----------------------------
DROP TABLE IF EXISTS "KisiIslemleri";
CREATE TABLE "KisiIslemleri" (
  "ID" int2 NOT NULL DEFAULT nextval('"KisiIslemleri_ID_seq"'::regclass),
  "ADISOYADI" varchar(255) COLLATE "pg_catalog"."default",
  "TUTAR" float4,
  "TUR" int2,
  "SONODEMETARIH" date,
  "ACIKLAMA" varchar(500) COLLATE "pg_catalog"."default",
  "SEC" int4
)
;

-- ----------------------------
-- Records of KisiIslemleri
-- ----------------------------
BEGIN;
INSERT INTO "KisiIslemleri" VALUES (3, 'ESER', 1, 1, NULL, 'aasd', NULL);
INSERT INTO "KisiIslemleri" VALUES (4, '1', 100, 3, '2020-08-13', 'asdasdasdsdds', NULL);
INSERT INTO "KisiIslemleri" VALUES (5, '1', 2222, 3, '2020-08-13', 'sfssdfsdfsdf', NULL);
INSERT INTO "KisiIslemleri" VALUES (6, '5', 100, 3, '2020-08-14', 'Odeme Yapılmadı', NULL);
INSERT INTO "KisiIslemleri" VALUES (7, '6', 100, 3, '2020-08-14', 'asdasdasdds', NULL);
COMMIT;

-- ----------------------------
-- Table structure for KisiTanimla
-- ----------------------------
DROP TABLE IF EXISTS "KisiTanimla";
CREATE TABLE "KisiTanimla" (
  "ID" int2 NOT NULL DEFAULT nextval('"KisiTanimla_ID_seq"'::regclass),
  "ADISOYADI" varchar(100) COLLATE "pg_catalog"."default",
  "DOGUMTARIHI" date,
  "MESLEK" varchar(255) COLLATE "pg_catalog"."default",
  "ARACBILGILERI" varchar(255) COLLATE "pg_catalog"."default",
  "IKAMETEDENLER" varchar(255) COLLATE "pg_catalog"."default",
  "NOTLAR" varchar(255) COLLATE "pg_catalog"."default",
  "TCNO" varchar(100) COLLATE "pg_catalog"."default",
  "TELEFON1" varchar(30) COLLATE "pg_catalog"."default",
  "TELEFON2" varchar(30) COLLATE "pg_catalog"."default",
  "EPOSTA" varchar(100) COLLATE "pg_catalog"."default",
  "EVCILHAYVAN" varchar(255) COLLATE "pg_catalog"."default",
  "MESKEN" int2
)
;

-- ----------------------------
-- Records of KisiTanimla
-- ----------------------------
BEGIN;
INSERT INTO "KisiTanimla" VALUES (6, 'eser', '2020-08-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for KullaniciTanimla
-- ----------------------------
DROP TABLE IF EXISTS "KullaniciTanimla";
CREATE TABLE "KullaniciTanimla" (
  "ID" int4 NOT NULL DEFAULT nextval('"KullaniciTanimla_ID_seq"'::regclass),
  "KULLANICIKODU" varchar(10) COLLATE "pg_catalog"."default",
  "ADISOYADI" varchar(50) COLLATE "pg_catalog"."default",
  "SIFRE" varchar(20) COLLATE "pg_catalog"."default",
  "TELEFON" varchar(20) COLLATE "pg_catalog"."default",
  "EPOSTA" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of KullaniciTanimla
-- ----------------------------
BEGIN;
INSERT INTO "KullaniciTanimla" VALUES (2, '1', 'ADMIN', '1', '01234567890', 'admin@admin.com');
INSERT INTO "KullaniciTanimla" VALUES (3, '2', 'NEVA', '2', '0512311231', 'asd@adas.com');
INSERT INTO "KullaniciTanimla" VALUES (5, '3', 'Ozlem', '1', '012345645678', 'ozlem@ozlem.com');
COMMIT;

-- ----------------------------
-- Table structure for MeskenTanimla
-- ----------------------------
DROP TABLE IF EXISTS "MeskenTanimla";
CREATE TABLE "MeskenTanimla" (
  "TUR" int2,
  "BINAADI" int2,
  "KATNO" varchar(10) COLLATE "pg_catalog"."default",
  "KAPINO" varchar(10) COLLATE "pg_catalog"."default",
  "AIDAT" float4,
  "ALANI" varchar(10) COLLATE "pg_catalog"."default",
  "ODASAYISI" varchar(10) COLLATE "pg_catalog"."default",
  "ADISOYADI" varchar(255) COLLATE "pg_catalog"."default",
  "KIRACIADISOYADI" varchar(255) COLLATE "pg_catalog"."default",
  "ID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
  "KIRACI_EVSAHIBI" int4
)
;

-- ----------------------------
-- Records of MeskenTanimla
-- ----------------------------
BEGIN;
INSERT INTO "MeskenTanimla" VALUES (1063, 3, '3', '34', 3, '3', '3', '3', '3', 3, NULL);
INSERT INTO "MeskenTanimla" VALUES (1062, 7, '1', '2', 100, '120', '3+1', '1', '1', 4, 1);
INSERT INTO "MeskenTanimla" VALUES (1062, 7, '1', '1', 1, '1', '1', '1', '1', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for PersonelTanimla
-- ----------------------------
DROP TABLE IF EXISTS "PersonelTanimla";
CREATE TABLE "PersonelTanimla" (
  "ID" int2 NOT NULL DEFAULT nextval('"PersonelTanimla,_ID_seq"'::regclass),
  "ADISOYADI" varchar(255) COLLATE "pg_catalog"."default",
  "TCKIMLIK" varchar(20) COLLATE "pg_catalog"."default",
  "DOGUMTARIHI" date,
  "TELEFON" varchar(20) COLLATE "pg_catalog"."default",
  "EPOSTA" varchar(100) COLLATE "pg_catalog"."default",
  "ADRES" varchar(255) COLLATE "pg_catalog"."default",
  "GOREVI" varchar(255) COLLATE "pg_catalog"."default",
  "ISBASITARIH" date,
  "AYLIKUCRET" float4,
  "ACIKLAMA" varchar(500) COLLATE "pg_catalog"."default",
  "PERSONELKODU" varchar(20) COLLATE "pg_catalog"."default",
  "IL" int2,
  "ILCE" int2
)
;

-- ----------------------------
-- Records of PersonelTanimla
-- ----------------------------
BEGIN;
INSERT INTO "PersonelTanimla" VALUES (3, 'Ozlem', '12344567889', NULL, '12343565', 'ozlem@ozlem.com', 'Kayseri', 'Öğrenci', '2020-08-14', 5000, 'adsadsad', '1', 56, 627);
COMMIT;

-- ----------------------------
-- Table structure for Referans
-- ----------------------------
DROP TABLE IF EXISTS "Referans";
CREATE TABLE "Referans" (
  "REFERANS" int2
)
;

-- ----------------------------
-- Records of Referans
-- ----------------------------
BEGIN;
INSERT INTO "Referans" VALUES (1);
COMMIT;

-- ----------------------------
-- Table structure for SiraTanimla
-- ----------------------------
DROP TABLE IF EXISTS "SiraTanimla";
CREATE TABLE "SiraTanimla" (
  "ID" int2 NOT NULL DEFAULT nextval('"SiraTanimla_ID_seq"'::regclass),
  "REFERANS" int2,
  "BASLIK" varchar(50) COLLATE "pg_catalog"."default",
  "ACIKLAMA" varchar(50) COLLATE "pg_catalog"."default",
  "PREFIX" varchar(10) COLLATE "pg_catalog"."default",
  "KODGRUP" int2,
  "GRUPACIKLAMA" varchar(50) COLLATE "pg_catalog"."default",
  "AKTIF" int2
)
;

-- ----------------------------
-- Records of SiraTanimla
-- ----------------------------
BEGIN;
INSERT INTO "SiraTanimla" VALUES (1, 1, 'Bina Tanımla', '00001', 'BT', 1, 'Bina Tanımla', 1);
INSERT INTO "SiraTanimla" VALUES (2, 2, 'Kullanıcı Tanımla', '00001', 'KT', 2, 'Kullanıcı Tanımla', 1);
INSERT INTO "SiraTanimla" VALUES (4, 2, 'Personel Tanımla', '00001', 'PT', 3, 'Personel Tanımla', 1);
COMMIT;

-- ----------------------------
-- Table structure for SiteTanimla
-- ----------------------------
DROP TABLE IF EXISTS "SiteTanimla";
CREATE TABLE "SiteTanimla" (
  "ID" int2 NOT NULL DEFAULT nextval('"SiteTanimla_ID_seq"'::regclass),
  "SITEADI" varchar(255) COLLATE "pg_catalog"."default",
  "BLOKSAYISI" varchar(10) COLLATE "pg_catalog"."default",
  "KATSAYISI" varchar(10) COLLATE "pg_catalog"."default",
  "MESKENSAYISI" varchar(10) COLLATE "pg_catalog"."default",
  "ADRES" varchar(255) COLLATE "pg_catalog"."default",
  "IL" int2,
  "ILCE" int2,
  "YONETICI" varchar(255) COLLATE "pg_catalog"."default",
  "AIDAT" float4,
  "SITEKODU" varchar(20) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of SiteTanimla
-- ----------------------------
BEGIN;
INSERT INTO "SiteTanimla" VALUES (1, 'A.NACAR', '3', '8', '48', 'HUZUREVLERI MH. 71525 SK. ', 20, 116, 'asdasd', 123, '2');
COMMIT;

-- ----------------------------
-- Procedure structure for data_sil
-- ----------------------------
DROP PROCEDURE IF EXISTS "data_sil"("a" int4);
CREATE OR REPLACE PROCEDURE "data_sil"("a" int4)
 AS $BODY$
  DELETE FROM public."KisiTanimla" WHERE "ID"= a;
$BODY$
  LANGUAGE sql;

-- ----------------------------
-- Function structure for fnToplam
-- ----------------------------
DROP FUNCTION IF EXISTS "fnToplam"();
CREATE OR REPLACE FUNCTION "fnToplam"()
  RETURNS "pg_catalog"."void" AS $BODY$BEGIN

      SELECT SUM ("TUTAR") AS total
			FROM public."GelirIslemleri"
			WHERE "TIP" = 1;

	RETURN;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Procedure structure for sp_kod_arttir
-- ----------------------------
DROP PROCEDURE IF EXISTS "sp_kod_arttir"();
CREATE OR REPLACE PROCEDURE "sp_kod_arttir"()
 AS $BODY$
CREATE PROCEDURE public."SP_KOD_ARTTIR" (Reference INT
)
AS
$body$
BEGIN
	
	SET NOCOUNT ON;
	    
    UPDATE SiraTanimla SET ACIKLAMA = (SELECT LEFT ( ACIKLAMA, LEN(ACIKLAMA)- LEN(RIGHT (ACIKLAMA, LEN(ACIKLAMA) - (LEN (ACIKLAMA)-LEN (CAST (ACIKLAMA AS INT)+1)))))
    +CAST (RIGHT(ACIKLAMA, LEN (ACIKLAMA)-(LEN(ACIKLAMA)-LEN (CAST(ACIKLAMA AS INT))))+1 AS VARCHAR) AS KOD
    
    FROM SiraTanimla WHERE ID = Reference)  WHERE "ID" = Reference
END
$body$
LANGUAGE 'sql'
SECURITY INVOKER;
$BODY$
  LANGUAGE sql;

-- ----------------------------
-- Procedure structure for sp_toplam
-- ----------------------------
DROP PROCEDURE IF EXISTS "sp_toplam"("a" int4);
CREATE OR REPLACE PROCEDURE "sp_toplam"("a" int4)
 AS $BODY$
  select sum ("TUTAR") AS TOPLAM from public."GelirIslemleri" where "TIP" = 1
$BODY$
  LANGUAGE sql;

-- ----------------------------
-- Function structure for trg_demirbastakip
-- ----------------------------
DROP FUNCTION IF EXISTS "trg_demirbastakip"();
CREATE OR REPLACE FUNCTION "trg_demirbastakip"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
   BEGIN    
          if  ( new.MALIYET is null )  then 
            new.maliyet = 0 ;
            end if;
            
   
   END;
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "AlinanKararlar_ID_seq"
OWNED BY "AlinanKararlar"."ID";
SELECT setval('"AlinanKararlar_ID_seq"', 13, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "BinaTanimla_ID_seq"
OWNED BY "BinaTanimla"."ID";
SELECT setval('"BinaTanimla_ID_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "DemirbasTakip_ID_seq"
OWNED BY "DemirbasTakip"."ID";
SELECT setval('"DemirbasTakip_ID_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "GelirIslemleri_ID_seq"
OWNED BY "GelirIslemleri"."ID";
SELECT setval('"GelirIslemleri_ID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "GenelTanimlar_ID_seq"
OWNED BY "GenelTanimlar"."ID";
SELECT setval('"GenelTanimlar_ID_seq"', 1070, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "GiderIslemleri_ID_seq"
OWNED BY "GiderIslemleri"."ID";
SELECT setval('"GiderIslemleri_ID_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "KararDefteri_ID_seq"
OWNED BY "KararDefteri"."ID";
SELECT setval('"KararDefteri_ID_seq"', 9, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "Katilimcilar_ID_seq"
OWNED BY "Katilimcilar"."ID";
SELECT setval('"Katilimcilar_ID_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "KisiIslemleri_ID_seq"
OWNED BY "KisiIslemleri"."ID";
SELECT setval('"KisiIslemleri_ID_seq"', 8, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "KisiTanimla_ID_seq"
OWNED BY "KisiTanimla"."ID";
SELECT setval('"KisiTanimla_ID_seq"', 7, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "KullaniciTanimla_ID_seq"
OWNED BY "KullaniciTanimla"."ID";
SELECT setval('"KullaniciTanimla_ID_seq"', 6, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "MeskenTanimla_IDS_seq"
OWNED BY "MeskenTanimla"."ID";
SELECT setval('"MeskenTanimla_IDS_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "PersonelTanimla,_ID_seq"
OWNED BY "PersonelTanimla"."ID";
SELECT setval('"PersonelTanimla,_ID_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "SiraTanimla_ID_seq"
OWNED BY "SiraTanimla"."ID";
SELECT setval('"SiraTanimla_ID_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "SiteTanimla_ID_seq"
OWNED BY "SiteTanimla"."ID";
SELECT setval('"SiteTanimla_ID_seq"', 2, true);

-- ----------------------------
-- Primary Key structure for table AlinanKararlar
-- ----------------------------
ALTER TABLE "AlinanKararlar" ADD CONSTRAINT "AlinanKararlar_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table BinaTanimla
-- ----------------------------
ALTER TABLE "BinaTanimla" ADD CONSTRAINT "BinaTanimla_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Triggers structure for table DemirbasTakip
-- ----------------------------
CREATE TRIGGER "trg_demirbas_bins" BEFORE INSERT ON "DemirbasTakip"
FOR EACH ROW
EXECUTE PROCEDURE "public"."trg_demirbastakip"();

-- ----------------------------
-- Primary Key structure for table DemirbasTakip
-- ----------------------------
ALTER TABLE "DemirbasTakip" ADD CONSTRAINT "DemirbasTakip_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table GelirIslemleri
-- ----------------------------
ALTER TABLE "GelirIslemleri" ADD CONSTRAINT "GelirIslemleri_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table GenelTanimlar
-- ----------------------------
ALTER TABLE "GenelTanimlar" ADD CONSTRAINT "GenelTanimlar_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table GiderIslemleri
-- ----------------------------
ALTER TABLE "GiderIslemleri" ADD CONSTRAINT "GiderIslemleri_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table KararDefteri
-- ----------------------------
ALTER TABLE "KararDefteri" ADD CONSTRAINT "KararDefteri_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table Katilimcilar
-- ----------------------------
ALTER TABLE "Katilimcilar" ADD CONSTRAINT "Katilimcilar_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table KisiIslemleri
-- ----------------------------
ALTER TABLE "KisiIslemleri" ADD CONSTRAINT "KisiIslemleri_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table KisiTanimla
-- ----------------------------
ALTER TABLE "KisiTanimla" ADD CONSTRAINT "KisiTanimla_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table KullaniciTanimla
-- ----------------------------
ALTER TABLE "KullaniciTanimla" ADD CONSTRAINT "KullaniciTanimla_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table MeskenTanimla
-- ----------------------------
ALTER TABLE "MeskenTanimla" ADD CONSTRAINT "MeskenTanimla_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table PersonelTanimla
-- ----------------------------
ALTER TABLE "PersonelTanimla" ADD CONSTRAINT "PersonelTanimla,_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table SiraTanimla
-- ----------------------------
ALTER TABLE "SiraTanimla" ADD CONSTRAINT "SiraTanimla_pkey" PRIMARY KEY ("ID");

-- ----------------------------
-- Primary Key structure for table SiteTanimla
-- ----------------------------
ALTER TABLE "SiteTanimla" ADD CONSTRAINT "SiteTanimla_pkey" PRIMARY KEY ("ID");
