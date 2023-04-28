use gamedb
--OyunID si 14 olan yorumlari inaktif hale getirip aciklamasi degistirildi
UPDATE Yorum
	   SET durum = 0,aciklama = 'Yorum Silindi'
	   FROM Yorum
	   WHERE oyunID = 14

GO

--kayit tarihi 2000 ile 2010 arasinda olan kullanicilarin cuzdanina 5 dolar eklendi
UPDATE Kullanici
	   SET Cuzdan+=5
	   FROM Kullanici
	   WHERE kayitTarihi BETWEEN '2000-01-01' AND '2010-01-01' 

GO

--09 ile baslayip 80 ile biten serial numarasi degistirildi
UPDATE SatinAlma
	   SET serialKey = '1111-1111-1111-1111'
	   FROM SatinAlma
	   WHERE serialKey LIKE '09%80'
GO

--telefon numarasi null olan kullanicinin numarasini guncellendi
UPDATE Kullanici
	   SET telNo = '5123627208'
	   FROM Kullanici
	   WHERE telNo IS NULL
GO

--Enderligi 4 olanlarin enderligini 1 dusuruldu
UPDATE Esya
	   SET enderlik-=1
	   FROM Esya
	   WHERE enderlik IN (4)
GO
