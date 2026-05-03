# POS Desktop

La aplicación desktop es el centro operativo del sistema. Está orientada a uso en caja, administración y supervisión.

## Funciones principales

- Gestión de mesas y salas.
- Toma de pedidos.
- Envío de comandas a cocina/barra.
- Cobro en efectivo, tarjeta, mixto y pagos parciales.
- Impresión de cuenta, voucher y cortes.
- Apertura de cajón de dinero.
- Gestión de productos, paquetes, inventarios y recetas.
- Configuración de tickets e impresoras.
- Facturación CFDI.
- Cortes de caja y cortes por mesero.

## Tecnologías

- Python.
- PyQt5/PySide para interfaz gráfica.
- SQL Server / Azure SQL.
- SQLite para ciertos escenarios locales.
- ESC/POS para impresión térmica.

## Diseño operativo

La interfaz está pensada para operación rápida en restaurante. Los flujos críticos evitan depender de procesos lentos o bloqueantes. Por ejemplo, una falla de impresora no debe destruir el flujo completo de cobro.

## Capturas recomendadas

Colocar aquí capturas limpias con datos demo:

- `screenshots/desktop-pedidos.png`
- `screenshots/desktop-cobro.png`
- `screenshots/desktop-inventario.png`
- `screenshots/desktop-cortes.png`

