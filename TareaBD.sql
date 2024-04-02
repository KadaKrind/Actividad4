CREATE DATABASE TAREASBD

CREATE TABLE Cliente (
    IDCliente INT PRIMARY KEY,
    Nombre NVARCHAR(50),
    Apellido NVARCHAR(50),
    CorreoElectronico NVARCHAR(100),
    Telefono NVARCHAR(20),
    Direccion NVARCHAR(100)
);

CREATE TABLE Pedido (
    IDPedido INT PRIMARY KEY,
    IDCliente INT,
    Fecha DATETIME,
    Total MONEY,
    Estado NVARCHAR(50),
    FOREIGN KEY (IDCliente) REFERENCES Cliente(IDCliente)
);



INSERT INTO Cliente (IDCliente, Nombre, Apellido, CorreoElectronico, Telefono, Direccion)
VALUES 
(1, 'Juan', 'Pérez', 'juan@example.com', '123456789', 'Calle Principal 123'),
(2, 'María', 'González', 'maria@example.com', '987654321', 'Avenida Central 456'),
(3, 'Pedro', 'Martínez', 'pedro@example.com', '456789123', 'Plaza Mayor 789'),
(4, 'Ana', 'Sánchez', 'ana@example.com', '321654987', 'Boulevard Norte 567'),
(5, 'Carlos', 'López', 'carlos@example.com', '789123456', 'Camino Real 890'),
(6, 'Laura', 'Rodríguez', 'laura@example.com', '654987321', 'Paseo del Sol 1234'),
(7, 'Daniel', 'Fernández', 'daniel@example.com', '147258369', 'Callejón Estrecho 5678'),
(8, 'Sofía', 'Díaz', 'sofia@example.com', '258369147', 'Calle de la Luna 9012'),
(9, 'Pablo', 'Hernández', 'pablo@example.com', '369147258', 'Avenida del Bosque 3456'),
(10, 'Luisa', 'Gómez', 'luisa@example.com', '963852741', 'Avenida del Río 7890'),
(11, 'Martín', 'Pérez', 'martin@example.com', '852963147', 'Calle Mayor 123'),
(12, 'Lucía', 'Vázquez', 'lucia@example.com', '741852963', 'Plaza del Sol 456'),
(13, 'Elena', 'López', 'elena@example.com', '123789456', 'Callejón de la Cruz 789'),
(14, 'Javier', 'Ruiz', 'javier@example.com', '456123789', 'Boulevard Sur 1234'),
(15, 'Carmen', 'Torres', 'carmen@example.com', '789456123', 'Paseo de la Playa 5678');

INSERT INTO Pedido (IDPedido, IDCliente, Fecha, Total, Estado)
VALUES 
(1, 1, '2024-04-01T08:00:00', 150.50, 'pendiente'),
(2, 2, '2024-04-02T10:30:00', 200.75, 'en proceso'),
(3, 3, '2024-04-03T12:15:00', 300.25, 'completado'),
(4, 4, '2024-04-04T14:45:00', 80.00, 'completado'),
(5, 5, '2024-04-05T16:20:00', 150.00, 'en proceso'),
(6, 6, '2024-04-06T18:45:00', 200.00, 'pendiente'),
(7, 7, '2024-04-07T20:10:00', 180.67, 'completado'),
(8, 8, '2024-04-08T22:30:00', 90.31, 'en proceso'),
(9, 9, '2024-04-09T09:45:00', 60.67, 'completado'),
(10, 10, '2024-04-10T11:20:00', 500.00, 'pendiente'),
(11, 11, '2024-04-11T13:30:00', 100.34, 'pendiente'),
(12, 12, '2024-04-12T15:40:00', 320.45, 'completado'),
(13, 13, '2024-04-13T17:00:00', 40.04, 'pendiente'),
(14, 14, '2024-04-14T19:20:00', 70.67, 'completado'),
(15, 15, '2024-04-15T21:45:00', 200.05, 'en proceso');

select * from Pedido