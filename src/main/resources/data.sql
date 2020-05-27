drop table if exists markers;
create table markers (id_m serial primary key AUTO_INCREMENT,marker character varying(255));
drop table if exists departments;
create table departments (id_dep serial primary key AUTO_INCREMENT, department character varying(255));
drop table if exists workers;
create table workers (id_w serial primary key AUTO_INCREMENT, first_name character varying(255), second_name character varying(255),
 					middle_name character varying(255),
 					birthdate timestamp,employment character varying(255), remoute_workspace boolean,address character varying(255),
					id_dep integer, id_r integer,foreign key(id_r) references roles(id_r),
 					foreign key(id_dep) references departments(id_dep));
 					drop table if exists jearcalendar;
 create table jearcalendar (id_c serial primary key AUTO_INCREMENT,date_w timestamp);
 drop table if exists jearcalendar_workers;
create table jearcalendar_workers(id_cw serial primary key AUTO_INCREMENT, id_c integer,id_w integer,foreign key(id_c)
								references jearcalendar(id_c),foreign key(id_w) references workers(id_w),id_m integer,
						foreign key(id_m) references markers(id_m));
						drop table if exists roles;
create table roles (id_r serial primary key AUTO_INCREMENT, role character varying(255),password character varying(255));
insert into roles (role,password) values('ROLE_time','12');
insert into roles (role,password) values('ROLE_work','12');
insert into roles(role,password) values('ROLE_dep','12');
insert into markers(marker) values('Я');
insert into markers(marker) values('Н');
insert into markers(marker) values('Б');
insert into departments(department) values('dep1');
insert into departments(department) values('dep2');
insert into departments(department) values('dep3');
insert into jearcalendar(date_w) values('2020-01-01 10:23:54');
insert into jearcalendar(date_w) values('2020-01-02 10:23:54');
insert into jearcalendar(date_w) values('2020-01-03 10:23:54');
insert into jearcalendar(date_w) values('2020-01-04 10:23:54');
insert into jearcalendar(date_w) values('2020-01-05 10:23:54');
insert into jearcalendar(date_w) values('2020-02-01 10:23:54');
insert into jearcalendar(date_w) values('2020-02-02 10:23:54');
insert into jearcalendar(date_w) values('2020-02-03 10:23:54');
insert into jearcalendar(date_w) values('2020-02-04 10:23:54');
insert into jearcalendar(date_w) values('2020-02-05 10:23:54');
insert into jearcalendar(date_w) values('2020-03-01 10:23:54');
insert into jearcalendar(date_w) values('2020-03-02 10:23:54');
insert into jearcalendar(date_w) values('2020-03-03 10:23:54');
insert into jearcalendar(date_w) values('2020-03-04 10:23:54');
insert into jearcalendar(date_w) values('2020-03-05 10:23:54');
insert into workers values(0,'ilya','popov','dmitrievish','1990-03-23 10:23:54','tableman',true,'savushkina',1,1);
insert into workers values(1,'philip','georgiev','olegovich','1989-03-23 10:23:54','workeradmin',true,'shkolnaya',1,2);
insert into workers values(2,'dmitriy','sergeev','genadievich','1988-03-23 10:23:54','depadmin',true,'nishlotskiy',1,3);
insert into workers values(3,'ilya','popov','vasilievich','1990-03-23 10:23:54','loader',true,'savushkina',2,null);
insert into workers values(4,'denis','klementyev','dmitrievish','1990-03-23 10:23:54','programmer',true,'savushkina',3,null);
insert into workers values(5,'nikolay','abramovich','sergeevich','1990-03-23 10:23:54','mechanic',false,'elizarova',3,null);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(1,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(2,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(3,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(4,0,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(5,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(6,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(7,0,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(8,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(9,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(10,0,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(11,0,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(12,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(13,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(14,0,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(15,0,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(1,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(2,1,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(3,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(4,1,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(5,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(6,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(7,1,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(8,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(9,1,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(10,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(11,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(12,1,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(13,1,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(14,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(15,1,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(1,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(2,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(3,2,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(4,2,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(5,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(6,2,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(7,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(8,2,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(9,2,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(10,2,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(11,2,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(12,2,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(13,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(14,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(15,2,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(1,3,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(2,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(3,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(4,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(5,3,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(6,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(7,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(8,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(9,3,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(10,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(11,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(12,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(13,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(14,3,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(15,3,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(1,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(2,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(3,4,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(4,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(5,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(6,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(7,4,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(8,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(9,4,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(10,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(11,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(12,4,3);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(13,4,2);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(14,4,1);
insert into jearcalendar_workers(id_c ,id_w ,id_m) values(15,4,2);
