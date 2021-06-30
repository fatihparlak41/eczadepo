-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 21 Haz 2021, 22:14:08
-- Sunucu sürümü: 5.6.21
-- PHP Sürümü: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `stok`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE IF NOT EXISTS `ayarlar` (
`id` int(11) NOT NULL,
  `sayfaBaslik` varchar(255) NOT NULL,
  `copright` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `sayfaBaslik`, `copright`) VALUES
(1, 'Fatih Parlak| Magusa Ilaç Yönetim Paneli', '<a href="https://www.linkedin.com/in/fatih-parlak-6529b7193/">Iletisim</a>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depolar`
--

CREATE TABLE IF NOT EXISTS `depolar` (
`depoID` int(11) NOT NULL,
  `depoAdi` varchar(30) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `depolar`
--

INSERT INTO `depolar` (`depoID`, `depoAdi`) VALUES
(6, 'Magusa Depo'),
(7, 'Girne Depo'),
(8, 'Lefkosa Depo'),
(9, 'Güzelyurt Depo'),
(10, 'Alayköy Depo'),
(11, 'İskele Depo'),
(12, 'Karpaz Depo'),
(13, 'Çatalköy Depo'),
(14, 'Lefke Depo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE IF NOT EXISTS `kullanicilar` (
`id` int(11) NOT NULL,
  `adsoyad` varchar(255) CHARACTER SET latin1 NOT NULL,
  `kullaniciadi` varchar(225) CHARACTER SET latin1 NOT NULL,
  `sifre` varchar(25) CHARACTER SET latin1 NOT NULL,
  `yonetici` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `adsoyad`, `kullaniciadi`, `sifre`, `yonetici`) VALUES
(1, 'FATIH PARLAK', 'admin', '1', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE IF NOT EXISTS `urunler` (
`urunID` int(11) NOT NULL,
  `urunAdi` varchar(355) COLLATE utf8_turkish_ci NOT NULL,
  `urunBarkod` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `urunStokKodu` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `urunAdet` int(30) NOT NULL,
  `Depo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urunID`, `urunAdi`, `urunBarkod`, `urunStokKodu`, `urunAdet`, `Depo`) VALUES
(7, 'Vermidon', '41', '1', 25, 8),
(8, 'NOVALGİN', '124', '12', 124, 7),
(9, 'APRANAX', '13', '13', 13, 6),
(10, 'SULUDİN', '15', '15', 15, 6),
(11, 'XANAX', '16', '16', 16, 6),
(12, 'TRAMADOL', '17', '17', 17, 6),
(13, 'SİNOVAK', '18', '18', 18, 6),
(14, 'ÇİNAŞISI', '20', '20', 20, 6),
(15, 'SUDAKREM', '22', '22', 22, 6),
(16, 'METGAMİT', '23', '23', 23, 6),
(17, 'MAJEZİK', '31', '31', 31, 11),
(18, 'DELİLACI', '32', '32', 32, 13),
(19, 'PROZAK', '35', '35', 35, 6),
(20, 'TALCİT', '45', '45', 45, 6),
(21, 'LUSTRAL', '71', '123', 56, 13),
(22, 'GRİPİN', '138', '359', 53, 6),
(23, 'LYRİCA', '12312', '123', 4151, 10),
(24, 'VİX', '41', '65', 85, 6),
(25, 'TYREFLU', '48', '87', 32, 12),
(26, 'CİTOLES', '51', '41', 123, 9),
(27, 'NUROFEN', '1475', '3687', 5743, 8),
(28, 'İNÜSÜLİN', '15124', '12315312', 155124, 14),
(29, 'ETANOL', '152351', '124', 1241, 10),
(30, 'AGUMENTİN', '1351512', '12312451', 235151, 10),
(31, 'PENİSİLİN', '31815', '3215', 13551, 8),
(32, 'OZİSİLİN', '15212', '12415', 151212, 9),
(33, 'DOLVEN', '13858', '326118', 15318, 8),
(34, 'YASMİN', '12412312', '12315', 124124, 7);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
 ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `depolar`
--
ALTER TABLE `depolar`
 ADD PRIMARY KEY (`depoID`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
 ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
 ADD PRIMARY KEY (`urunID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `depolar`
--
ALTER TABLE `depolar`
MODIFY `depoID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
MODIFY `urunID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
