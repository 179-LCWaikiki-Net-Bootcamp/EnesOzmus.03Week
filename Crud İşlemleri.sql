USE [EnesOzmus.03Week]
GO
/** Temel CRUD Ýþlemleri **/
--SELECT: 					Veri tabanýndan verileri getirir.
		-- Ürünler tablosunu getir
		SELECT * FROM Products;
		-- Ürünler tablosundan ad ve fiyat sütünlarýný getir.
		SELECT Name, Price FROM Products;
		-- Kategoriler tablosunun eklenme tarihlerini getir.
		SELECT CreatedDate FROM Categories;


--WHERE:					Yalnýzca belirli bir koþulu karþýlayan kayýtlarý getirir.
		-- Ürünler tablosundan Id'si 1 olan ürünü getir.
		SELECT * FROM Products WHERE Id = 1;
		-- Ürün Detaylarý tablosundan markasý LCW olan ürünleri getir.
		SELECT * FROM ProductDetails WHERE Brand = 'LCW';


--INSERT INTO:				Bir tabloya yeni kayýtlar ekler.
	-- Kategoriler tablosuna yeni bir kategori ekler.
	INSERT [dbo].[Categories] ([CategoryName], [Description], [CreatedDate], [LastModifiedDate]) VALUES (N'Yelekler', N'Kýþ Sezonu', CAST(N'2022-04-26T00:00:00.0000000' AS DateTime2), NULL)


--UPDATE:					Bir tablodaki mevcut kayýtlarý düzenler.
--							WHERE yan tümcesini hangi kayýtlarýn güncellenmesi gerektiðini berlirtir.
--							DÝKKAT!: WHERE yan tümcesini atlarsanýz, tablodaki tüm kayýtlar güncellenecektir!
	-- Ürünler tablosundaki Id'si 1 olan ürünü günceller.
	UPDATE Products SET Name = 'Deneme' WHERE Id = 1;
	-- Kategoriler tablosundaki adý Kazak olan kategoriyi günceller.
	UPDATE Categories SET CategoryName = 'test' WHERE CategoryName = 'Kazak';

--DELETE:					Bir tablodaki mevcut kayýtlarý siler.
--							WHERE yan tümcesini hangi kayýtlarýn silinmesi gerektiðini berlirtir.
--							DÝKKAT!: WHERE yan tümcesini atlarsanýz, tablodaki tüm kayýtlar silinecektir!
	-- Ürünler tablosundaki Id'si 1 olan ürünü siler.(kýsýtlandý)
	DELETE FROM Products WHERE Id = 1;
