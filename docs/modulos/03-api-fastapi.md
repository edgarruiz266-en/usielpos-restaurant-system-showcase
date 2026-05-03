# API FastAPI

## Proposito

La API es la capa que conecta desktop, movil, base de datos, pagos y servicios externos.

## Responsabilidades

- Autenticacion y licencia.
- Multi-tenant por cliente/licencia.
- Reglas de negocio de ordenes, pagos, cancelaciones e inventario.
- Endpoints para app movil.
- Endpoints para desktop cuando aplica.
- Integracion con Mercado Pago Point.
- Webhook publico seguro para eventos externos.
- Healthchecks para modo local/nube.

## Principios

1. **No duplicar logica critica en frontend.**
2. **Calcular estado real desde la base de datos cuando el flujo sea sensible.**
3. **Usar idempotencia en cobros, pagos y movimientos.**
4. **No depender de endpoints de lectura para persistir valores criticos.**
5. **Responder con mensajes limpios para UX.**

## Ejemplo de grupos de endpoints

| Grupo | Ejemplos |
|---|---|
| Auth | `/auth/login`, licencia, perfil |
| Mesas | `/v1/mesas`, `/v1/salas`, estado de mesa |
| Ordenes | abrir, agregar item, enviar pendientes, revisar orden |
| Cobro | status, imprimir cuenta, registrar pago, voucher, cerrar |
| Productos | categorias, productos, paquetes, componentes |
| Inventario | stock, movimientos, kardex, recetas, sync desde pedidos |
| Mercado Pago Point | config, terminales, crear operacion, sync, reintentar, cancelar |
| Webhooks | eventos Mercado Pago Point |

## Multi-tenant

La API usa licencia/token para resolver el tenant y enrutar las operaciones a la base correspondiente. Esto permite operar multiples clientes sin mezclar datos.
