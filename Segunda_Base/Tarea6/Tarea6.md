# **Tarea 6**

## **_Cálculos mediante funciones de agregación_**

### _1. Conteo de frecuencias o media_

En este primer ejemplo buscamos contar la cantidad de clientes en la tabla TablaCliente y lo nombramos como TotalClientes:

```mysql

SELECT COUNT(IdCliente) AS TotalClientes FROM TablaCliente;

+---------------+
| TotalClientes |
+---------------+
|           500 |
+---------------+

```
En este segundo ejemplo vamos a calcular la media del importe de pago en la tabla TablaPago y se nombra como MediaImportePago:

```mysql

SELECT AVG(Importe_de_Pago) AS MediaImportePago FROM TablaPago;

+------------------+
| MediaImportePago |
+------------------+
|      5194.853000 |
+------------------+

```

### _2. Mínimos o máximos_

Se busca encontrar el pago mas alto registrado para el credito numero 20

```mysql

SELECT MAX(Importe_de_Pago) AS ImporteMaximo FROM TablaPago WHERE IdCredito = 20;

+---------------+
| ImporteMaximo |
+---------------+
|       7743.00 |
+---------------+

```

Ahora estamos interesados en el pago menor realizado al mismo crédito.

```mysql

SELECT MIN(Importe_de_Pago) AS ImporteMaximo FROM TablaPago WHERE IdCredito = 20;

+---------------+
| ImporteMaximo |
+---------------+
|       1742.00 |
+---------------+

```


### _3. Cuartil distinto a la mediana_

Vamos a calcular el valor correspondiente al percentil 75% en el campo "Monto_Total " de la tabla "TablaCredito".

- Primero obtenemos la longitud total de la tabla para obtener la cantidad de registros.
- Luego obtenemos la posicion para el percentil buscado
- Por último ordenamos la tabla por la columna Monto_Total y tomamos el dato que esta en la posición obtenida

```mysql

SET @total := (SELECT COUNT(Monto_Total) FROM TablaCredito);

SELECT @total;
+--------+
| @total |
+--------+
|    670 |
+--------+


SET @percentile := 75;
SET @position := (@percentile / 100) * (@total + 1);
SELECT @percentile, @position;

+-------------+---------------+
| @percentile | @position     |
+-------------+---------------+
|          75 | 503.250000000 |
+-------------+---------------+

SELECT Monto_Total AS "Percentil 75"
FROM TablaCredito
ORDER BY Monto_Total ASC
LIMIT 504, 1;

+--------------+
| Percentil 75 |
+--------------+
|    110691.00 |
+--------------+

```
### _4. Moda_

Buscamos el Estado que mas se repite en la tabla TablaCliente

```mysql

SELECT Estado AS Moda, COUNT(Estado) AS Frecuencia
FROM TablaCliente
GROUP BY Estado
ORDER BY Frecuencia DESC
LIMIT 1;


```

### _5. Hallazgos dificultades e implementación de soluciones encontradas en línea_

Uno de los principales problemas que presente fue el como obtener el cuartil. Esto debido a que no encontraba la forma de empezar, pense en que podia hacer cálculos y guardar los valores en una variable y asi poder buscar en la tabla despues de ordenar por la columna donde estaba el dato buscado. 

Para la moda en un principio no tuve dificultades para contar cuantas veces se repetia cada dato. Sin embargo al momento de querer encontrar el máximo me complique mucho la vida, incluso encontre una funcion llamada Having sin embargo no le entendia al principio, tome un descando y volvi a empezar, se me ocurrio solo ordenarlo y mostrar solo el primer registro que fue como finalmente realice el ejercicio.

