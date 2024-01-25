REM   Script: Session 05
REM   2

create table Team  
( 
name varchar2(30) primary key , 
rank number(10) 
);

insert into Team (name , rank) 
values ('Gxil' , 1);

insert into Team (name , rank) 
values ('Falcon' , 2);

create table game 
( 
game_id number(10) primary key, 
name varchar2(40) not null, 
moba varchar2(20) , 
fps varchar2(20), 
tps varchar2 (20) 
);

insert into game (game_id , name ,moba) 
values (22 ,'league of legend' , 'moba');

insert into game (game_id , name ,fps) 
values (33 ,'call of duty' , 'fps');

create table Tournament 
( 
tur_id number(10) primary key, 
team_num number(10) not null , 
name varchar2(20) not null, 
winners varchar2(30) not null, 
location varchar2(30) not null, 
prize varchar2 (20) not null, 
game_id number(10) , 
foreign key (game_id) references game (game_id) 
);

insert into Tournament (tur_id,team_num,name,winners,location,prize) 
values (10 , 12 , 'call_of_duty_turn', 'gxil','riyadh','$10000');

insert into Tournament (tur_id,team_num,name,winners,location,prize) 
values (20 , 6 , 'league of legend', 'gxil','riyadh','$20000');

create table sponsor  
( 
name varchar2 (20) primary key , 
tur_id number(10), 
foreign key (tur_id) references Tournament (tur_id) 
);

insert into sponsor (name) 
values ('stc');

create table sponsers  
( 
name varchar2(20), 
t_name varchar(30), 
foreign key (name) references sponsor (name), 
foreign key (t_name) references Team (name) 
);

create table Player 
( 
gender varchar2 (7) not null , 
p_name varchar2 (20) not null , 
player_id number (10) primary key, 
DOB date , 
nationalty varchar2 (20) not null, 
team_name varchar2(30), 
foreign key (team_name) references Team (name) 
);

insert into Player (gender , p_name ,player_id,nationalty , team_name) 
values ('male','ahmed', 1 ,'saudi','Gxil');

insert into Player (gender , p_name ,player_id,DOB,nationalty , team_name) 
values ('male','moath', 2 ,'20-DEC-2022','saudi','Gxil');

insert into Player (gender , p_name ,player_id,DOB,nationalty , team_name) 
values ('male','abdulrahman', 3 ,'20-DEC-2002','saudi','Gxil');

insert into Player (gender , p_name ,player_id,DOB,nationalty , team_name) 
values ('male','abdlmalik', 4 ,'20-DEC-2004','saudi','Gxil');

insert into Player (gender , p_name ,player_id,DOB,nationalty , team_name) 
values ('male','abulurahman', 5 ,'20-DEC-2002','saudi','Falcon');

insert into Player (gender , p_name ,player_id,DOB,nationalty , team_name) 
values ('male','mohammed', 6 ,'20-DEC-2002','saudi','Falcon');

create table plays_in 
( 
te_name varchar2(30), 
turn_id number (10), 
foreign key (te_name) references Team (name), 
foreign key (turn_id) references Tournament (tur_id) 
);

create table matches 
( 
tname varchar2(30), 
turr_id number (10), 
result varchar2(20) not null, 
m_date date not null, 
duration varchar2(20) not null, 
foreign key (tname) references Team (name), 
foreign key (turr_id) references Tournament (tur_id) 
);

insert into matches (tname ,turr_id ,result,m_date ,duration)  
values ('Gxil', 10 ,'Gxil Win' ,'10-MAR-2023' , 'one hour') ;
insert into matches (tname ,turr_id ,result,m_date ,duration)  
values ('Falcon', 10 ,'Falcon lose' ,'10-MAR-2023' , 'one hour') ;
 

insert into matches (tname ,turr_id ,result,m_date ,duration)  
values ('Gxil', 10 ,'Gxil Win' ,'10-MAR-2023' , 'one hour');

insert into matches (tname ,turr_id ,result,m_date ,duration)  
values ('Falcon', 10 ,'Falcon lose' ,'10-MAR-2023' , 'one hour');

