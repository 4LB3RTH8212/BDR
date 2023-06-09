# Tarea 2: Modelo Entidad Relación

## BD. Predicción de la segmentación de clientes de tarjetas de crédito

```mermaid
Flowchart TD
    1[TablaCliente]
    1 --- A([IdPersona])
    A --- a{{Entero > 0}}
    1 --- B([Nombre])
    B --- b{{"Texto(50)"}}
    1 --- C([Estado])
    C --- c{{"Texto(30)"}}
    1 --- D([Ciudad])
    D --- d{{"Texto(30)"}}

1---|1|11{Tienen}
11 ---|n|2
2[TablaCredito]
2 ---E([Id Credito])
E --- e{{Entero > 0}}
2 ---F([Monto])
F --- f{{Decimal > 0}}
2 ---G([Monto Total])
G --- g{{Decimal > 0}}
2 ---H([Pagos])
H --- h{{Entero > 0}}
2 ---I([Dependencia])
I --- i{{"Texto(30)"}}
2 ---J([Estatus])
J --- j{{"Texto(20)"}}
2 ---K([Sucursal])
K --- k{{"Texto(30)"}}
2 ---L([F.Desembolso])
L --- l{{Date}}
2 ---M([Frecuencia])
M --- m{{"Texto(20)"}}
2 ---N([vScoreBuro])
N --- n{{Date}}
2 ---Ñ([Pago Requerido])
Ñ --- ñ{{Decimal > 0}}

2---|1|22{Reciben}
22 ---|n|3
3[TablaPago]
3 ---P([Id Pago])
P --- p{{Entero > 0}}
3 ---Q([Origen de Movimiento])
Q --- q{{Entero > 0}}
3 ---R([Fecha Pago])
R --- r{{Date}}
3 ---S([Fecha Aplicación])
S --- s{{Date}}
3 ---T([Importe de Pago])
T --- t{{Decimal > 0}}

1---|1|33{Tienen}
33 ---|n|4
4[TablaReferencia]
4 ---U([IdReferencia])
U --- u{{Entero > 0}}
4 ---V([Referencia])
V --- v{{Entero > 0}}
4 ---W([RELACION])
W --- w{{Entero > 0}}
4 ---X([vphonenumber])
X --- x{{"Texto(10)"}}



```
## Recursos.

### 
[Mermaid](https://mermaid.live/edit#pako:eNp1lNtyokAQhl-FmitSpZaAROPFVhk1iUk0Rs2hFnIxQqvswowZIIdFHyKPsrWP4Ivt0HiIhsiNdH9_98xPzyTE4S6QOpn4_NWZUREpo5bNFPnTrBEd-7Tpe8AieFoHlWKxqDRUq-P2QYSc0aejLNPADE2StqQFV34o5eXys-hUtXo8GAvYKE4xPE4Sm4zgLeKqWT6yyb6oqVrtMKIu34iaGHZ2IuOrqKVaTS92qbsRtTDs5ohspsnUQltoWjKSGwUmgxqWWbCFbjN97YIA14u4dEFPc-3UAGUTlF3a2AEOd4_wmWp1Ocu4M-QmSdICxwuovweer0FlxCPqp_g54tN8_EK1-nTKwxS8QHCW27-jWi2YA3OBOR5-rw7SXo4fKLjMTI9iLH2J8K8drO_BV6o1jJ1YhNmKr5D-_V3pa9U6K7UghGDM_RAtuUaFL_dII9iCXQkKcOLtmruIBd8to6daL0OHCziNBZbtIc8Oyq4-MtOUATzHILxssFYfCK_-fjFayrL50PVkIFNjHBBdXw-IYTMjG5C0qJwOI030cTowIov3sfb88NMgeataN8KbAlNcULr8xQvSw4ayW5Q958oG0hyQp3XbY4Cw2G0WseEGa8x9z6GOt_rHUnqIdHhAj-SqgzkXEaSL2VQeIRvlGLM-OIaxOziGsfalYrNK5ssAJiCyjyhjafoudedTWDa5wybx4V4Rv1etffge4Zdc-EHC7etGs3PTS9EHRF9z0Uc5MPMZlwuPgzGIFH9E_G03YtrumiAFEoAIqOfKyzJJrxWbRDMIwCZ1-deFCY39yCY2W0qUxhEfvjOH1CfUD6FA4rkrvW55dCposI3OKfvJuXyPRJy9knpC3kjd1Ep6tarVzHJFL-snNfO4QN5JvWjopeOqqZUN-VRNQzeXBfIHK2ilY7NaqZZrum4YFb12crz8D_XZ0k8)