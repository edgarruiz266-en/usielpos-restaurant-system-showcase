# Seguridad y roles

El sistema separa permisos para reducir errores operativos y controlar acciones críticas.

## Roles principales

| Rol | Funciones |
|---|---|
| Administrador | Configuración general, productos, inventario, empleados, facturación, reportes. |
| Supervisor | Operación avanzada, autorizaciones, cortes, cancelaciones, inventarios según permiso. |
| Mesero | Toma de pedidos, consulta de mesas, envío a cocina/barra y flujo operativo limitado. |

## Controles aplicados

- Autenticación por usuario/PIN según flujo.
- Restricción de módulos por rol.
- Autorización para cancelaciones críticas.
- Separación entre pago, propina y cierre de mesa.
- Bitácora o trazabilidad para operaciones relevantes.

## Seguridad en repositorio público

No publicar:

- Tokens de API.
- Cadenas de conexión.
- Licencias.
- Webhook secrets.
- Datos fiscales.
- IDs reales de terminales.

