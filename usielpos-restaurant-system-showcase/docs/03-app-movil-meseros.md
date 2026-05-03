# App móvil para meseros

La app móvil permite operar el restaurante desde dispositivos Android, conectándose a la API del sistema y a impresoras locales cuando aplica.

## Funciones principales

- Login por rol.
- Vista de salas y mesas.
- Toma de pedidos.
- Envío a cocina/barra.
- Revisión de órdenes.
- Cancelaciones parciales o totales con reglas de autorización.
- Cobro e impresión de cuenta/voucher.
- Configuración local de impresoras.
- Operación preparada para modo local/nube.

## Tecnologías

- Flutter.
- Dart.
- Riverpod para estado.
- Dio para HTTP.
- GoRouter para navegación.
- Impresión ESC/POS vía TCP.

## Diseño operativo

La app fue pensada para uso táctil y rápido. Se priorizan pantallas simples, botones grandes, flujos guiados y mensajes claros cuando una operación tarda, falla o queda pendiente.

## Capturas recomendadas

- `screenshots/mobile-mesas.png`
- `screenshots/mobile-pedidos.png`
- `screenshots/mobile-cobro.png`
- `screenshots/mobile-config-impresoras.png`

