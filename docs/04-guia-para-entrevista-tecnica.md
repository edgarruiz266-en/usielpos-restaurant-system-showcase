# Guia para explicar el proyecto en entrevista

## Explicacion corta

Construí un ecosistema POS para restaurantes con desktop, app movil y API. El sistema maneja mesas, pedidos, cocina/barra, cobro, inventarios, facturacion, impresion, auditoria y pagos con Mercado Pago Point.

## Explicacion tecnica

La arquitectura conecta una aplicacion desktop en Python/PyQt5, una app movil en Flutter y una API FastAPI que sincroniza datos con SQL Server/Azure SQL. Ademas integra servicios externos como Mercado Pago Point, facturacion CFDI e impresion termica por red o Windows.

## Lo mas complejo que resolvi

- Cobros con terminal fisica sin duplicar pagos.
- Inventario con recetas y reversas por cancelacion.
- Paquetes que se venden como producto unico pero operan como componentes.
- App movil con funciones de mesero, supervisor y administrador.
- Modo local/nube para distintos escenarios de cliente.

## Si preguntan por seguridad

Uso roles, autorizaciones por PIN, auditoria y separacion por licencia/tenant en la API.

## Si preguntan por Mercado Pago

El sistema crea una operacion de cobro, manda el monto a la terminal, monitorea estado por polling/webhook y aplica el pago de forma idempotente. La mesa no se cierra automaticamente; el cierre sigue siendo una accion operativa controlada.

## Si preguntan por inventario

Cada producto puede tener receta. Al enviar a cocina se descuentan insumos; al cancelar se puede reversar segun reglas y se registra en kardex.

## Si preguntan por codigo fuente

El codigo es privado por tratarse de una solucion comercial. En GitHub muestro arquitectura, flujos, capturas y documentacion tecnica.
