# Tarea 1 Eleccion de la base de datos e Investigación de SGBD 

## 1 Parte: Eleccion y descripcion de Base de datos.

### BD. Predicción de la segmentación de clientes de tarjetas de crédito

Decidi tomar la siguiente base de datos debido al giro en el cual trabajo, que es la rama financiera, la diferencia es que en donde estoy se maneja el producto de prestamos personales. Sin embargo creo que trabajar esta informacion y obtener algun resultado interesante puede apoyarme a replicar algo similar en donde estoy.

La base de datos que escogi fue obtenida de la plataforma **Kaggle**, esta tiene datos demograficos del cliente, una variable booleana para saber si el cliente ya deserto del servicio, informacion general del producto que tiene y el uso que le da ,entre otros que se veran a continuación.


|Nombre de la columna| Descripción |
| ----------- | ----------- |
|CLIENTNUM	|Identificador único para cada cliente. (int)||
|Attrition_Flag	|Bandera que indica si el cliente se ha ido o no. (booleano)|
|Customer_Age	|Edad del cliente. (int)|
|Gender	|Género del cliente. (Varchar)|
|Dependent_count	|Número de dependientes que tiene el cliente. (int)|
|Education_Level	|Nivel de educación del cliente. (Varchar)|
|Marital_Status	|Estado civil del cliente. (Varchar)|
|Income_Category	|Categoría de ingreso del cliente. (Varchar)|
|Card_Category	|Tipo de tarjeta que posee el cliente. (Varchar)|
|Months_on_book	|Cuánto tiempo ha estado el cliente en los libros. (int)|
|Total_Relationship_Count	|Número total de relaciones que el cliente tiene con el proveedor de la tarjeta de crédito. (int)|
|Months_Inactive_12_mon	|Número de meses que el cliente ha estado inactivo en los últimos doce meses. (int)|
|Contacts_Count_12_mon	|Número de contactos que ha tenido el cliente en los últimos doce meses. (int)|
|Credit_Limit	|Límite de crédito del cliente. (int)|
|Total_Revolving_Bal	|Saldo total rotativo del cliente. (int)|
|Avg_Open_To_Buy	|Ratio promedio de apertura para comprar del cliente. (int)|
|Total_Amt_Chng_Q4_Q1	|Importe total cambiado del trimestre 4 al trimestre 1. (decimal)|
|Total_Trans_Amt	|Importe total de la transacción. (int)|
|Total_Trans_Ct	|Recuento total de transacciones. (int)|
|Total_Ct_Chng_Q4_Q1	|El recuento total cambió del trimestre 4 al trimestre 1. (decimal)|
|Avg_Utilization_Ratio	|Ratio medio de utilización del cliente. (decimal)|
| Naive_Bayes_Classifier_Attrition_Flag_Card_Category_ Contacts_Count_12_mon_Dependent_count_ Education_ Level_ Months_Inactive_12_mon_1|Clasificador Naive Bayes para predecir si alguien abandonará o no en función de sus características.(decimal)|

## 2 Parte: Investigación de SGBD

## Referencias.

### Base de datos: 	
[Predicting Credit Card Customer Segmentation](https://www.kaggle.com/datasets/thedevastator/predicting-credit-card-customer-attrition-with-m)

### Investigación:

