-- Esquema publico simplificado para portafolio.
-- No contiene estructura completa ni datos reales de produccion.

CREATE TABLE ordenes (
    id INT PRIMARY KEY,
    mesa_id INT NULL,
    mesero_id INT NULL,
    estatus NVARCHAR(40),
    total DECIMAL(18,2),
    abierto_en DATETIME2,
    cerrado_en DATETIME2 NULL
);

CREATE TABLE orden_items (
    id INT PRIMARY KEY,
    orden_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad DECIMAL(18,3),
    estatus NVARCHAR(40),
    paquete_parent_item_id INT NULL
);

CREATE TABLE orden_pagos (
    id INT PRIMARY KEY,
    orden_id INT NOT NULL,
    monto DECIMAL(18,2),
    modo NVARCHAR(30),
    origen NVARCHAR(40),
    referencia_externa NVARCHAR(120) NULL,
    creado_en DATETIME2
);

CREATE TABLE orden_propinas (
    id INT PRIMARY KEY,
    orden_id INT NOT NULL,
    orden_pago_id INT NULL,
    monto DECIMAL(18,2),
    modo NVARCHAR(30),
    origen NVARCHAR(40),
    creado_en DATETIME2
);

CREATE TABLE mp_point_operaciones (
    id INT PRIMARY KEY,
    orden_id INT NOT NULL,
    external_reference NVARCHAR(120) UNIQUE,
    idempotency_key NVARCHAR(120) UNIQUE,
    status NVARCHAR(40),
    amount_requested DECIMAL(18,2),
    amount_approved DECIMAL(18,2) NULL,
    applied_to_pos BIT DEFAULT 0,
    created_at DATETIME2,
    updated_at DATETIME2
);

CREATE TABLE inventario_movimientos (
    id INT PRIMARY KEY,
    producto_id INT NOT NULL,
    tipo NVARCHAR(40),
    cantidad DECIMAL(18,3),
    orden_id INT NULL,
    orden_item_id INT NULL,
    motivo NVARCHAR(200) NULL,
    creado_en DATETIME2
);
