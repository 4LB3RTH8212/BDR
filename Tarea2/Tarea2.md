# Tarea 2: Modelo Entidad Relación

## BD. Predicción de la segmentación de clientes de tarjetas de crédito

```mermaid
flowchart TD
    1[TablaPersona]
    1 --- A([CLIENTNUM])
    A --- a{{Entero > 0}}
    1 --- B([Attrition_Flag])
    B --- b{{boolean}}
    1 --- C([Customer_Age])
    C --- c{{Entero > 0}}
    1 --- D([Gender])
    D --- d{{"Texto(1)"}}
    1 --- E([Dependent_count])
    E --- e{{Entero > 0}}
    1 --- F([Education_Level])
    F --- f{{"Texto(20)"}}
    1 --- G([Marital_Status])
    G --- g{{"Texto(20)"}}
    1 --- H([Income_Category])
    H --- h{{"Texto(20)"}}
    1 --- I([IdTarjeta])
    I --- i{{Entero > 0}}
    

1---|n|11{Tienen}
11 ---|1|2
2[TablaTarjeta]
2---II([IdTarjeta])
II --- ii{{Entero > 0}}
2---J([Card_Category])
J --- j{{"Texto(20)"}}
2---O([Credit_Limit])
O --- o{{Decimal > 0}}
2---P([Total_Revolving_Bal])
P --- p{{Entero > 0}}
2---Q([Avg_Open_To_Buy])
Q --- q{{Entero > 0}}
2---V([Avg_Utilization_Ratio])
V --- v{{Decimal >= 0 & <=1}}

2---|1|22{Realizan}
22 ---|n|3
3[TablaTransacciones]
3---X([IdTransaccion])
X --- x{{Entero > 0}}
3---S([Total_Trans_Amt])
S --- s{{Entero > 0}}
3---T([Total_Trans_Ct])
T --- t{{Entero > 0}}
```