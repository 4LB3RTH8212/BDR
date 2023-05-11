# Tarea 1 Eleccion de la base de datos e Investigación de SGBD 

## 1 Parte: Eleccion y descripcion de Base de datos.

### BD. Predicción de la segmentación de clientes de tarjetas de crédito

Decidi tomar la siguiente base de datos debido al giro en el cual trabajo, que es la rama financiera, la diferencia es que en donde estoy se maneja el producto de prestamos personales. Sin embargo creo que trabajar esta informacion y obtener algun resultado interesante puede apoyarme a replicar algo similar en donde estoy.

La base de datos que escogi fue obtenida de la plataforma **Kaggle**, esta tiene datos demograficos del cliente, una variable booleana para saber si el cliente ya deserto del servicio, informacion general del producto que tiene y el uso que le da ,entre otros que se veran a continuación.


|Nombre de la columna| Descripción |
| ----------- | ----------- |
|CLIENTE	|Identificador único para cada cliente. (int)||
|Desgaste_bandera	|Bandera que indica si el cliente se ha ido o no. (booleano)|
|Edad_del_cliente	|Edad del cliente. (int)|
|Género	|Género del cliente. (Varchar)|
|Dependent_count	|Número de dependientes que tiene el cliente. (int)|
|Nivel de Educación	|Nivel de educación del cliente. (Varchar)|
|Estado civil	|Estado civil del cliente. (Varchar)|
|Categoría_de_ingresos	|Categoría de ingreso del cliente. (Varchar)|
|Card_Category	|Tipo de tarjeta que posee el cliente. (Varchar)|
|Meses_en_libro	|Cuánto tiempo ha estado el cliente en los libros. (int)|
|Total_Relationship_Count	|Número total de relaciones que el cliente tiene con el proveedor de la tarjeta de crédito. (int)|
|Months_Inactive_12_mon	|Número de meses que el cliente ha estado inactivo en los últimos doce meses. (int)|
|Contacts_Count_12_mon	|Número de contactos que ha tenido el cliente en los últimos doce meses. (int)|
|Límite de crédito	|Límite de crédito del cliente. (int)|
|Total_Revolving_Bal	|Saldo total rotativo del cliente. (int)|
|Promedio_abierto_para_comprar	|Ratio promedio de apertura para comprar del cliente. (int)|
|Importe_total_cambio_Q4_Q1	|Importe total cambiado del trimestre 4 al trimestre 1. (int)|
|Importe_trans_total	|Importe total de la transacción. (int)|
|Total_Trans_Ct	|Recuento total de transacciones. (int)|
|Total_Ct_Chang_Q4_Q1	|El recuento total cambió del trimestre 4 al trimestre 1. (int)|
|Promedio_utilización_proporción	|Ratio medio de utilización del cliente. (int)|
| Naive_Bayes_Classifier_Attrition_Flag_Card_Category_ Contacts_Count_12_mon_Dependent_count_ Education_ Level_ Months_Inactive_12_mon_1|Clasificador Naive Bayes para predecir si alguien abandonará o no en función de sus características.(decimal)|