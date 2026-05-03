# Cobro, caja, vouchers y propinas

## Modos de cobro

- Efectivo.
- Tarjeta manual.
- Mixto.
- Pago parcial.
- Mercado Pago Point.

## Reglas de caja

- La propina no debe afectar el restante de la orden.
- El voucher se maneja por pago, no como bandera global de orden.
- El cierre de mesa no debe ocurrir automaticamente por aprobarse un pago externo.
- El cajon se abre solo cuando aplica: efectivo o mixto con efectivo.
- En mixto, el efectivo puede registrarse separado de la parte enviada a terminal.

## Voucher por pago

Cada pago puede generar su propio voucher. Esto evita confusiones cuando existen pagos parciales o combinados.

## Propinas

Las propinas se registran separadas de los pagos normales:

- Propina manual en efectivo.
- Propina manual en tarjeta.
- Propina detectada desde Mercado Pago Point.

## Riesgos resueltos

- No duplicar pagos.
- No cerrar mesa por error.
- No bloquear al mesero indefinidamente por una operacion Point viva.
- No depender de totales cacheados en ordenes para saber si una cuenta esta liquidada.
