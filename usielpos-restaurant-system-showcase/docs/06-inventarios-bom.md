# Inventarios y recetas BOM

El sistema cuenta con inventario operativo y recetas BOM para descontar insumos automáticamente cuando se venden productos.

## Objetivo

Mantener control de stock real mediante movimientos trazables, consumo de insumos por receta y reversas cuando se cancelan productos u órdenes.

## Flujo de consumo

```mermaid
flowchart TD
    A[Enviar producto a cocina/barra] --> B[Validar si usa receta]
    B --> C[Calcular insumos requeridos]
    C --> D{¿Hay stock suficiente?}
    D -- Sí --> E[Descontar inventario]
    D -- No --> F[Advertir faltante]
    E --> G[Registrar movimiento]
    G --> H[Marcar consumo aplicado]
```

## Flujo de cancelación

```mermaid
flowchart TD
    A[Cancelar item u orden] --> B[Consultar consumos aplicados]
    B --> C{¿Devuelve inventario?}
    C -- Sí --> D[Registrar movimiento inverso]
    C -- No --> E[Registrar merma / no devolución]
    D --> F[Actualizar kárdex]
    E --> F
```

## Características

- Stock por producto de inventario.
- Recetas por producto vendible.
- Conversión de unidades.
- Movimientos de entrada, salida y ajuste.
- Kárdex para trazabilidad.
- Reversas por cancelación.
- Soporte para paquetes con componentes internos.

