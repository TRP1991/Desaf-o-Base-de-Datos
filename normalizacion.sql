TRubilarP=# CREATE DATABASE normalizar;
CREATE DATABASE
TRubilarP=# \c normalizar
You are now connected to database "normalizar" as user "TRubilarP".
normalizar=# 

normalizar=# CREATE TABLE libros(
normalizar(# book_code INT PRIMARY KEY,
normalizar(# title VARCHAR(100)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE editorial(
normalizar(# editorial_code INT PRIMARY KEY,
normalizar(# editorial VARCHAR(100)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE author(
normalizar(# author_code INT PRIMARY KEY,
normalizar(# author VARCHAR(250)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE reader(
normalizar(# reader_code INT PRIMARY KEY,
normalizar(# name VARCHAR(50),
normalizar(# last_name VARCHAR(100),
normalizar(# given_name VARCHAR(100)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE loan(
normalizar(# book_code INT,
normalizar(# reader_code INT,
normalizar(# loan_date DATE,
normalizar(# FOREIGN KEY(book_code) REFERENCES libros(book_code),
normalizar(# FOREIGN KEY(reader_code) REFERENCES reader(reader_code)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE editorial_book(
normalizar(# book_code INT,
normalizar(# editorial_code INT,
normalizar(# FOREIGN KEY(book_code) REFERENCES libros(book_code),
normalizar(# FOREIGN KEY(editorial_code) REFERENCES editorial(editorial_code)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE author_book(
normalizar(# book_code INT,
normalizar(# author_code INT,
normalizar(# FOREIGN KEY(book_code) REFERENCES libros(book_code),
normalizar(# FOREIGN KEY(author_code) REFERENCES author(author_code)
normalizar(# );
CREATE TABLE
normalizar=# 

