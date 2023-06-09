# Tarea 1: Elección de la base de datos e Investigación de SGBD 

## 1 Parte: Eleccion y descripcion de Base de datos.

### BD. Cobranza Go Credit

#### ¿Por qué esta base de datos?
Decidi hacer un cambio en la base de datos escogida debido a que la anterior no le veia adecuada para lo que aprenderiamos en este curso, al igual que tenia muchas variables no me parecia ponerlas en ninguna tabla por lo que habia decidido ignorarlas y agregar nuevas. Por lo que no se parecia en mucho la Base inicial con la que yo trabajaria. Asi que decidi trabajar con una base la cual yo estuviera mas familiarizado.

Decidire tomar una base de datos del area de cobranza ya que es el area en la cual me desempeño actualmente en esta empresa, en esta base de datos se encuentran los principales datos demograficos del cliente, sus creditos, los pagos realizados a sus creditos, las referencias personales, al igual que otros datos relevantes para el área.

A continuación mostrare algunas de las tablas con algunas de sus variables esto debido a que varias tablas tienen una cantidad muy grande de variables.

|Saldos Cartera | Descripción |
| ----------- | ----------- |
|Id Credito	|Identificador único para cada crédito perteneciente a un cliente (int)||
|IdPersona	|Identificador único para cada cliente. (int)||
|Nombre	|Nombre del cliente (Varchar)|
|Monto|Monto Capital solicitado. (decimal)|
|Monto Total|Monto Total a Pagar. (decimal)|
|Pagos|Numero de pagos a realizar  (int)|
|Pago Requerido|Cantidad a pagar por frecuencia (decimal)|
|Amort. Pagadas|Numero de pagos realizados (int)|
|Total Pagado	|La Suma total de los pagos recibidos (decimal)|
|Saldo Total|Saldo Pendiente del crédito (decimal)|
|Dependencia|A que convenio pertenece el crédito del cliente. (Varchar)|
|Vencido | Saldo Vencido del crédito es decir las amortizaciones que ya paso su fecha de pago (decimal)|
|Estatus|Estatus actual del crédito (Varchar)|
|Sucursal|Sucursal de originacion del crédito (Varchar)|
|F.Desembolso|Fecha en la cual el dinero fue entregado al cliente (date)|
|Frecuencia	|Frecuencia de pago (varchar)|
|Estado| Estado del pais de la persona (varchar)|
|Ciudad|Ciudad del Estado de la persona (varchar)|
|vScoreBuro	|Score que tenia la persona cuando tramito el crédito. (int)|

|Referencias | Descripción |
| ----------- | ----------- |
|IdPersona	|Identificador único para cada cliente. (int)||
|Referencia|Nombre de la persona que esta como referencia (int)||
|RELACION|Relacion personal de la referencia con la persona (int)||
|vphonenumber|Numero de telefono o celular de la persona (char10)|


|Pagos | Descripción |
| ----------- | ----------- |
|Id Credito|Identificador único para cada crédito perteneciente a un cliente (int)||
|Id Pago|Identificador único para cada pago perteneciente a un créditp (int)||
|Origen de Movimiento|Origen del movimiento si fue por lista,domiciliado, referencia es decir el canal de pago(int)||
|Fecha Pago|Fecha del pago(date)|
|Fecha Aplicación|Fecha en la que se aplico el pago en sistema(date)|
|Pago|Cantidad Pagada(decimal)|

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

### Investigación:
[¿Para qué sirve un gestor de base de datos?](https://universidadeuropea.com/blog/para-que-sirve-gestor-base-datos/)

[5 gestores de bases de datos para diversas aplicaciones](https://www.docpath.com/5-gestores-de-bases-de-datos-para-diversas-aplicaciones/?lang=es)