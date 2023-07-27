# **Tarea 8**

## **_Creacion de diferentes vistas con diferentes tipos de Join_**

- En esta Primera consulta nos llevamos varias columnas de interes de la TablaCredito con un Join

```mysql
DROP VIEW IF EXISTS VistaInnerJoin_TablaCredito;

CREATE VIEW VistaInnerJoin_TablaCredito AS
SELECT tc.IdCredito, tc.Monto_Total, tc.Pagos, tc.Pago_Requerido, tc.Dependencia, tc.Estatus
FROM TablaCredito tc
INNER JOIN TablaCliente tc2 ON tc.IdPersona = tc2.IdCliente;

Query OK, 0 rows affected (0.01 sec)

```
- En esta vista podemos ver los datos de los clientes como el nombre, Estado y Ciudad añadiendo los datos de interes de la tabla Credito, esto con una Left Join. Es decir con todas las filas de la tabla de la izquierda.

```mysql
DROP VIEW IF EXISTS VistaLeftJoin_Cliente_Credito;

CREATE VIEW VistaLeftJoin_Cliente_Credito AS
SELECT tc.IdCredito, tc.Monto_Total, tc.Frecuencia, tc.vScoreBuro,
       tc2.Nombre AS NombreCliente, tc2.Estado AS EstadoCliente, tc2.Ciudad AS CiudadCliente
FROM TablaCredito tc
LEFT JOIN TablaCliente tc2 ON tc.IdPersona = tc2.IdCliente;
```

- En esta vista podemos observar un historial por clinte de los creditos junto con su score, como a cambiado atraves de cada solicitud de crédito.

```mysql
DROP VIEW IF EXISTS VistaRightJoin_TablaCliente;

CREATE VIEW VistaRightJoin_TablaCliente AS
SELECT tc.IdCredito, tc.Dependencia, tc.vScoreBuro,
       tc2.Nombre AS NombreCliente, tc2.Estado AS EstadoCliente, tc2.Ciudad AS CiudadCliente
FROM TablaCredito tc
RIGHT JOIN TablaCliente tc2 ON tc.IdPersona = tc2.IdCliente;
```

Por ultimo utilizando una subconsulta mostramos un resumen de los creditos castigados de las diferentes dependecnias con la cantidad de creditos y la suma del monto total del crédito.

```mysql
CREATE VIEW VistaLeftJoin_Creditos_Castigados AS
SELECT tc.Dependencia,
       COUNT(tc.IdCredito) AS Cantidad_Creditos,
       SUM(CASE WHEN tc.Estatus = 'castigado' THEN tc.Monto_Total ELSE 0 END) AS Suma_Monto_Total_Castigados
FROM TablaCredito tc
LEFT JOIN TablaCliente tc2 ON tc.IdPersona = tc2.IdCliente
GROUP BY tc.Dependencia
HAVING tc.Dependencia IN (
    SELECT DISTINCT tc3.Dependencia
    FROM TablaCredito tc3
    WHERE tc3.Estatus = 'castigado'
);

```

## **_Implementación de un Trigger_**
Por último veremos la parte de un Trigger de inserción que calculara el Monto Total, utilizando el valor de Pagos y Pago Requerido. 

```mysql
DELIMITER //

CREATE TRIGGER CalcularMontoTotal
BEFORE INSERT ON TablaCredito
FOR EACH ROW
BEGIN
  SET NEW.Monto_Total = NEW.Monto * NEW.Pagos * NEW.Pago_Requerido;
END;

DELIMITER //
```