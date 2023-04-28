CREATE DATABASE gamedb
	ON PRIMARY (
				NAME = 'gamedb',
				FILENAME = 'C:\veritabani\gamedb.mdf',--c:\ de veritabani adinda bir klasor olmasi lazim yoksa hata alinir o dosyanin icine gamedb.mdf olusturur
				SIZE = 5MB,
				MAXSIZE = 200MB,
				FILEGROWTH = 5MB
				)
	LOG ON (
			NAME = 'gamedbdb_log',
			FILENAME = 'C:\veritabani\gamedbdb_log.ldf',
			SIZE = 2MB,
			MAXSIZE = 75MB,
			FILEGROWTH = 1MB
			)

GO

USE gamedb

CREATE TABLE Kullanici
(

SonGiris DATE NOT NULL,

Email VARCHAR(50)
	  CONSTRAINT notnullblUyeMail NOT NULL
	  CONSTRAINT unqKullaniciMail UNIQUE
	  CONSTRAINT chckKullaniciMail CHECK (Email LIKE '%@%.com'),--Girilecek email formati ==> "bir_seyler@bir_seyler.com" olarak belirlendi

kayitTarihi DATE  DEFAULT GETDATE() NOT NULL, --Kayit tarihini varsayilan olarak bugunun tarihi alinir GETDATE()

kullaniciAdi VARCHAR(50) NOT NULL,

Cuzdan INT DEFAULT 0 NOT NULL,

Parola VARCHAR(20) NOT NULL,

telNo char(10)
	  CONSTRAINT uniqueTelNo UNIQUE
	  CONSTRAINT chkTel CHECK(telNo LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'), --telefon numarasinin her bir karakteri 0 ile 9 arasinda olsun

dogumTarihi DATE NOT NULL,

Durum SMALLINT DEFAULT 1, --Uyelik kapanirsa burasi 0 yapilir

ID INT IDENTITY(1,1) PRIMARY KEY,--ID degeri 1 den baslayip biz insert ettikce 1 er 1 er artacak(identity anlami) ve primary key olacak

Yas AS DATEDIFF(yy,dogumTarihi,GETDATE()), --Gunun tarihinden dogum tarihini cikartip yas degiskeni olusturulur

)	  

GO

CREATE TABLE Tur
(

ID INT IDENTITY(1,1) PRIMARY KEY,

turIsmi VARCHAR(20)

)

GO

CREATE TABLE Yayinci
(

ID INT IDENTITY(1,1) PRIMARY KEY,

isim VARCHAR(30)

)

GO

CREATE TABLE Gelistirici
(

ID INT IDENTITY(1,1) PRIMARY KEY,

isim VARCHAR(30)

)

GO

CREATE TABLE Oyun
(

ID INT IDENTITY(1,1) PRIMARY KEY,

yasSiniri INT DEFAULT 0 NOT NULL,

fiyat FLOAT,

cikisTarihi DATE NOT NULL,

durum SMALLINT DEFAULT 1,

isim VARCHAR(50),

gelistiriciID INT FOREIGN KEY REFERENCES Gelistirici(ID),--Gelistirici tablosunun id primary key i burada foreign key oldu
			  
yayinciID INT FOREIGN KEY REFERENCES Yayinci(ID)

)

GO

CREATE TABLE Esya
(

ID INT IDENTITY(1,1) PRIMARY KEY,

isim VARCHAR(25) UNIQUE,

enderlik CHAR(1)
		 CONSTRAINT enderlikChck CHECK (enderlik LIKE ('[0-5]')),--1'den 5'e kadar enderlik numarasi tutuyor
		
oyunID INT FOREIGN KEY REFERENCES Oyun(ID)

)

GO

CREATE TABLE EnvanterKaydi
(

alisFiyati FLOAT NOT NULL,

satisFiyati FLOAT,

satisTarihi DATE,

alisTarihi DATE NOT NULL,

satistaMi SMALLINT DEFAULT 0,

ID INT IDENTITY(1,1) PRIMARY KEY,

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

esyaID INT FOREIGN KEY REFERENCES Esya(ID)

)

GO

CREATE TABLE TeklifVerme
(

durum SMALLINT DEFAULT 0,--Teklif durumu

tarih DATE,

tutar float,--Teklif verilmedigi zaman tutar da olmaz o yuzden not null yok

teklifID INT IDENTITY(1,1) PRIMARY KEY,

envanterID INT FOREIGN KEY REFERENCES EnvanterKaydi(ID),

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID)

)

GO

CREATE TABLE ArkadasEkleme
(

tarih DATE NOT NULL,--Eklenme tarihi

durum SMALLINT DEFAULT 0,--Arkadaslik durumu

EkleyenID INT FOREIGN KEY REFERENCES Kullanici(ID),

EklenenID INT FOREIGN KEY REFERENCES Kullanici(ID)

)

GO

CREATE TABLE Grup
(

ID INT IDENTITY(1,1) PRIMARY KEY,

isim VARCHAR(30) NOT NULL,

olusturulmaTarihi DATE DEFAULT GETDATE() NOT NULL,

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

durum SMALLINT DEFAULT 0


)

GO

CREATE TABLE UyeOlma
(


uyeOlmaTarihi DATE DEFAULT GETDATE() NOT NULL,

ayrilmaTarihi DATE DEFAULT NULL,

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

grupID INT FOREIGN KEY REFERENCES Grup(ID)


)

GO

CREATE TABLE Yorum
(
ID INT IDENTITY(1,1) PRIMARY KEY,

durum SMALLINT default 1 NOT NULL,--Yorum mevcut(1) degil(0)

aciklama VARCHAR(200),

tarih DATE DEFAULT GETDATE() NOT NULL,--yorumun yapilma tarihi

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

oyunID INT FOREIGN KEY REFERENCES Oyun(ID)
)

GO

CREATE TABLE Begenme
(

yorumID INT FOREIGN KEY REFERENCES Yorum(ID),

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID)

)

GO

CREATE TABLE TurOlur
(

oyunID INT FOREIGN KEY REFERENCES Oyun(ID),

turID INT FOREIGN KEY REFERENCES Tur(ID)

)

GO

CREATE TABLE Basarim
(

ID INT IDENTITY(1,1) PRIMARY KEY,

oyunID INT FOREIGN KEY REFERENCES Oyun(ID)

)

GO

CREATE TABLE BasarimAcilir
(

tarih DATE DEFAULT GETDATE() NOT NULL,--Basarim acildiysa bir acilma tarihine sahiptir

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

basarimID INT FOREIGN KEY REFERENCES Basarim(ID)

)

GO

CREATE TABLE SepeteEkle
(

tarih DATE DEFAULT NULL,

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

oyunID INT FOREIGN KEY REFERENCES Oyun(ID)

)

GO

CREATE TABLE IstekListesineEkle
(

tarih DATE DEFAULT GETDATE(),

siraNumarasi INT NOT NULL,
			 

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

oyunID INT FOREIGN KEY REFERENCES Oyun(ID)

)

GO

CREATE TABLE SatinAlma
(

tarih DATE DEFAULT NULL,

serialKey CHAR(19)
		  CONSTRAINT uniqueSerialKey UNIQUE
		  CONSTRAINT notnulltblSerialKey NOT NULL
	      CONSTRAINT chkSerial CHECK(serialKey LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),

kullaniciID INT FOREIGN KEY REFERENCES Kullanici(ID),

oyunID INT FOREIGN KEY REFERENCES Oyun(ID)

)

GO
