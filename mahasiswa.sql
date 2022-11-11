CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('laki-laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);
-- insert jurusan 
insert into jurusan (kode, nama) values ("APBL", "Ilmu Politik");
insert into jurusan (kode, nama) values ("PTIF", "Ilmu Pemerintahan Negara");

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'20104130', 'Nisrina Salma Afifa', 'Perempuan', 'Jakarta', '2001-08-19', 'Jl. Batu Ratna No 14G');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'20104140', 'Icas', 'Perempuan', 'Bali', '2001-05-20', 'Jl. Pondok Labu 8 No 21');

-- update data mahasiswa
update mahasiswa set alamat = "JL. Tamansari 6 No 14" where id = 2;

-- delete data mahasiswa 
delete from mahasiswa where id = 2;