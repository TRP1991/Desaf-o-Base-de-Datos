TRubilarP=# \c normalizacion;
FATAL:  database "normalizacion" does not exist
Previous connection kept
TRubilarP=# \c normalización;
FATAL:  database "normalización" does not exist
Previous connection kept
TRubilarP=# \l
TRubilarP=# 
TRubilarP=# \c normalizar
You are now connected to database "normalizar" as user "TRubilarP".
normalizar=# CREATE TABLE libros(
normalizar(# book_code INT PRIMARY KEY,
normalizar(# title VARCHAR(100)
normalizar(# );
ERROR:  relation "libros" already exists
normalizar=# DROP DATABASE normalizar;
ERROR:  cannot drop the currently open database
normalizar=# \c
You are now connected to database "normalizar" as user "TRubilarP".
normalizar=# \q
tonks@TRP:~$ sudo -TRubilarP psql
sudo: RubilarP: invalid timeout value
sudo: no se puede inicializar la política de plugin
tonks@TRP:~$ sudo -u TRubilarP psql
psql (12.2 (Ubuntu 12.2-4))
Type "help" for help.

TRubilarP=# DROP DATABASE normalizar;
DROP DATABASE
TRubilarP=# \l
TRubilarP=# CREATE DATABASE normalizar;
CREATE DATABASE
TRubilarP=# \c normalizar;
You are now connected to database "normalizar" as user "TRubilarP".
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
normalizar(# 
normalizar(# author_code INT PRIMARY KEY,
normalizar(# author VARCHAR(250)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE reader(
normalizar(# reader_code INT PRIMARY KEY,
normalizar(# name VARCHAR(100),
normalizar(# last_name VARCHAR(100),
normalizar(# given_name VARHCAR(100)
normalizar(# );
ERROR:  type "varhcar" does not exist
LINE 5: given_name VARHCAR(100)
                   ^
normalizar=# given_tanem VARCHAR(100)
normalizar-# );
ERROR:  syntax error at or near "given_tanem"
LINE 1: given_tanem VARCHAR(100)
        ^
normalizar=# given_name VARCHAR(100)
normalizar-# );
ERROR:  syntax error at or near "given_name"
LINE 1: given_name VARCHAR(100)
        ^
normalizar=# SELECT * FROM reader
normalizar-# 
normalizar-# SELE
normalizar-# SELECT * FROM reader;
ERROR:  syntax error at or near "SELECT"
LINE 3: SELECT * FROM reader;
        ^
normalizar=# SELECT * FROM reader;
ERROR:  relation "reader" does not exist
LINE 1: SELECT * FROM reader;
                      ^
normalizar=# \d reader;
Did not find any relation named "reader".
normalizar=# SELECT * FROM author;
 author_code | author 
-------------+--------
(0 rows)

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
normalizar(# FOREIGN KEY(editorial_code) REFERENCES editorial(author_code)
normalizar(# );
ERROR:  column "author_code" referenced in foreign key constraint does not exist
normalizar=# SELECT * FROM editorial_book
normalizar-# SELECT * FROM editorial_book;
ERROR:  syntax error at or near "SELECT"
LINE 2: SELECT * FROM editorial_book;
        ^
normalizar=# CREATE TABLE editorial_book(
normalizar(# 
normalizar(# book_code INT,
normalizar(# editorial_code INT,
normalizar(# FOREIGN KEY(book_code) REFERENCES libros(book_code),
normalizar(# FOREIGN KEY(editorial_code) REFERENCES editorial(editorial_code)
normalizar(# );
CREATE TABLE
normalizar=# CREATE TABLE author_book(
normalizar(# book_code INT,
normalizar(# aauthor_code INT,
normalizar(# FOREIGN KEY(book_code) REFERENCES libros(book_code),
normalizar(# FOREIGN KEY(author_code) REFERENCES author(author_code)
normalizar(# );
ERROR:  column "author_code" referenced in foreign key constraint does not exist
normalizar=# FOREIGN KEY(author_code) REFERENCES author(author)
normalizar-# );
ERROR:  syntax error at or near "FOREIGN"
LINE 1: FOREIGN KEY(author_code) REFERENCES author(author)
        ^
normalizar=# SELECT * FROM author_book;
ERROR:  relation "author_book" does not exist
LINE 1: SELECT * FROM author_book;
                      ^
normalizar=# CREATE TABLE author_book(
normalizar(# book_code INT,
normalizar(# author_code INT,
normalizar(# FOREIGN KEY(book_code) REFERENCES libros(book_code),
normalizar(# FOREIGN KEY(author_code) REFERENCES author(author_code)
normalizar(# );
CREATE TABLE
normalizar=# 

