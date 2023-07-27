# **Tarea 7**

## **_Revisión de inconsistencias en la BD_**

- Revisamos si hay un cliente repetido en nuestra base de datos, consideramos que no hay homonimos en nuestros clientes. Encontramos que hay un registro repetido por lo que debemos unificar la información.

```mysql

SELECT Nombre, COUNT(*) FROM TablaCliente GROUP BY Nombre HAVING COUNT(*) > 1;

+-----------------+----------+
| Nombre          | COUNT(*) |
+-----------------+----------+
| Manuela Barroso |        2 |
+-----------------+----------+

```
- Revisamos si hay inconsistencias en el monto total a pagar de acuerdo a cuantos pagos requiere el crédito y el monto a pagar por cada amortización.
Tomaremos como datos reales la cantidad de pagos y monto amortización, esto a falta de la documentación.
Encontramos que en nuestra base toda esta columna requiere correción.
```mysql
SELECT
  IdCredito,
  COUNT(*)
FROM TablaCredito
WHERE Monto_Total <> Pagos * Pago_Requerido
GROUP BY IdCredito;
```
- Por último la empresa empezo sus labores en 2005, por lo que no deberian existir créditos otorgados antes de esta fecha a falta de expediente se dejara este dato vacio para estos casos.

```mysql

SELECT COUNT(*) 
FROM TablaCredito
WHERE FDesembolso <= '2005-01-01';

+----------+
| COUNT(*) |
+----------+
|      418 |
+----------+

```

## **_Modificación de inconsistencias en la BD_**
- Para el primer caso obtenemos los IdPersona.
```mysql
SELECT IdCliente
FROM TablaCliente
WHERE Nombre IN (
  SELECT Nombre
  FROM TablaCliente
  GROUP BY Nombre
  HAVING COUNT(*) > 1
);

+-----------+
| IdCliente |
+-----------+
|        45 |
|       142 |
+-----------+

```
El IdCliente tiene una relacion en 2 tablas mas por lo que relacionaremos todos los datos a el Id 45 que es el mas viejo.

```mysql
SELECT IdCredito
FROM tablacredito
WHERE IdPersona IN (45, 142);

+-----------+
| IdCredito |
+-----------+
|        45 |
|       142 |
|       545 |
|       642 |
+--------------+

SELECT IdReferencia
FROM tablareferencia
WHERE IdPersona IN (45, 142);

+--------------+
| IdReferencia |
+--------------+
|           45 |
|          142 |
|          545 |
|          642 |
|         1045 |
|         1142 |
|         1545 |
|         1642 |
+--------------+
```
Hacemos la mofidicación de la fila.
```mysql
START TRANSACTION;

-- Actualizamos los registros en la tabla 'tablacredito'.
UPDATE tablacredito
SET IdPersona = 45
WHERE IdPersona = 142;

-- Actualizamos los registros en la tabla 'tablareferencia'.
UPDATE tablareferencia
SET IdPersona = 45
WHERE IdPersona = 142;
COMMIT;

);
```
Consultamos nuevamente los datos en las tablas para verificar los cambios. 

```mysql
SELECT IdCredito
FROM tablacredito
WHERE IdPersona IN (45);

+-----------+
| IdCredito |
+-----------+
|        45 |
|       142 |
|       545 |
|       642 |
+-----------+

SELECT IdReferencia
FROM tablareferencia
WHERE IdPersona IN (45);

+--------------+
| IdReferencia |
+--------------+
|           45 |
|          142 |
|          545 |
|          642 |
|         1045 |
|         1142 |
|         1545 |
|         1642 |
+--------------+

SELECT IdCredito
FROM tablacredito
WHERE IdPersona IN (142);

Empty set (0.00 sec)

SELECT IdReferencia
FROM tablareferencia
WHERE IdPersona IN (45);

Empty set (0.00 sec)

```
Por último eliminamos el IdPersona 142 que ya no tiene relaciones con las otras tablas.
```mysql
DELETE FROM tablacliente
WHERE IdCliente = 142;

Query OK, 1 row affected (0.01 sec)


```
- Para el segundo caso corregimos la columna.
