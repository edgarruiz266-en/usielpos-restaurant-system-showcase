# Decisiones tecnicas importantes

## 1. Codigo fuente privado

El sistema se documenta publicamente como showcase, pero el codigo fuente no se publica.

## 2. Backend como fuente de reglas criticas

Las reglas delicadas se concentran en servicios backend o servicios desktop, no en widgets visuales.

## 3. Idempotencia en pagos y movimientos

Mercado Pago, inventario y pagos requieren proteccion contra duplicados.

## 4. Vouchers por pago

El voucher se maneja por pago para soportar pagos parciales y mixtos.

## 5. Paquetes con padre visible e hijos internos

Permite vender simple y operar con detalle.

## 6. Modo local/nube

Permite adaptarse al tipo de cliente sin reconstruir toda la app.

## 7. Trazabilidad primero

Cancelaciones, descuentos, inventarios y pagos deben dejar evidencia.

## 8. No depender de totales cacheados en flujos criticos

El restante real debe calcularse desde items, descuentos y pagos validos cuando se crea un cobro externo.
