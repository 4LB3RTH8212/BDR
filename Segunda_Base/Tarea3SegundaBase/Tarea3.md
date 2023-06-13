# **Tarea 3**

## **Parte 1: Esquema del modelo relacional**

1. TablaCliente(**IdPersona**, Nombre, Estado, Ciudad)
2. TablaCredito(**IdCredito**, _IdPersona_,Monto, Monto_Total, Pagos, Pago_Requerido, Dependencia, Estatus , Sucursal, FDesembolso, Frecuencia, vScoreBuro)
3. TablaPago(**IdPago**, _IdCredito_, Origen_de_Movimiento, Fecha_Pago, Fecha_Aplicación, Importe_de_Pago)
4. TablaReferencia(**IdReferencia**, _IdPersona_, Referencia, RELACION, vphonenumber)

## **Parte 2: Diagrama relacional**
```mermaid
erDiagram
    TablaCliente ||--o{ TablaCredito:Tramitan
    TablaCredito{
        int IdCredito
        int IdPersona
        decimal Monto
        decimal Monto_Total
        int Pagos
        decimal Pago_Requerido
        string(30) Dependencia
        string(20) Estatus
        time FDesembolso
        string(20) Frecuencia
        int vScoreBuro

    }TablaCliente{
        int IdPersona
        string(50) Nombre
        string(30) Estado
        string(30) Ciudad
    }
    TablaCredito||--o{ TablaPago : Reciben
    TablaPago{
        int IdPago
        int IdCredito
        varchar(30) Origen_de_Movimiento
        date Fecha_Pago
        date Fecha_Aplicacion
        decimal Importe_de_Pago       
    }
    TablaCliente ||--o{ TablaReferencia : Tienen
    TablaReferencia {
        int IdReferencia
        int IdPersona
        varchar(50) Referencia
        varchar(20) RELACION
        varchar(10) vphonenumber
    }
```

## **Parte 3: Álgebra Relacional**