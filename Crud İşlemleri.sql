USE [EnesOzmus.03Week]
GO
/** Temel CRUD ��lemleri **/
--SELECT: 					Veri taban�ndan verileri getirir.
		-- �r�nler tablosunu getir
		SELECT * FROM Products;
		-- �r�nler tablosundan ad ve fiyat s�t�nlar�n� getir.
		SELECT Name, Price FROM Products;
		-- Kategoriler tablosunun eklenme tarihlerini getir.
		SELECT CreatedDate FROM Categories;


--WHERE:					Yaln�zca belirli bir ko�ulu kar��layan kay�tlar� getirir.
		-- �r�nler tablosundan Id'si 1 olan �r�n� getir.
		SELECT * FROM Products WHERE Id = 1;
		-- �r�n Detaylar� tablosundan markas� LCW olan �r�nleri getir.
		SELECT * FROM ProductDetails WHERE Brand = 'LCW';


--INSERT INTO:				Bir tabloya yeni kay�tlar ekler.
	-- Kategoriler tablosuna yeni bir kategori ekler.
	INSERT [dbo].[Categories] ([CategoryName], [Description], [CreatedDate], [LastModifiedDate]) VALUES (N'Yelekler', N'K�� Sezonu', CAST(N'2022-04-26T00:00:00.0000000' AS DateTime2), NULL)


--UPDATE:					Bir tablodaki mevcut kay�tlar� d�zenler.
--							WHERE yan t�mcesini hangi kay�tlar�n g�ncellenmesi gerekti�ini berlirtir.
--							D�KKAT!: WHERE yan t�mcesini atlarsan�z, tablodaki t�m kay�tlar g�ncellenecektir!
	-- �r�nler tablosundaki Id'si 1 olan �r�n� g�nceller.
	UPDATE Products SET Name = 'Deneme' WHERE Id = 1;
	-- Kategoriler tablosundaki ad� Kazak olan kategoriyi g�nceller.
	UPDATE Categories SET CategoryName = 'test' WHERE CategoryName = 'Kazak';

--DELETE:					Bir tablodaki mevcut kay�tlar� siler.
--							WHERE yan t�mcesini hangi kay�tlar�n silinmesi gerekti�ini berlirtir.
--							D�KKAT!: WHERE yan t�mcesini atlarsan�z, tablodaki t�m kay�tlar silinecektir!
	-- �r�nler tablosundaki Id'si 1 olan �r�n� siler.(k�s�tland�)
	DELETE FROM Products WHERE Id = 1;
