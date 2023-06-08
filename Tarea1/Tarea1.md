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

### ¿Qué es un sistema gestor de base de datos?
Un Sistema Gestor de Bases de Datos es un software para crear, gestionar y administrar información dentro de una base de datos. Los 3 principales componentes de un gestor de bases de datos son el lenguaje de manipulación, lenguaje de definición de datos y un lenguaje de consulta.

### ¿Para qué funciona un SGBD?
-Definición de los datos. Permite definir los objetos de las bases de datos, de manera que se almacenen segun su tipo
-Manipulación de los datos. Te permite eliminar, actualizar y extraer datos segun sus caracteristicas y valores atraves de filtros o sentencias.
-Preservar la seguridad e integridad de los datos. el gestor de bases de datos puede aplicar medidas de seguridad definidas para garantizar la validez e integridad de los datos, evitando además los ataques o accesos de usuarios no autorizados.
-Recuperación y restauración de los datos. Ante un fallo o actualización inconsistente, los gestores de bases de datos también brindan la posibilidad de recuperar y restaurar la información a versiones anteriores.

### Algunos SGBD
|Gestor| Descripción |
| ----------- | ----------- |
|MySQL	|Se trata de un sistema de gestión relacional, es decir, utiliza tablas múltiples que se conectan entre sí para organizar y almacenar la información de manera correcta. Además, hace uso del lenguaje de programación PHP. |
|Microsoft SQL Server	|Es un gestor de base de datos relacional desarrollado por Microsoft que presta servicio a una gran variedad de aplicaciones de software dedicadas a la inteligencia empresarial y al análisis de entornos corporativos.|
|PostgreSQL	|Es un sistema de gestión de bases de datos relacionales de código abierto y orientado a objetos considerado como la elección ideal empresarial, permite trabajar con los datos como si fueran objetos, ofreciendo funcionalidades y mecanismos destinados al trabajo con objetos; por ejemplo, la herencia de tablas.|
|MongoDB	|Se trata de un sistema orientado a los documentos, es decir, los datos se almacenan en documentos. Esto significa que los campos presentes en los documentos pueden variar de unos a otros, así como la estructura de los datos puede cambiar con el tiempo. |
|SQLite	|Es un sistema completo de bases de datos SQL escrito en lenguaje C, autónomo, integrado y de alta confiabilidad. Además, este gestor de datos es de dominio público, es decir, cualquier persona o usuario puede utilizarlo independientemente del uso que se le quiera dar, ya sea comercial o privado.|

En lo personal mi eleccion se ira hacia MySQL esto debido a que antes de empezar la maestria empece con un curso de Udemy, el SGBD que se veia era SQL Server me quede en un 50 % del curso por lo que me gustaria tratar con otro SGBD para ver si hay similitudes o diferencias. Para ver con cual me sentiria mas comodo, la eleccion de MySQL es por que en varios blogs era siempre el mas recomendado siendo una de sus razones por ser de codigo abierto.

## Referencias.

### Base de datos: 	
[Predicting Credit Card Customer Segmentation](https://www.kaggle.com/datasets/thedevastator/predicting-credit-card-customer-attrition-with-m)

### Investigación:
[¿Para qué sirve un gestor de base de datos?](https://universidadeuropea.com/blog/para-que-sirve-gestor-base-datos/)

[5 gestores de bases de datos para diversas aplicaciones](https://www.docpath.com/5-gestores-de-bases-de-datos-para-diversas-aplicaciones/?lang=es)
