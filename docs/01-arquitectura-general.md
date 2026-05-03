# Arquitectura general

## Objetivo

Diseñar un sistema de restaurante capaz de operar pedidos, cobros, inventarios, auditoria, impresion y supervision desde multiples dispositivos.

## Componentes

### POS Desktop

Aplicacion de escritorio orientada a operacion en caja y administracion. Maneja:

- Mesas y salas.
- Pedidos.
- Cobro.
- Impresion termica.
- Inventarios.
- Productos y paquetes.
- Cortes.
- Configuracion.
- Facturacion.

### App movil

Aplicacion Flutter para meseros, supervisores y administradores. Maneja:

- Login por rol.
- Mesas/salas.
- Pedidos y comanda.
- Cobro.
- Impresion local por TCP.
- Inventarios/kardex.
- Productos/paquetes.
- Empleados.
- Supervision y cortes.
- Mercado Pago Point.

### API FastAPI

Capa central de negocio, seguridad y sincronizacion. Expone endpoints REST para:

- Autenticacion.
- Licencia/multi-tenant.
- Ordenes y mesas.
- Cobro.
- Impresion.
- Inventarios.
- Productos y paquetes.
- Salas y mesas.
- Empleados.
- Mercado Pago Point.
- Webhooks.

### Base de datos

SQL Server / Azure SQL con tablas de operacion, auditoria, pagos, inventario, facturacion y configuraciones.

### Servicios externos

- Mercado Pago Point.
- CFDI/SAT.
- Impresoras termicas.
- Cajon de dinero.

## Principio de diseno

La base de datos es la fuente de verdad. Las pantallas no deben inventar estado critico. Los endpoints criticos deben calcular el estado real desde movimientos, pagos, items y configuraciones, evitando depender de valores cacheados.
