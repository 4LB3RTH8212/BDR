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
## Recursos.

### 
[Mermaid](https://mermaid.live/edit#pako:eNp9lFtP4zAQhf9K5IdVkArKjd60rNQbbBH3BoQ2QZFJTDBK7K7rdAG3_33tKREtFPLSdM58PvbxtAqlPCOoix4K_i99xEJa4TBmln7cKMT3Bb4gYsYZvnsrWru7u1bPjgYn49FZeHZ9erezUnqgYKVGTBLBrV-Ws1yuQ3076kkpqKScJYcFzmuyD_K9UvecFwSzTWygvaqZ5CURSS8nNTQAMf3abmhHR4RlRNTEEMqZUjEKybPktrsTo01mZEdDMjUUk0nKKyZreAQ6-dru0I5GWZViON0JmZOiRg9Bf3j39ZxPxkd2dIp1NLhIJhLLalbDRyDn38K_7WjMUh1QMsCS5Fy81PRv0B-_pceazkIsnojENTcGhW47bcxi5mp1wRauq0JKGGFacmGxhbvwYuatBqdeUxe0NP7oM34z-eRiuo_1pWORbRzoGPqfthzGEOeaECSjMjmhJYV7OweAKzUkKS1xsW5wYUchN3FfkTkv5pTlSR_DlV0ANd22q0s9wfM8OdcTkoQ86Vewr0sA_m4DblbAtaQFfV2NxpX5MNgNYPO13R1YjvXD-nngGny1gAnUU1cEG97k7HnWKnw_Zv5bzgKzGU5TvTqZ6bR93XALYb8LxvAWDJ8_7tO0T-o0AEl6JeQ3AWC2DQg3gQH0h9AvN_tRA-lfbolppv9klJmhGMlHUpIYdfVrRh5wVcgYxcy04kryyQtLUVeKijRQNc30BAwpzgUu6-IUsz-cr39FXYWeUTfY3-u47Vanue93fKfZDBroBXWbga46rcBvub7faneWDfQKuLPX6bScdqCBwGs3206w_A-la43e)