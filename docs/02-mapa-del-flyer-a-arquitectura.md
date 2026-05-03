# Mapeo arquitectura tecnica

Este documento traduce las promesas comerciales del flyer a componentes tecnicos reales del sistema.

| Punto del flyer | Implementacion tecnica |
|---|---|
| Comandas desde celular | App Flutter con flujo de mesas, productos, ordenes y envio a estaciones |
| Cocina/barra en tiempo real | API + estado de items pendientes/enviados + impresion por estacion |
| Cobro flexible | Cobro efectivo, tarjeta, mixto, pagos parciales, voucher por pago |
| Inventarios con recetas/BOM | Motor de recetas, conversiones, validacion de stock y movimientos de kardex |
| Auditoria con PIN | Autorizaciones por rol/PIN, registro de usuario, motivo y fecha |
| Supervision remota | App movil con vistas de cortes, inventario, historial y configuracion |
| Mesas, pedidos y seguimiento en vivo | Polling/snapshot diff, estados de mesa/orden e invalidaciones controladas |
| Paquetes, combos y desgloses | Producto padre visible + hijos internos para cocina/barra/inventario |
| Kardex de cancelaciones | Cancelacion parcial/total con motivo, autorizacion, reversa y evidencia |
| Kardex de descuentos | Descuentos fijos/personalizados con usuario autorizador y timestamp |
| Control por sucursal y area | Estructura preparada para tenant/sucursal/area, salas y estaciones |
| Tickets internos por estacion | Cocina, barra, cuenta, voucher, cortes y configuracion de tickets |
| App movil casi como PC | Modulos moviles para productos, paquetes, empleados, salas, mesas, inventario y cobro |
| Facturacion y desglose fiscal | Subtotal, IVA, tasa, clientes fiscales, emisor y seguimiento de ordenes facturables |
| Conexión local o remota | Modo LOCAL con API en red del cliente y modo NUBE con API remota |
| Mercado Pago Point | Cobro desde desktop y movil con terminal fisica, estado, webhook/polling e idempotencia |

## Resultado

Vendeo control, velocidad y supervision; la arquitectura lo respalda con una combinacion de desktop, movil, API, base de datos central, auditoria y modulos especializados.
