# Productos, paquetes y combos

## Problema

Un paquete debe venderse como un solo producto, pero cocina, barra e inventario necesitan verlo desglosado.

Ejemplo:

- Paquete Familiar
  - 2 hamburguesas
  - 2 refrescos
  - 1 papas grandes

## Solucion

El sistema maneja:

- Producto padre visible.
- Hijos internos basados en productos reales.
- Precio propio del paquete.
- Componentes configurables.
- Envio a cocina/barra por componente.
- Inventario/BOM por componente.
- Cancelacion parcial o total respetando remanentes.

## Resultado

El ticket comercial muestra el paquete de forma clara, pero la operacion interna conserva control real.

## Beneficio tecnico

Este modulo resuelve una regla compleja sin romper:

- Cobro.
- Inventario.
- Impresion.
- Cancelaciones.
- Reportes.
- App movil.
