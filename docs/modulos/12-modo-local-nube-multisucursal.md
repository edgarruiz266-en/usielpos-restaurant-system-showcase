# Modo local, modo nube y multisucursal

## Objetivo

Permitir distintos escenarios de cliente:

1. Cliente con PC + app movil en red local.
2. Cliente solo con app movil y API en nube.
3. Cliente con supervision remota.
4. Cliente con una o varias sucursales.

## Modo LOCAL

La PC puede levantar una API local embebida. La app movil descubre o usa la API local cuando esta en la misma red.

Ventajas:

- Operacion rapida en LAN.
- Menor dependencia de internet para operacion interna.
- Impresoras LAN accesibles.

## Modo NUBE

La app movil usa una API remota desplegada en Azure.

Ventajas:

- Supervision fuera de la sucursal.
- Operacion para clientes sin PC.
- Centralizacion por cliente/licencia.

## Reglas

- LOCAL y NUBE son mutuamente excluyentes por dispositivo.
- La app debe guardar la fuente activa.
- Si el movil esta fuera de la red local, no puede usar impresoras LAN ni API local.
- La nube es necesaria para supervision remota real.

## Multisucursal

La arquitectura contempla separacion por cliente, sucursal y permisos para permitir crecimiento sin mezclar datos.
