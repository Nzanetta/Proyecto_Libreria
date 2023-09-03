/*
ALTER SESSION SET "_oracle_script"=True;

create user LIBRERIA IDENTIFIED by LIBRERIA account unlock;

grant all PRIVILEGES to LIBRERIA;*/


/*TABLA LIBRO*/
create table LIBRO(
codigo integer primary key,
titulo VARCHAR2(200) not null,
autor VARCHAR2(200) not null,
annio integer not null,
precio integer not null,
stock integer not null
);


/*TABLA COMPRA*/
create table compra(
id integer primary key,
id_transaccion VARCHAR2(200) not null,
status VARCHAR2(200) not null,
email VARCHAR2(200) not null,
id_cliente VARCHAR2(200) not null,
total integer not null
);

create table detalle_compra(
id integer primary key,
id_compra integer not null,
id_producto integer not null,
nombre VARCHAR2(200) not null,
precio integer not null,
cantidad integer not null
);

/*TABLA PRODUCTO*/
CREATE TABLE PRODUCTO(
id integer primary key,
nombre VARCHAR2(200) not null,
descripcion VARCHAR2(200) not null,
precio integer not null,
stock integer not null,
foto VARCHAR(200) not null
);

/*TABLA SERVICIO*/
create table SERVICIO(
codigo integer primary key,
nombre VARCHAR2(200) not null,
telefono integer not null,
servicio VARCHAR2(200) not null,
comentario VARCHAR2(200) not null
);

/*SECUENCIA PARA EL CODIGO DEL LIBRO*/
CREATE SEQUENCE SEQ_LIBRO
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 99999
    NOCACHE
    NOCYCLE;

/*SECUENCIA PARA EL CODIGO DEL PRODUCTO*/
CREATE SEQUENCE SEQ_PRODUCTO
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 99999
    NOCACHE
    NOCYCLE;

CREATE SEQUENCE SEQ_SERVICIO
    INCREMENT BY 1
    START WITH 1
    MAXVALUE 99999
    NOCACHE
    NOCYCLE;


/*PROCEDIMIENTO DE AGREGAR*/
CREATE OR REPLACE PROCEDURE SP_AGREGAR_LIBRO(
titulo varchar2,
autor varchar2,
annio integer,
precio integer,
stock integer)
is
begin
insert into LIBRO values(SEQ_LIBRO.NEXTVAL, titulo, autor, annio, precio, stock);
end;


CREATE OR REPLACE PROCEDURE SP_AGREGAR_PRODUCTO(
  nombre varchar2,
  descripcion varchar2,
  precio integer,
  stock integer,
  foto varchar2
)
IS
BEGIN
  insert into PRODUCTO values(SEQ_PRODUCTO.NEXTVAL, nombre, descripcion, precio, stock, foto);
END;


CREATE OR REPLACE PROCEDURE SP_AGREGAR_SERVICIO(
nombre varchar2,
telefono integer,
servicio varchar2,
comentario varchar2)
is
begin
insert into SERVICIO values(SEQ_SERVICIO.NEXTVAL, nombre, telefono, servicio, comentario);
end;

/*PROCEDIMIENTO DE LISTAR*/
CREATE OR REPLACE PROCEDURE SP_LISTAR_LIBROS(libros out SYS_REFCURSOR) 
IS BEGIN
    OPEN libros FOR SELECT * FROM LIBRO;
END;

/*PROCEDIMIENTO DE LISTAR*/
CREATE OR REPLACE PROCEDURE SP_LISTAR_PRODUCTOS(productos out SYS_REFCURSOR) 
IS BEGIN
    OPEN productos FOR SELECT * FROM PRODUCTO;
END;

CREATE OR REPLACE PROCEDURE SP_LISTAR_SERVICIOS(servicios out SYS_REFCURSOR) 
IS BEGIN
    OPEN servicios FOR SELECT * FROM SERVICIO;
END;

/*LIBROS DE EJEMPLO*/
call SP_AGREGAR_LIBRO('Las aventuras de Sherlock Holmes','Arthur Conan Doyle', 1892,20000,5);
call SP_AGREGAR_LIBRO('El Principito','Antoine de Saint-Exupery', 1943,15000,10);
call SP_AGREGAR_LIBRO('El Caleuche','Magdalena Petit', 1946,19000,12);

/*LIBROS DE EJEMPLO*/
call SP_AGREGAR_PRODUCTO('Las aventuras de Sherlock Holmes','Arthur Conan Doyle',20000,5,'https://http2.mlstatic.com/D_NQ_NP_730807-MLC51350961810_082022-O.jpg');
call SP_AGREGAR_PRODUCTO('El Principito','Antoine de Saint-Exupery', 15000,10,'https://images.cdn3.buscalibre.com/fit-in/360x360/f4/bc/f4bc25288107cfebe6a9cbc1e245c00a.jpg');
call SP_AGREGAR_PRODUCTO('El Caleuche','Magdalena Petit', 19000,12,'https://imagessl1.casadellibro.com/a/l/t5/91/9789561222991.jpg');

call SP_AGREGAR_SERVICIO('Alexis Sanchez',934053245, 'Servico de Mantención','Se me rompio la portada');

/*CONFIRMAR CAMBIOS*/
commit;

/*REVISAR LIBROS*/
select * from LIBRO;

/*REVISAR PRODUCTOS*/
select * from PRODUCTO;

/*REVISAR SERVICIOS*/
select * from SERVICIO;