use gamedb

if OBJECT_iD('dbo.v') is not null
	begin 
		drop view dbo.v
	end
go

--Kullanicinin hesabiyla ilgili temel verileri (id'si, adi, cuzdan bakiyesinin buyuklugu, sattigi en karli esyanin ismi,
--esyayi aldigi tarih, esyayi sattigi tarih, esyanin satisindan elde ettigi kar) getiren view
create view v
as
	select	k.ID, k.kullaniciAdi as [Kullanici Adi],
		case when k.Cuzdan>=1990 then 'Ortalama ustu bakiye'
			 when k.Cuzdan between 1500 and 1990 then 'Ortalama bakiye'
			 else 'Ortalama alti bakiye'
		end as [Bakiye Miktari], e.isim as [Esya ismi], 
		convert(varchar,ek.alisTarihi,5) as [Alis Tarihi], 
		convert(varchar,ek.satisTarihi,5) as [Satis Tarihi], 
		round(max(satisFiyati-alisFiyati),2) as [Max Kar]
	from Kullanici k 
		inner join EnvanterKaydi ek on ek.kullaniciID=k.ID 
		inner join Esya e on e.ID=ek.esyaID
		where ek.ID=dbo.maxKar(k.ID)
		group by k.ID, k.kullaniciAdi,k.Cuzdan,e.isim,ek.alisTarihi,ek.satisTarihi
go

SELECT* from  v


--View'e ek olarak sepetindeki oyunlarin sayisi, sepetteki oyunlarin toplam fiyati
select v.ID,[Kullanici Adi], [Bakiye Miktari], v.[Esya ismi], [Alis Tarihi], [Satis Tarihi],[Max Kar], 
	count(se.kullaniciID) as [Sepetteki urun Sayisi], round(sum(o.fiyat),2) as [Sepet Tutari]
	from v 
	inner join SepeteEkle se on se.kullaniciID=v.ID
	inner join Oyun o on se.oyunID=o.ID
	group by v.ID,[Bakiye Miktari],v.[Esya ismi],[Alis Tarihi],[Satis Tarihi],[Kullanici Adi],[Max Kar]
	order by v.ID
	