use gamedb
--Telefon numarasi 111 ile baslayan kullanici bilgileri 
DELETE FROM Kullanici
	   WHERE telNo LIKE '111%'
	   
GO
--'J-RPG' turu silindi
DELETE FROM Tur
	   WHERE turIsmi = 'J-RPG'
GO
--yas siniri 3 ten kucuk esit ve ucretsiz olan oyunlar silindi
DELETE FROM Oyun
	   WHERE yasSiniri <= 3 AND fiyat = 0
GO
--'Teneke' metni iceren gelistiriciler silindi
DELETE FROM Gelistirici
       WHERE isim IN ('Teneke')
GO

--2000 ile 2019 arasinda gerceklestirilen sepete ekleme islemleri silindi
DELETE FROM SepeteEkle
	   WHERE tarih BETWEEN '2000-01-01' AND '2019-01-01'
GO
