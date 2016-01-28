-- Primera practica
CREATE TABLE DANCE(ID_DANCE INTEGER, NOMBRE VARCHAR2(40), EDAD INTEGER);

-- ACTIVAMOS MODO DE CONSOLA
SET SERVEROUTPUT ON;

--BLOQUE PL SQL
DECLARE
EDAD INTEGER;
YEARS INTEGER;
BEGIN
YEARS:=42;
EDAD:=YEARS*365;

DBMS_OUTPUT.PUT_LINE('tU EDAD EN DIAS ES:'||EDAD);
END;
/
--CREAR UN BLOQUE PL SQL QUE GENERE 200,000 REGISTROS EN SECUENCIA ASCENDIENTES EN LA TABLA DANCE



BEGIN 

  FOR I IN 1..200000 LOOP
    INSERT INTO DANCE VALUES(I, 'LEZAMA',44);
    
    END LOOP;
    
    END;
    /
    --HACEMOS UN SELECT PARA VER QUE DIABLOS HIZO
    
  SELECT * FROM DANCE;
  
  --SISTEMA DE PELICULAS LA DE SALA SERA DE TAREA 
  
  CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                        TITULO VARCHAR2(120),
                        SINOPSIS VARCHAR2(500),
                        CLASIFICACION VARCHAR(5),
                        CONSTRAINT PK_ID_PELICULA PRIMARY KEY(ID_PELICULA)
                        );
                        DESCRIBE PELICULA;
                        
 CREATE TABLE HORARIO(ID_HORARIO INTEGER,
                      ID_PELICULA INTEGER,
                      HORARIO VARCHAR2(8),
                      CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
                      CONSTRAINT FK1_ID_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
                      );
                      DESCRIBE HORARIO;
                      
CREATE SEQUENCE sec_pelicula
  start with 1
  increment by 1
  nomaxvalue;
  
  --El siguiente paso es ENLAZAR la recien creada secuencia con la tabla pelicula. nota:solamente se puede asociar una secuencia a una sola tabla.

--para asociarlo se necesita un nuevo objeto de la base de datos, este obejto va a ser el que insertara el o los nuevos registros en la tabla pelicula: En resumen:
--JAMAS se usa un insert.into... en oracle cuando tienen un primary key auto-generado
--¿que repercuciones tiene esta secunecia sql en ambientes distribuidos?

--SQL INJECTION
--Este es el hacking mas dificil de erradicar.

--TAREA
--INVESTIGAR EM GOOGLE LO QUE ES INYECCION DE SQL Y CASO REALE SY NOTABLES.
