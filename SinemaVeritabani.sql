-- veritabanı oluştur
create database if not exists sinema;

-- oluşturulan veritabanını kullan
use sinema;

-- sinema salonları
create table if not exists salonlar (
    salonID int auto_increment primary key not null,
    SalonIsmi varchar(255) not null,
    kapasite int not null
);

-- filmler
create table if not exists filmler (
    filmID int auto_increment primary key not null,
    seyansID int not null,
    filmIsmi varchar(255) not null,
    yonetmen varchar(255) not null,
    oyuncu varchar(255) not null,
    tur varchar(100) not null,
    dil varchar(50) not null,
    sure int not null,
    aciklama text null,
    foreign key (seyansID) references salonlar(seyansID)
);

-- seanslar
create table if not exists seyanslar (
    seyansID int auto_increment primary key not null,
    filmID int not null,
    salonID int not null,
	koltukID int not null,
    baslangicSaati datetime not null,
    bitisSaati datetime not null,
    gun date not null,
    foreign key (filmID) references filmler(filmID),
    foreign key (salonID) references salonlar(salonID),
    foreign key (koltukID) references koltuklar(koltukID)
);

-- koltuklar
create table if not exists koltuklar (
    koltukID int auto_increment primary key not null,
    salonID int not null,
    seyansID int not null,
    koltukNumarasi int not null,
    koltukDurumu varchar(20) not null,
    foreign key (salonID) references salonlar(salonID),
    foreign key (seyansID) references salonlar(seyansID)
);

-- biletler
create table if not exists biletler (
    biletID int auto_increment primary key not null,
    seyansID int not null,
    koltukID int not null,
    fiyat decimal(10, 2) not null,
    satinAlan varchar(255) not null,
    odemeTuru enum('Nakit', 'Kredi Kartı', 'Banka Ödemesi') not null,
    biletAdedi int not null default 1,
    foreign key (seyansID) references seyanslar(seyansID),
    foreign key (koltukID) references koltuklar(koltukID)
);

-- müşteriler
create table if not exists musteriler (
    musteriID int auto_increment primary key not null,
	biletID int not null,
    ad varchar(100) not null,
    soyad varchar(100) not null,
    email varchar(255) not null,
    telefon varchar(20) null,
    unique key (email),
	foreign key (biletID) references biletler(biletID)
);

-- Salonlar tablosuna örnek veri ekleme
use sinema;
insert into salonlar (salonIsmi, kapasite) values
('A Saloon', 100),
('B Saloon', 80),
('C Saloon', 60),
('D Saloon', 120),
('E Saloon', 90);

-- Filmler tablosuna örnek veri ekleme
use sinema;
insert into filmler (filmIsmi, yonetmen, oyuncu, tur, dil, sure, aciklama) values
('Interstellar', 'Christopher Nolan', 'Matthew McConaughey, Anne Hathaway', 'Bilim Kurgu', 'İngilizce', 169, 'Geleceğin dünyasında geçen bir bilim kurgu filmi'),
('La La Land', 'Damien Chazelle', 'Ryan Gosling, Emma Stone', 'Müzikal', 'İngilizce', 128, 'Los Angeles\'ta geçen romantik bir müzikal'),
('The Shawshank Redemption', 'Frank Darabont', 'Tim Robbins, Morgan Freeman', 'Drama', 'İngilizce', 142, 'Hapishane hayatını konu alan bir dram'),
('Inception', 'Christopher Nolan', 'Leonardo DiCaprio, Ellen Page', 'Bilim Kurgu', 'İngilizce', 148, 'Rüya içinde bir hırsızlık hikayesi'),
('Joker', 'Todd Phillips', 'Joaquin Phoenix, Robert De Niro', 'Dram', 'İngilizce', 122, 'Bir komedyenin dönüşüm hikayesi'),
('Coco', 'Lee Unkrich', 'Anthony Gonzalez, Gael García Bernal', 'Animasyon', 'İngilizce', 105, 'Ölüler Diyarı\'nda geçen bir animasyon filmi'),
('The Godfather', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino', 'Drama', 'İngilizce', 175, 'Mafya ailesi üzerine epik bir dram'),
('The Dark Knight', 'Christopher Nolan', 'Christian Bale, Heath Ledger', 'Aksiyon', 'İngilizce', 152, 'Batman ve Joker arasındaki mücadele'),
('The Matrix', 'Lana Wachowski, Lilly Wachowski', 'Keanu Reeves, Laurence Fishburne', 'Aksiyon', 'İngilizce', 136, 'Sanal gerçeklik dünyasında geçen bir bilim kurgu'),
('Forrest Gump', 'Robert Zemeckis', 'Tom Hanks, Robin Wright', 'Drama', 'İngilizce', 142, 'Basit bir adamın olağanüstü yaşam hikayesi');

-- Seyanslar tablosuna örnek veri ekleme
insert into seyanslar (filmID, salonID, baslangicSaati, bitisSaati, gun) values
(1, 1, '2023-01-01 13:00:00', '2023-01-01 15:49:00', '2023-01-01'),
(2, 2, '2023-01-02 15:30:00', '2023-01-02 17:38:00', '2023-01-02'),
(3, 3, '2023-01-03 18:00:00', '2023-01-03 20:20:00', '2023-01-03'),
(4, 4, '2023-01-04 20:15:00', '2023-01-04 22:37:00', '2023-01-04'),
(5, 5, '2023-01-05 14:45:00', '2023-01-05 16:47:00', '2023-01-05'),
(6, 1, '2023-01-06 16:30:00', '2023-01-06 18:15:00', '2023-01-06'),
(7, 2, '2023-01-07 19:00:00', '2023-01-07 21:35:00', '2023-01-07'),
(8, 3, '2023-01-08 21:45:00', '2023-01-08 23:40:00', '2023-01-08'),
(9, 4, '2023-01-09 14:20:00', '2023-01-09 16:35:00', '2023-01-09'),
(10, 5, '2023-01-10 17:10:00', '2023-01-10 19:32:00', '2023-01-10');

-- Koltuklar tablosuna örnek veri ekleme
insert into koltuklar (salonID, koltukNumarasi, koltukDurumu) values
(1, 1, 'Boş'),
(1, 2, 'Boş'),
(2, 1, 'Boş'),
(2, 2, 'Dolu'),
(3, 1, 'Boş'),
(3, 2, 'Boş'),
(4, 1, 'Boş'),
(4, 2, 'Dolu'),
(5, 1, 'Boş'),
(5, 2, 'Boş');

-- Biletler tablosuna örnek veri ekleme
insert into biletler (seyansID, koltukID, fiyat, satinAlan, odemeTuru, biletAdedi) values
(1, 1, 25.00, 'Ahmet Yılmaz', 'Kredi Kartı', 2),
(2, 3, 20.00, 'Ayşe Kaya', 'Nakit', 1),
(3, 5, 30.00, 'Mehmet Demir', 'Banka Ödemesi', 3),
(4, 7, 35.00, 'Fatma Aksoy', 'Nakit', 2),
(5, 9, 22.50, 'Mustafa Çelik', 'Kredi Kartı', 1),
(6, 2, 18.00, 'Zeynep Yıldız', 'Kredi Kartı', 2),
(7, 4, 28.00, 'Ahmet Yılmaz', 'Banka Ödemesi', 3),
(6, 8, 20.00, 'Mehmet Yıldız', 'Nakit', 1),
(7, 10, 32.50, 'Ayşe Çelik', 'Kredi Kartı', 2),
(8, 12, 28.00, 'Mustafa Aksoy', 'Kredi Kartı', 1),
(9, 14, 22.00, 'Zeynep Demir', 'Nakit', 2),
(10, 16, 25.50, 'Fatma Kaya', 'Banka Ödemesi', 1);

-- Müşteriler tablosuna örnek veri ekleme
insert into musteriler (biletID, ad, soyad, email, telefon) values
(1, 'Ahmet', 'Yılmaz', 'ahmet@gmail.com', '555-1234'),
(2, 'Ayşe', 'Kaya', 'ayse@gmail.com', '555-5678'),
(3, 'Mehmet', 'Demir', 'mehmet@gmail.com', '555-9101'),
(4, 'Fatma', 'Aksoy', 'fatma@gmail.com', '555-2345'),
(5, 'Mustafa', 'Çelik', 'mustafa@gmail.com', '555-6789'),
(6, 'Zeynep', 'Yıldız', 'zeynep@gmail.com', '555-3456'),
(7, 'Ahmet', 'Yılmaz', 'ahmet@gmail.com', '555-7890'),
(8, 'Mehmet', 'Demir', 'mehmet@gmail.com', '555-1235'),
(9, 'Zeynep', 'Yıldız', 'zeynep@gmail.com', '555-5679'),
(10, 'Ayşe', 'Çelik', 'ayse@gmail.com', '555-2346');










