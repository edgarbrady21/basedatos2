DECLARE 
CURSOR CUR_EMP IS SELECT * FROM EMPLEADO_VENTAS;
CURSOR CUR_SUCU IS SELECT * FROM SUCURSAL;
BEGIN
FOR REC_EMP IN CUR_EMP LOOP
FOR REC_SUCU IN CUR_SUCU LOOP
IF REC_SUCU.ID_CLIENTE=REC_EMP.ID_CLIENTE THEN
DBMS_OUTPUT.PUT_LINE('NOMBRE'||REC_EMP.NOMBRE_CLIENTE||'EN SUCURSAL'||REC_SUCU.NOMBRE);
END IF;
END LOOP;
END LOOP;
END;
/
