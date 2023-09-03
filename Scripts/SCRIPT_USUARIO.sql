/*
ALTER SESSION SET "_oracle_script"=True;

CREATE USER USUARIOS IDENTIFIED BY USUARIOS;
GRANT ALL PRIVILEGES TO USUARIOS;
*/


create table usuario(
codigo integer primary key,
usuario VARCHAR2(50) unique,
contrasena VARCHAR2(100) not null,
tipo_usuario integer not null
);

insert into usuario values(1,'admin','admin',1);
insert into usuario values(2,'user','user',2);
insert into usuario values(3,'pepito','pepito',2);

commit;

select tipo_usuario from usuario where usuario='user' and contrasena='user';