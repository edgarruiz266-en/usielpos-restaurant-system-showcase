# POS Desktop

## Proposito

Aplicacion principal para operacion dentro del restaurante. Esta orientada a caja, administracion, supervision y control local.

## Modulos principales

- Login y control por rol.
- Selector de mesas y salas.
- Toma de pedidos.
- Cobro y registro de pagos.
- Impresion de cuenta y voucher.
- Cortes de caja.
- Inventarios y kardex.
- Productos, categorias y paquetes.
- Configuracion de impresoras.
- Configuracion de tickets.
- Facturacion y clientes fiscales.
- Mercado Pago Point.

## Flujos relevantes

### Pedido

1. Se selecciona mesa/sala.
2. Se asigna o valida mesero por PIN.
3. Se agregan productos.
4. Se envian pendientes a cocina/barra.
5. Se marcan items enviados/impresos.

### Cobro

1. Se consulta snapshot de la orden.
2. Se calcula total, descuentos y pagos previos.
3. Se permite efectivo, tarjeta, mixto o pago parcial.
4. Si hay Mercado Pago Point activo, puede enviarse el monto a terminal.
5. Se registra pago.
6. Se imprime voucher por pago.
7. La mesa se cierra solo cuando cumple reglas operativas.

### Impresion

El desktop maneja impresion por:

- TCP 9100.
- Windows spooler.
- Simulacion para pruebas.

## Valor tecnico

El desktop concentra tareas delicadas de operacion: dinero, impresion, caja, cortes y configuracion. Por eso la arquitectura evita bloquear la UI con tareas pesadas o llamadas externas lentas.
