USE gamedb

INSERT INTO Kullanici VALUES--Son giris-Email-KayitTarihi-KullaniciAdi-Cuzdan-Parola-Tel-Dogum-Durum
('1999-12-12','berkays@hotmail.com','1998-12-21','QWUP',90,'hjklsema2341','5242523562','1971-01-23',0),
('2020-10-04','fatal2244@hotmail.com','2012-06-11','FatalPC',120,'aspirin2153','5344628211','2002-05-13',1),
('2021-05-01','meton_z@hotmail.com','2010-03-06','Vitoleone',0,'asdasd123','5121347931','2000-02-22',1),
('2016-05-09','asa22@hotmail.com','2014-07-04','Boris',24,'zem2243','5127189963','2008-08-08',1),
('2018-02-07','kundura@hotmail.com','2011-08-01','Pratik',0,'ai4421.','5348242159','1998-03-07',0),
('2021-05-13','smackdown@hotmail.com','2020-02-14','everest22',13,'Edi022','5246472433','2001-06-15',1),
('2021-05-13','hatasiz_cool06@gmail.com','2014-02-23','Temiz',128,'20010101',NULL,'2001-01-01',0),
('2016-08-26','zzzcoool01@hotmail.com','2011-06-04','ciEwOR',1,'ceyhan01','5449359901','2000-11-17',1),
('2021-05-09','Tularz@gmail.com','2010-07-04','aimDLL',7,'pie1998','5422050211','1998-05-02',1),
('2020-10-21','mevl@gmail.com','2000-01-06','rotA',0,'Kukla7','5340421931','2004-07-22',1),
('2017-12-11','testDeveloper@gmail.com','2005-02-05','kalas',0,'admin01','1119422134','2001-03-12',1)
GO

INSERT INTO Tur VALUES--Tur ismi
('J-RPG'),
('Aksiyon'),
('FPS'),
('TPS'),
('Metin Tabanli'),
('Rol yapma'),
('Platform'),
('Bulmaca'),
('Macera'),
('Sira Tabanli Dovus'),
('Hayatta Kalma'),
('Dovus'),
('Rogue-Like'),
('Arcade Ve Ritim'),
('Souls-Like'),
('Hack and Slash'),
('RTS'),
('Acik Dunya')

GO

INSERT INTO Yayinci VALUES--Yayinci ismi
('Unknown Worlds Entertainment'),
('Teneke Kafalar Studios'),
('Rockstar Games'),
('Electronic Arts'),
('CD PROJEKT RED'),
('Coffee Stain Publishing'),
('Axolot Games'),
('Paradox Interactive'),
('Valve'),
('2K'),
('CAPCOM'),
('Bethesda Softworks'),
('Warner Bros Interactive'),
('BANDAI NAMCO Entertainment'),
('Square Enix'),
('Grinding Gear Games'),
('Tripwire Interactive'),
('FromSoftware Inc'),
('Activision'),
('THQ Nordic'),
('Monolith Productions'),
('Iron Lore Entertainment'),
('Xbox Game Studios'),
('TaleWorlds Entertainment'),
('ConcernedApe'),
('Re-Logic'),
('SEGA')

GO

INSERT INTO Gelistirici VALUES
('Valve'),
('Vigil Games'),
('FromSoftware Inc'),
('Rockstar Games'),
('Teneke'),
('CD PROJEKT RED'),
('Grinding Gear Games'),
('Gearbox Software'),
('Remedy Entertainment'),
('BANDAI NAMCO Studios'),
('THQ Nordic'),
('Rare Ltd'),
('TaleWorlds Entertainment'),
('Square Enix'),
('Turtle Rock Studios'),
('ConcernedApe'),
('Re-Logic'),
('Irrational Games'),
('Relic Entertainment'),
('Digital Extremes'),
('Arkane Studios'),
('Bethesda Game Studios'),
('Obsidian Entertainment'),
('Tripwire Interactive'),
('Avalanche Studios'),
('NetherRealm Studios')
GO

INSERT INTO Oyun VALUES--Yas siniri-fiyat(float)-cikisTarihi-durum-isim-GelistiriciID-YayinciID
(18,179,'2016-04-11',1,'Dark Souls 3',3,18),
(18,24,'2003-10-14',1,'Max Payne 2',9,3),
(18,18.5,'2009-11-17',1,'Left 4 Dead 2',1,9),
(18,31,'2011-11-11',1,'The Elder Scrolls V: Skyrim',22,12),
(18,0,'2013-09-23',1,'Path Of Exile',7,16),
(3,18,'2011-05-16',1,'Terraria',17,26),
(18,18,'2003-05-13',1,'GTA: Vice City',4,3),
(18,49,'2016-11-18',1,'Killing Floor 2',24,17),
(18,31,'2013-06-25',1,'Company Of Heroes 2',19,27),
(18,45,'2015-12-01',1,'Just Cause 3',25,15),
(18,31,'2010-09-24',1,'Darksiders',2,20),
(18,249,'2021-10-12',1,'Back 4 Blood',15,13),
(16,160,'2018-03-06',1,'FINAL FANTASY XV',14,15),
(18,309,'2020-03-13',1,'Borderlands 3',8,10),
(18,28.99,'2012-11-12',1,'Dishonored',21,12),
(18,18,'2010-10-22',1,'Fallout: New Vegas',23,12),
(18,31,'2011-05-17',1,'The Witcher 2',6,5),
(18,49,'2012-02-10',1,'The Darkness II',20,10),
(12,24,'2016-02-26',1,'Stardew Valley',16,25),
(18,49,'2013-03-26',1,'Bioshock Infinite',18,10),
(18,18.5,'1998-11-8',1,'Half-Life',1,9),
(18,29.99,'2010-03-11',1,'Mount & Blade: Warband',13,24),
(18,119,'2017-06-02',1,'TEKKEN 7',10,14),
(18,82,'2019-04-23',1,'Mortal Kombat 11',26,13),
(18,0,'2050-01-01',0,'Half-Life 3',1,9),
(3,0,'2019-08-19',1,'Red Dead Redemption 2',9,2)
GO

INSERT INTO Esya VALUES--isim-enderlik[0-5]-OyunID
('Parlak Kilic',2,1),
('Buz Asasi',4,1),
('cift Baretta',3,2),
('MAC10',1,3),
('Buz Ayak Ýzi',4,5),
('Yilan Derisi',5,5),
('Porsche 718 Cayman',5,7),
('Rambo',1,24),
('Freeman Levye',5,21),
('Panzer',4,9)

GO

INSERT INTO EnvanterKaydi VALUES--alis fiyat-satis fiyat-satis tarihi-alis tarihi-satistaMi-KullaniciID-EsyaID
(2349,4000,'2020-01-23','2019-02-21',1,1,2),
(1200,1500,'2015-04-12','2013-06-11',1,3,3),
(1600,2000,'2017-01-15','2016-08-23',1,6,10),
(24,50,'2020-08-24','2018-07-06',1,7,8),
(10,24,'2017-09-06','2015-11-01',1,10,4),
(1600,2341,'2020-01-23','2018-04-03',1,5,2),
(345,422,'2021-10-03','2020-12-22',1,6,3),
(256,NULL,NULL,'2015-07-01',0,9,1),
(569,NULL,NULL,'2016-07-30',0,4,9),
(376,NULL,NULL,'2017-06-12',0,8,7)

GO

INSERT INTO TeklifVerme VALUES--Durum-Tarih-Tutar-EnvaterID-KullaniciID
(0,'2015-01-02',1000,2,7),
(0,'2015-01-01',1100,2,8),
(1,'2015-04-12',1500,2,10),
(1,'2020-01-23',4000,1,5),
(1,'2017-01-15',2000,3,1),
(1,'2020-08-24',50,4,5),
(1,'2017-09-06',24,5,3),
(1,'2020-01-23',2341,6,9),
(1,'2021-10-03',422,7,10),
(0,'2018-10-20',120,8,4),
(0,'2019-08-17',456,9,2),
(0,'2020-12-07',213,10,5)
GO

INSERT INTO ArkadasEkleme VALUES--Tarih,Durum,ekleyenID,Eklenen ID
('2018-12-07',0,1,2),
('2019-03-21',1,1,4),
('2021-10-17',1,3,2),
('2017-05-27',0,5,8),
('2017-07-14',1,10,7),
('2017-06-24',1,7,8),
('2021-02-24',1,6,5),
('2019-08-07',0,8,3),
('2020-11-11',0,7,2),
('2018-12-07',1,9,1)
GO

INSERT INTO Grup VALUES--isim,olusturulmatarihi,Kullanici ID,durum
('Pain','2020-01-21',1,1),
('Binance','2017-05-14',5,0),
('Sandwich Network','2018-11-09',10,1),
('Shogun 2 TR','2020-04-23',7,1),
('Gamers of Darkness','2020-01-21',8,0),
('PatatiZ','2018-02-19',3,1),
('DuckZ','2019-12-05',5,1),
('Lole-Sports','2021-01-21',1,1),
('Yalova Gaming','2018-06-17',4,0),
('Crew Silvers','2021-10-01',6,0)
GO

INSERT INTO UyeOlma VALUES--uye olma tarihi-ayrilma tarihi-kullaniciID,Grup ID--2,5,9,10(grup yazma)
('2021-10-01',NULL,2,1),
('2020-12-08',NULL,5,8),
('2021-10-01','2021-10-21',6,4),
('2020-04-23','2021-09-07',10,6),
('2021-02-21',NULL,3,8),
('2019-11-06',NULL,7,3),
('2020-05-30','2020-09-02',8,4),
('2020-07-11','2020-09-02',2,4),
('2019-05-22',NULL,4,1),
('2020-12-12',NULL,1,3)
GO

INSERT INTO Yorum VALUES--durum,aciklama,tarih,kullaniciID,OyunID
(1,'Cok guzel bir oyun','2021-05-14',1,1),
(1,'Basyapit, saka saka deðil','2020-03-23',2,9),
(1,'Oyun cok kotu 1 saat zor dayandim','2019-02-04',7,4),
(0,'Verdiðim paraya kesinlikle deðmez onermem','2019-09-08',8,7),
(1,'Oyun muazzam 100 saatim var ama turkce dil desteði yok beðenmedim','2018-01-01',3,10),
(1,'Deðer alin derim','2020-07-28',10,14),
(1,'2 WHEN?','2021-02-24',9,17),
(1,'Kaliteli oyun olur gibi','2019-02-04',4,16),
(1,'Beðenmedim','2019-02-04',5,14),
(1,'Patlar heeeee','2019-07-27',6,14)
GO

INSERT INTO Begenme VALUES--YorumID,KullaniciID
(1,5),
(4,2),
(3,6),
(7,10),
(10,7),
(8,3),
(9,5),
(9,3),
(6,3),
(5,7)
GO

INSERT INTO TurOlur VALUES--OyunID,TurID
(1,15),
(3,3),
(5,16),
(8,3),
(8,2),
(9,17),
(12,3),
(12,2),
(17,2),
(17,6),
(10,4),
(10,18),
(11,16)
GO

INSERT INTO Basarim VALUES--OyunID
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(2),
(5),
(5),
(13),
(14),
(14),
(1),
(22),
(2),
(15),
(17)
GO

INSERT INTO BasarimAcilir VALUES--tarih,kullaniciId,basarimID
('2020-12-15',2,2),
('2018-01-05',5,2),
('2021-01-15',3,4),
('2020-04-25',3,3),
('2020-09-19',7,1),
('2019-07-29',10,16),
('2018-09-27',9,24),
('2020-11-01',8,23),
('2020-05-07',5,23),
('2020-01-15',5,28)
GO

INSERT INTO SepeteEkle VALUES--tarih-kullaniciID-OyunID
('2020-02-25',2,2),
('2018-01-05',5,2),
('2021-01-15',3,4),
('2020-04-25',3,3),
('2020-03-29',7,1),
('2020-03-29',10,16),
('2018-09-17',9,23),
('2020-12-11',8,23),
('2021-05-27',5,23),
('2018-02-09',5,20)
GO

INSERT INTO IstekListesineEkle VALUES--tarih,sira numarasi,kullanici id,oyun id
('2018-04-15',1,1,13),
('2020-07-03',2,1,23),
('2021-05-04',1,5,20),
('2019-02-21',1,4,2),
('2020-03-28',2,5,11),
('2021-10-29',3,5,17),
('2020-11-26',1,7,8),
('2020-11-23',1,9,16),
('2019-09-12',1,10,13),
('2019-07-17',1,2,23)
GO

INSERT INTO SatinAlma VALUES--tarih-serial-kullaniciID-OyunID
('2020-02-28','1234-2341-2412-2231',2,2),
('2018-02-23','5324-2521-2574-6734',5,2),
('2021-03-20','0021-0397-3462-9752',3,4),
('2020-04-25','8672-6284-5723-0011',3,3),
('2020-03-29','2525-0723-8623-0823',7,1),
('2020-05-02','1123-2332-0234-5231',10,16),
('2018-09-24','9621-2842-8521-8755',9,23),
('2020-12-18','2241-5512-3672-1816',8,23),
('2021-08-08','0251-4902-4521-5622',5,23),
('2018-02-09','0977-2551-1984-1280',5,20)
GO

