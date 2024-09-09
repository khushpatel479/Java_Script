-- -- for creating database
-- -- create database <dbname>;
-- create database mlp;

-- -- for creating tables
-- -- -- create table <tablename> (<column1> <data type>, <column2> <data type>);
-- create table student(id int , name varchar(30) , email varchar(30) , contact numeric(10));

--for insert data into the table


=========================================================
mysql> use mlp;
Database changed
mysql> show tables
    -> show tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show tables' at line 2
mysql> show tables;
+-----------------+
| Tables_in_mlp   |
+-----------------+
| client_master   |
| product_master  |
| salseman_master |
| student         |
+-----------------+
4 rows in set (0.00 sec)

mysql> select * from client_master;
+-----------+----------------+----------+---------+-------------+--------+
| client_id | name           | city     | pincode | state       | baldue |
+-----------+----------------+----------+---------+-------------+--------+
| c00001    | ivanbayros     | mumbai   |  400054 | maharashtra |  15000 |
| c0002     | Mamta Muzumdar | Madras   |  780001 | Tamil Nadu  |      0 |
| c0003     | Chhaya Bankar  | Mumbai   |  400078 | Maharashtra |   5000 |
| c0004     | Ashwini Joshi  | Banglore |  560001 | Karnataka   |      0 |
| c0005     | Hansel Colanco | Mumbai   |  400660 | Maharashtra |   2000 |
| c0006     | Deepak Sharma  | Manglore |  560050 | Karnataka   |      0 |
+-----------+----------------+----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> select * from product_master;
+------------+--------------+----------------+--------------+----------+-------------+-----------+-----------+
| product_id | description  | profit_percent | unit_measure | quantity | recoederLv1 | sellprice | costprice |
+------------+--------------+----------------+--------------+----------+-------------+-----------+-----------+
| p00001     | T Shirt      |              5 | Piece        |      200 |          50 |       350 |       250 |
| p0345      | Shirt        |              6 | Piece        |      150 |          50 |       500 |       350 |
| p06734     | cotton jeans |              5 | Piece        |      100 |          20 |       600 |       450 |
| p07865     | jeans        |              5 | Piece        |      100 |          20 |       700 |       500 |
| p07868     | trouser      |              2 | Piece        |      150 |          50 |       850 |       550 |
| p07885     | pull overs   |              3 | Piece        |       80 |          30 |       700 |       450 |
| p07965     | denim shirts |              4 | Piece        |      100 |          40 |       350 |       250 |
| p07975     | Lycra tops   |              5 | Piece        |       70 |          30 |       300 |       175 |
| p08865     | skirts       |              5 | Piece        |       75 |          30 |       450 |       300 |
+------------+--------------+----------------+--------------+----------+-------------+-----------+-----------+
9 rows in set (0.00 sec)

mysql> select * from salseman_master;
Empty set (0.00 sec)

mysql> insert into salseman_master values('s00001','aman','A/14','worli','mumbai',400002,'maharashtra');
ERROR 1366 (HY000): Incorrect decimal value: 's00001' for column 'salseman_no' at row 1
mysql> select name,baldue from client_master;
+----------------+--------+
| name           | baldue |
+----------------+--------+
| ivanbayros     |  15000 |
| Mamta Muzumdar |      0 |
| Chhaya Bankar  |   5000 |
| Ashwini Joshi  |      0 |
| Hansel Colanco |   2000 |
| Deepak Sharma  |      0 |
+----------------+--------+
6 rows in set (0.00 sec)

mysql> drop table salseman_master;
Query OK, 0 rows affected (0.05 sec)

mysql> select name,baldue,city from client_master;
+----------------+--------+----------+
| name           | baldue | city     |
+----------------+--------+----------+
| ivanbayros     |  15000 | mumbai   |
| Mamta Muzumdar |      0 | Madras   |
| Chhaya Bankar  |   5000 | Mumbai   |
| Ashwini Joshi  |      0 | Banglore |
| Hansel Colanco |   2000 | Mumbai   |
| Deepak Sharma  |      0 | Manglore |
+----------------+--------+----------+
6 rows in set (0.00 sec)

mysql> create table salseman_master(salseman_id varchar(40),name varchar(40),address1 varchar(40),address2 varchar(40),city varchar(40),pincode numeric(40),state varchar(40));
Query OK, 0 rows affected (0.13 sec)

mysql> select * from client_master where baldue=0;
+-----------+----------------+----------+---------+------------+--------+
| client_id | name           | city     | pincode | state      | baldue |
+-----------+----------------+----------+---------+------------+--------+
| c0002     | Mamta Muzumdar | Madras   |  780001 | Tamil Nadu |      0 |
| c0004     | Ashwini Joshi  | Banglore |  560001 | Karnataka  |      0 |
| c0006     | Deepak Sharma  | Manglore |  560050 | Karnataka  |      0 |
+-----------+----------------+----------+---------+------------+--------+
3 rows in set (0.00 sec)

mysql> insert into salseman_master values('s00001','aman','A/14','worli','mumbai',400002,'maharashtra');
Query OK, 1 row affected (0.01 sec)

mysql> select * from client_master where baldue>1000;
+-----------+----------------+--------+---------+-------------+--------+
| client_id | name           | city   | pincode | state       | baldue |
+-----------+----------------+--------+---------+-------------+--------+
| c00001    | ivanbayros     | mumbai |  400054 | maharashtra |  15000 |
| c0003     | Chhaya Bankar  | Mumbai |  400078 | Maharashtra |   5000 |
| c0005     | Hansel Colanco | Mumbai |  400660 | Maharashtra |   2000 |
+-----------+----------------+--------+---------+-------------+--------+
3 rows in set (0.00 sec)

mysql> select name from client_master where baldue>1000;
+----------------+
| name           |
+----------------+
| ivanbayros     |
| Chhaya Bankar  |
| Hansel Colanco |
+----------------+
3 rows in set (0.00 sec)

mysql> select sum(baldue) as ty from client_master;
+-------+
| ty    |
+-------+
| 22000 |
+-------+
1 row in set (0.01 sec)

mysql> select * from client_master order by name;
+-----------+----------------+----------+---------+-------------+--------+
| client_id | name           | city     | pincode | state       | baldue |
+-----------+----------------+----------+---------+-------------+--------+
| c0004     | Ashwini Joshi  | Banglore |  560001 | Karnataka   |      0 |
| c0003     | Chhaya Bankar  | Mumbai   |  400078 | Maharashtra |   5000 |
| c0006     | Deepak Sharma  | Manglore |  560050 | Karnataka   |      0 |
| c0005     | Hansel Colanco | Mumbai   |  400660 | Maharashtra |   2000 |
| c00001    | ivanbayros     | mumbai   |  400054 | maharashtra |  15000 |
| c0002     | Mamta Muzumdar | Madras   |  780001 | Tamil Nadu  |      0 |
+-----------+----------------+----------+---------+-------------+--------+
6 rows in set (0.00 sec)
-- order by
mysql> select * from client_master des order by name;
+-----------+----------------+----------+---------+-------------+--------+
| client_id | name           | city     | pincode | state       | baldue |
+-----------+----------------+----------+---------+-------------+--------+
| c0004     | Ashwini Joshi  | Banglore |  560001 | Karnataka   |      0 |
| c0003     | Chhaya Bankar  | Mumbai   |  400078 | Maharashtra |   5000 |
| c0006     | Deepak Sharma  | Manglore |  560050 | Karnataka   |      0 |
| c0005     | Hansel Colanco | Mumbai   |  400660 | Maharashtra |   2000 |
| c00001    | ivanbayros     | mumbai   |  400054 | maharashtra |  15000 |
| c0002     | Mamta Muzumdar | Madras   |  780001 | Tamil Nadu  |      0 |
+-----------+----------------+----------+---------+-------------+--------+
6 rows in set (0.00 sec)

mysql> select * from client_master des order by dec name;

mysql> select * from client_master  order by  name desc;
+-----------+----------------+----------+---------+-------------+--------+
| client_id | name           | city     | pincode | state       | baldue |
+-----------+----------------+----------+---------+-------------+--------+
| c0002     | Mamta Muzumdar | Madras   |  780001 | Tamil Nadu  |      0 |
| c00001    | ivanbayros     | mumbai   |  400054 | maharashtra |  15000 |
| c0005     | Hansel Colanco | Mumbai   |  400660 | Maharashtra |   2000 |
| c0006     | Deepak Sharma  | Manglore |  560050 | Karnataka   |      0 |
| c0003     | Chhaya Bankar  | Mumbai   |  400078 | Maharashtra |   5000 |
| c0004     | Ashwini Joshi  | Banglore |  560001 | Karnataka   |      0 |
+-----------+----------------+----------+---------+-------------+--------+
6 rows in set (0.00 sec)


 select * from client_master where name like 'c%';
+-----------+---------------+--------+---------+-------------+--------+
| client_id | name          | city   | pincode | state       | baldue |
+-----------+---------------+--------+---------+-------------+--------+
| c0003     | Chhaya Bankar | Mumbai |  400078 | Maharashtra |   5000 |
+-----------+---------------+--------+---------+-------------+--------+
1 row in set (0.00 sec)


 select * from client_master where name like '%c%';
+-----------+----------------+--------+---------+-------------+--------+
| client_id | name           | city   | pincode | state       | baldue |
+-----------+----------------+--------+---------+-------------+--------+
| c0003     | Chhaya Bankar  | Mumbai |  400078 | Maharashtra |   5000 |
| c0005     | Hansel Colanco | Mumbai |  400660 | Maharashtra |   2000 |
+-----------+----------------+--------+---------+-------------+--------+
2 rows in set (0.00 sec)
==========================================
Distinct query:


mysql> select distinct city from client_master;
+----------+
| city     |
+----------+
| mumbai   |
| Madras   |
| Banglore |
| Manglore |
+----------+
4 rows in set (0.02 sec)

mysql> select distinct city from client_master;

==========================================================

-- inbuilt_functions:
-- count
select count(*) as total_client from client_master;
+--------------+
| total_client |
+--------------+
|            6 |
+--------------+
1 row in set (0.04 sec)
===============================================================

mysql> select max(baldue) as max from client_master;
+-------+
| max   |
+-------+
| 15000 |
+-------+
1 row in set (0.01 sec)
============================================================
mysql> select min(baldue) as max from client_master;
+------+
| max  |
+------+
|    0 |
+------+
1 row in set (0.00 sec)
=============================================================
mysql> select sum(baldue) as max from client_master;
+-------+
| max   |
+-------+
| 22000 |
+-------+
1 row in set (0.00 sec)
============================================================
mysql> select avg(baldue) as max from client_master;
+-----------+
| max       |
+-----------+
| 3666.6667 |
+-----------+
1 row in set (0.00 sec)

=================================================================
=================================================================

-- DML operations:
delete from client_master;

delete from client_master where name="mamata";
======================================================

-- Update
mysql> update client_master set city='surat' where name='Mamta Muzumdar';
Query OK, 1 row affected (0.12 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from client_master;
+-----------+----------------+----------+---------+-------------+--------+
| client_id | name           | city     | pincode | state       | baldue |
+-----------+----------------+----------+---------+-------------+--------+
| c00001    | ivanbayros     | mumbai   |  400054 | maharashtra |  15000 |
| c0002     | Mamta Muzumdar | surat    |  780001 | Tamil Nadu  |      0 |
| c0003     | Chhaya Bankar  | Mumbai   |  400078 | Maharashtra |   5000 |
| c0004     | Ashwini Joshi  | Banglore |  560001 | Karnataka   |      0 |
| c0005     | Hansel Colanco | Mumbai   |  400660 | Maharashtra |   2000 |
| c0006     | Deepak Sharma  | Manglore |  560050 | Karnataka   |      0 |
+-----------+----------------+----------+---------+-------------+--------+
6 rows in set (0.00 sec)

==========================================================


insert into salseman_master values('s00002','omkar','65','nariman','mumbai','400001','maharashtra');

insert into salseman_master values('s00003','','65','nariman','mumbai','400001','maharashtra');
insert into salseman_master values('s00002','omkar','65','nariman','mumbai','400001','maharashtra');
