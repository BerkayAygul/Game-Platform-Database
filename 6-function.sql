use gamedb

if OBJECT_ID('dbo.maxKar') is not null
	begin 
		drop function dbo.maxKar
	end
go

--verilen kullanici id'nin en karli isleminin id'sini donen fonksiyon
create function maxKar(@user_id int)
returns float
as 
	begin
	declare @maxKazanc float
	select @maxKazanc= max(satisFiyati-alisFiyati) from EnvanterKaydi where kullaniciID=@user_id
	declare @eid int
	select @eid = ID from EnvanterKaydi where kullaniciID=@user_id and (satisFiyati-alisFiyati)=@maxKazanc
	return @eid
	end
go

--id'si 6 olan kullanicinin islem id'si donduruldu
select dbo.maxKar(6) as [Max Karli Islemin ID'si]