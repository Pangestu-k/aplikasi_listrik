CREATE TABLE pengguna(
	id_pengguna varchar(9) PRIMARY KEY NOT NULL,
    id_pelanggan varchar(9),
    bulan varchar(30),
    tahun varchar(30),
    meter_awal int,
    meter_akhir int
);
CREATE TABLE pelanggan(
	id_pelanggan varchar(9) PRIMARY KEY NOT NULL,
    username varchar(30),
    password varchar(30),
    nomor_kwh int,
    nama_pelanggan varchar(30),
    alamat text,
    id_tarif varchar(9)
);
CREATE TYPE st AS ENUM('lunas','belum');
CREATE TABLE tagihan(
	id_tagihan varchar(9) PRIMARY KEY NOT NULL,
    id_pengguna varchar(9),
    id_pelanggan varchar(9),
    bulan varchar(30),
    tahun varchar(30),
    jumlah_meter int,
    status st
);
CREATE TABLE tarif(
	id_tarif varchar(9) PRIMARY KEY NOT NULL,
    data int,
    tarifperkwh int
);
CREATE TABLE pembayaran(
	id_pembayaran varchar(9) PRIMARY KEY NOT NULL,
    id_tagihan varchar(9),
    id_pelanggan varchar(9),
    tanggal_pembayaran date,
    bulan_bayar varchar(30),
    biaya_admin int,
    total_bayar int,
    id_admin varchar(9)
);
CREATE TABLE admin(
	id_admin varchar(9) PRIMARY KEY NOT NULL,
    username varchar(30),
    password varchar(10),
    nama_admin varchar(30),
    id_level varchar(9)
);
CREATE TABLE level(
	id_level varchar(9) PRIMARY KEY NOT NULL,
    nama_level varchar(30)
);