/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     1/04/2022 5:22:43 p. m.                      */
/*==============================================================*/


drop index RELATIONSHIP_10_FK;

drop index RELATIONSHIP_9_FK;

drop index BOLETAS_PK;

drop table BOLETAS;

drop index CLIENTES_PK;

drop table CLIENTES;

drop index RELATIONSHIP_8_FK;

drop table DESCUENTO;

drop index RELATIONSHIP_1_FK;

drop index EMPLEADOS_PK;

drop table EMPLEADOS;

drop index HORARIOS_PK;

drop table HORARIOS;

drop index MULTIPLEX_PK;

drop table MULTIPLEX;

drop index PELICULA_PK;

drop table PELICULA;

drop index RELATIONSHIP_7_FK;

drop index RELATIONSHIP_3_FK;

drop index SALA_PK;

drop table SALA;

drop index RELATIONSHIP_5_FK;

drop index RELATIONSHIP_4_FK;

drop index SILLAS_PK;

drop table SILLAS;

drop index TIPOSILLAS_PK;

drop table TIPOSILLAS;

drop index RELATIONSHIP_6_FK;

drop index VALPELICULA_PK;

drop table VALPELICULA;

drop index RELATIONSHIP_2_FK;

drop index VALSERVICIO_PK;

drop table VALSERVICIO;

/*==============================================================*/
/* Table: BOLETAS                                               */
/*==============================================================*/
create table BOLETAS (
   IDBOLETA             SERIAL               not null,
   IDSILLA              VARCHAR(5)           null,
   IDHORARIO            INT4                 null,
   FECHA                DATE                 not null,
   constraint PK_BOLETAS primary key (IDBOLETA)
);

/*==============================================================*/
/* Index: BOLETAS_PK                                            */
/*==============================================================*/
create unique index BOLETAS_PK on BOLETAS (
IDBOLETA
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on BOLETAS (
IDSILLA
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on BOLETAS (
IDHORARIO
);

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES (
   IDCLIENTE            SERIAL               not null,
   NOMBRE               VARCHAR(30)          not null,
   APELLIDO             VARCHAR(30)          not null,
   USUARIO              VARCHAR(30)          not null,
   CONTRASENA           VARCHAR(30)          not null,
   PUNTOS               NUMERIC              null,
   constraint PK_CLIENTES primary key (IDCLIENTE)
);

/*==============================================================*/
/* Index: CLIENTES_PK                                           */
/*==============================================================*/
create unique index CLIENTES_PK on CLIENTES (
IDCLIENTE
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO (
	IDDESCUENTO     serial               not null primary key,
   IDCLIENTE            INT4                 not null,
   FECHA                DATE                 not null,
constraint PK_DESCUENTO primary key (IDDESCUENTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on DESCUENTO (
IDCLIENTE
);

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS (
   IDEMPLEADO           SERIAL               not null,
   NOMBRE               VARCHAR(30)          not null,
   APELLIDO             VARCHAR(30)          not null,
   CEDULA               NUMERIC              not null,
   FECHACONTRATO        DATE                 not null,
   SALARIO              NUMERIC              not null,
   IDMULTIPLEX          VARCHAR(5)           not null,
   USUARIO              VARCHAR(30)          not null,
   CONTRASENA           VARCHAR(30)          not null,
   CARGO                VARCHAR(30)          not null,
   constraint PK_EMPLEADOS primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADOS_PK                                          */
/*==============================================================*/
create unique index EMPLEADOS_PK on EMPLEADOS (
IDEMPLEADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on EMPLEADOS (
IDMULTIPLEX
);

/*==============================================================*/
/* Table: HORARIOS                                              */
/*==============================================================*/
create table HORARIOS (
   IDHORARIO            SERIAL               not null,
   HORA                 TIME                 not null,
   constraint PK_HORARIOS primary key (IDHORARIO)
);

/*==============================================================*/
/* Index: HORARIOS_PK                                           */
/*==============================================================*/
create unique index HORARIOS_PK on HORARIOS (
IDHORARIO
);

/*==============================================================*/
/* Table: MULTIPLEX                                             */
/*==============================================================*/
create table MULTIPLEX (
   IDMULTIPLEX          VARCHAR(5)           not null,
   NOMBRE               VARCHAR(30)          not null,
   INGRESOS             NUMERIC              null,
   constraint PK_MULTIPLEX primary key (IDMULTIPLEX)
);

/*==============================================================*/
/* Index: MULTIPLEX_PK                                          */
/*==============================================================*/
create unique index MULTIPLEX_PK on MULTIPLEX (
IDMULTIPLEX
);

/*==============================================================*/
/* Table: PELICULA                                              */
/*==============================================================*/
create table PELICULA (
   IDPELICULA           VARCHAR(5)           not null,
   TITULO               VARCHAR(20)          not null,
   CATEGORIA            VARCHAR(10)          not null,
   SINOPSIS             VARCHAR(50)          not null,
   RESTRICCION          VARCHAR(10)          not null,
   constraint PK_PELICULA primary key (IDPELICULA)
);

/*==============================================================*/
/* Index: PELICULA_PK                                           */
/*==============================================================*/
create unique index PELICULA_PK on PELICULA (
IDPELICULA
);

/*==============================================================*/
/* Table: SALA                                                  */
/*==============================================================*/
create table SALA (
   IDSALA               VARCHAR(5)           not null,
   IDMULTIPLEX          VARCHAR(5)           not null,
   IDPELICULA           VARCHAR(5)           null,
   constraint PK_SALA primary key (IDSALA)
);

/*==============================================================*/
/* Index: SALA_PK                                               */
/*==============================================================*/
create unique index SALA_PK on SALA (
IDSALA
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on SALA (
IDMULTIPLEX
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on SALA (
IDPELICULA
);

/*==============================================================*/
/* Table: SILLAS                                                */
/*==============================================================*/
create table SILLAS (
   IDSILLA              VARCHAR(5)           not null,
   IDSALA               VARCHAR(5)           not null,
   IDTIPOSILLA          VARCHAR(5)           not null,
   constraint PK_SILLAS primary key (IDSILLA)
);

/*==============================================================*/
/* Index: SILLAS_PK                                             */
/*==============================================================*/
create unique index SILLAS_PK on SILLAS (
IDSILLA
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on SILLAS (
IDSALA
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on SILLAS (
IDTIPOSILLA
);

/*==============================================================*/
/* Table: TIPOSILLAS                                            */
/*==============================================================*/
create table TIPOSILLAS (
   IDTIPOSILLA          VARCHAR(5)           not null,
   DESCTIPOSILLA        VARCHAR(30)          not null,
   PRECIO               NUMERIC              not null,
   constraint PK_TIPOSILLAS primary key (IDTIPOSILLA)
);

/*==============================================================*/
/* Index: TIPOSILLAS_PK                                         */
/*==============================================================*/
create unique index TIPOSILLAS_PK on TIPOSILLAS (
IDTIPOSILLA
);

/*==============================================================*/
/* Table: VALPELICULA                                           */
/*==============================================================*/
create table VALPELICULA (
   IDVALPELICULA        serial          not null,
   IDPELICULA           VARCHAR(5)           not null,
   PUNTUACION           NUMERIC              not null,
   constraint PK_VALPELICULA primary key (IDVALPELICULA)
);

/*==============================================================*/
/* Index: VALPELICULA_PK                                        */
/*==============================================================*/
create unique index VALPELICULA_PK on VALPELICULA (
IDVALPELICULA
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on VALPELICULA (
IDPELICULA
);

/*==============================================================*/
/* Table: VALSERVICIO                                           */
/*==============================================================*/
create table VALSERVICIO (
   IDVALSERVICIO        serial          not null,
   IDMULTIPLEX          VARCHAR(5)           not null,
   PUNTUACION           NUMERIC              not null,
   constraint PK_VALSERVICIO primary key (IDVALSERVICIO)
);

/*==============================================================*/
/* Index: VALSERVICIO_PK                                        */
/*==============================================================*/
create unique index VALSERVICIO_PK on VALSERVICIO (
IDVALSERVICIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on VALSERVICIO (
IDMULTIPLEX
);

/*==============================================================*/
/* Table: RecComidas                                         */
/*==============================================================*/
create table RECCOMIDAS (
   IDRECCOMIDAS         serial          not null,
   IDMULTIPLEX          VARCHAR(5)           not null,
   fecha                DATE           not null,
	valor               numeric         not null
   constraint PK_RECCOMIDAS primary key (IDRECCOMIDAS)
);

/*==============================================================*/
/* Index: RECCOMIDAS_PK                                        */
/*==============================================================*/
create unique index RECCOMIDAS_PK on RECCOMIDAS (
IDRECCOMIDAS
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP01FK on RECCOMIDAS (
IDMULTIPLEX
);
alter table BOLETAS
   add constraint FK_BOLETAS_RELATIONS_HORARIOS foreign key (IDHORARIO)
      references HORARIOS (IDHORARIO)
      on delete restrict on update restrict;

alter table BOLETAS
   add constraint FK_BOLETAS_RELATIONS_SILLAS foreign key (IDSILLA)
      references SILLAS (IDSILLA)
      on delete restrict on update restrict;

alter table DESCUENTO
   add constraint FK_DESCUENT_RELATIONS_CLIENTES foreign key (IDCLIENTE)
      references CLIENTES (IDCLIENTE)
      on delete restrict on update restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_RELATIONS_MULTIPLE foreign key (IDMULTIPLEX)
      references MULTIPLEX (IDMULTIPLEX)
      on delete restrict on update restrict;

alter table SALA
   add constraint FK_SALA_RELATIONS_MULTIPLE foreign key (IDMULTIPLEX)
      references MULTIPLEX (IDMULTIPLEX)
      on delete restrict on update restrict;

alter table SALA
   add constraint FK_SALA_RELATIONS_PELICULA foreign key (IDPELICULA)
      references PELICULA (IDPELICULA)
      on delete restrict on update restrict;

alter table SILLAS
   add constraint FK_SILLAS_RELATIONS_SALA foreign key (IDSALA)
      references SALA (IDSALA)
      on delete restrict on update restrict;

alter table SILLAS
   add constraint FK_SILLAS_RELATIONS_TIPOSILL foreign key (IDTIPOSILLA)
      references TIPOSILLAS (IDTIPOSILLA)
      on delete restrict on update restrict;

alter table VALPELICULA
   add constraint FK_VALPELIC_RELATIONS_PELICULA foreign key (IDPELICULA)
      references PELICULA (IDPELICULA)
      on delete restrict on update restrict;

alter table VALSERVICIO
   add constraint FK_VALSERVI_RELATIONS_MULTIPLE foreign key (IDMULTIPLEX)
      references MULTIPLEX (IDMULTIPLEX)
      on delete restrict on update restrict;

