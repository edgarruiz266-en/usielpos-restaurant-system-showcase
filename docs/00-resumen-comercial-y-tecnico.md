# Resumen comercial y tecnico

UsielPOS es un ecosistema de punto de venta para restaurantes, construido para operar tanto desde PC como desde app movil.

## Enfoque comercial

El producto no se limita a vender y cobrar. Su propuesta fuerte es dar control operativo:

- Seguimiento en vivo entre dispositivos.
- Control de mesas, salas, pedidos, caja y cocina/barra.
- Auditoria de cancelaciones, descuentos y movimientos.
- Inventarios con recetas/BOM y kardex.
- Supervision movil para duenos y encargados.
- Operacion local, remota o multisucursal.
- Integracion de pagos con Mercado Pago Point.

## Enfoque tecnico

El sistema se diseno como arquitectura multi-capa:

1. **Desktop POS**: operacion principal de caja, pedidos, impresion y administracion.
2. **App movil**: comandas, cobro, supervision y administracion segun rol.
3. **API FastAPI**: capa de negocio y sincronizacion entre clientes.
4. **Base de datos central**: Azure SQL / SQL Server como fuente de verdad.
5. **Servicios externos**: Mercado Pago Point, facturacion CFDI, impresion termica.

## Diferenciador

El diferenciador real es la combinacion entre:

- Operacion diaria rapida.
- Evidencia de movimientos sensibles.
- Inventario conectado a recetas.
- Cobro integrado a terminal fisica.
- Supervision remota desde movil.
- Preparacion para sucursales y modelos local/nube.
