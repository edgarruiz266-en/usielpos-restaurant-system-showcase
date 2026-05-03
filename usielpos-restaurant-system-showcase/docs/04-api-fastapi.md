# API FastAPI

La API REST funciona como capa central entre la app móvil, el POS desktop, la base de datos y servicios externos.

## Responsabilidades

- Autenticación y validación por licencia/tenant.
- Consulta y actualización de mesas, salas y órdenes.
- Registro de pagos y control de estado de cobro.
- Gestión de productos, paquetes e inventario.
- Integración con Mercado Pago Point.
- Preparación de payloads de impresión.
- Exposición de endpoints para la app móvil.

## Tecnologías

- FastAPI.
- Python.
- Uvicorn.
- PyODBC.
- Azure App Service.
- Azure SQL / SQL Server.

## Buenas prácticas aplicadas

- Endpoints privados protegidos por autenticación.
- Validación de licencia/tenant.
- Operaciones idempotentes en pagos.
- Respuestas controladas para evitar errores técnicos crudos en interfaz.
- Separación de servicios por dominio.
- Healthchecks para monitoreo.

## Ejemplo representativo de módulos de API

> Esta lista es descriptiva. No expone rutas privadas reales ni contratos sensibles.

| Módulo | Uso |
|---|---|
| Auth | Login, sesión, roles. |
| Mesas/Salas | Estado de mesas, apertura, cierre, actualización. |
| Órdenes | Items, pedidos, cancelaciones y revisión. |
| Cobro | Estado de cuenta, pagos, voucher, cierre. |
| Inventario | Stock, movimientos, kárdex, recetas. |
| Mercado Pago Point | Crear operación, consultar estado, webhook, reconciliación. |
| Impresión | Payloads para cuenta, cocina, barra y voucher. |

