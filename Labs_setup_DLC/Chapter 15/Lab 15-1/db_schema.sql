create database gh4book;

use gh4book;

create table users(
	idx int auto_increment primary key,
	user varchar(32) unique not null,
	pass char(64) not null
);

insert into users values (null, 'admin', 'CAFEDEADBEAFBABECAFEDEADBEAFBABECAFEDEADBEAFBABECAFEDEADBEAFBABE');
alter table users modify pass char(64) charset latin1;
                                             