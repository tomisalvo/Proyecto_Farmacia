CREATE TABLE [CLIENTES] (
  [Id_Cliente] Numeric(10) PRIMARY KEY,
  [Nom_Cliente] NVARCHAR(40),
  [Ape_Cliente] NVARCHAR(40),
  [Dom_Cliente] NVARCHAR(40),
  [Tel_Cliente] DECIMAL(10),
  [Email_Cliente] NVARCHAR(40),
  [Edad_Cliente] SMALLINT,
  [Id_Ciudad] DECIMAL(4)
)
GO

CREATE TABLE [Dat_FARMACIA] (
  [Id_Farmacia] Numeric(1) PRIMARY KEY,
  [Nom_Farmacia] NVARCHAR(40),
  [Dom_Farmacia] NVARCHAR(40),
  [Tel_Farmacia] DECIMAL(10),
  [Email_Farmacia] NVARCHAR(40),
  [Raz_SocialF] NVARCHAR(40),
  [Id_Ciudad] DECIMAL(4)
)
GO

CREATE TABLE [PROVEEDORES] (
  [Id_Proveedor] Numeric(5) PRIMARY KEY,
  [Nom_Proveedor] NVARCHAR(40),
  [Tel_Proveedor] DECIMAL(10),
  [Email_Proveedor] NVARCHAR(40),
  [Raz_SocialP] NVARCHAR(40),
  [Dom_Proveedor] NVARCHAR(40),
  [Id_Ciudad] DECIMAL(4)
)
GO

CREATE TABLE [OBRAS_SOCIALES] (
  [Id_OS] Numeric(10) PRIMARY KEY,
  [Nom_OS] NVARCHAR(40),
  [Dom_Os] NVARCHAR(40),
  [Id_Ciudad] DECIMAL(4),
  [Tel_OS] DECIMAL(10),
  [Email_OS] NVARCHAR(40),
  [Cuit_OS] NVARCHAR(40)
)
GO

CREATE TABLE [CONTADOR] (
  [Id_Contador] Numeric(1) PRIMARY KEY,
  [Nom_Contador] NVARCHAR(40),
  [Ape_Contador] NVARCHAR(40),
  [Email_Contador] NVARCHAR(40),
  [Dom_Contador] NVARCHAR(40),
  [Tel_Contador] DECIMAL(10)
)
GO

CREATE TABLE [MEDICOS] (
  [Mat_Medico] DECIMAL(12) PRIMARY KEY,
  [Nom_Medico] varchar(40),
  [Ape_Medico] varchar(40),
  [DNI_Medico] varchar(40),
  [Id_Ciudad] DECIMAL(4)
)
GO

CREATE TABLE [TIQUE] (
  [Nro_Tique] DECIMAL(10) PRIMARY KEY,
  [Id_Farmacia] SMALLINT,
  [Id_Cliente] Numeric(10),
  [Det_Tique] DECIMAL(10),
  [Estado_Tiq] NVARCHAR(40),
  [Tipo_Venta] NVARCHAR(40),
  [Fecha_Hora] DATETIME,
  [SubT_Tiq] decimal(10,2),
  [IVA] decimal(10,2),
  [Total_Tiq] decimal(10,2)
)
GO

CREATE TABLE [Det_Tique] (
  [Det_Tique] DECIMAL(10) PRIMARY KEY,
  [Cod_Articulo] DECIMAL(8),
  [Cant_Articulo] DECIMAL(4),
  [ImpPar_Tiq] DECIMAL(10)
)
GO

CREATE TABLE [Comp_Reserva] (
  [Nro_CompRes] DECIMAL(10) PRIMARY KEY,
  [Id_Farmacia] Numeric(1),
  [Fecha_Reserva] DATETIME,
  [Cod_Articulo] DECIMAL(8),
  [Cant_Articulo] DECIMAL(4),
  [ImpPar_Reserva] decimal(10,2),
  [Mot_Abonado] decimal(10,2),
  [Resto] decimal(10,2),
  [Fecha_VenRes] DATE,
  [Obs_Reserva] varchar(400)
)
GO

CREATE TABLE [ORDEN_COMPRA] (
  [Nro_OC] DECIMAL(10) PRIMARY KEY,
  [Id_Proveedor] numeric(5),
  [Id_Farmacia] numeric(1),
  [Det_OC] DECIMAL(10),
  [SubT_OC] decimal(10,2),
  [Descu_OC] Numeric(3),
  [Total_OC] decimal(10,2)
)
GO

CREATE TABLE [Det_OC] (
  [Det_OC] DECIMAL(10) PRIMARY KEY,
  [Cod_Articulo] DECIMAL(8),
  [Fecha_OC] DATE,
  [ImpPar_OC] decimal(10,2)
)
GO

CREATE TABLE [FACTURA] (
  [Nro_Factura] DECIMAL(10) PRIMARY KEY,
  [Det_Factura] DECIMAL(10),
  [SubT_Factura] decimal(10,2),
  [Tipo_Factura] NVARCHAR(40),
  [Fecha_Factura] DATE,
  [Fecha_Venci] DATE,
  [Obsercaciones_F] NVARCHAR(400)
)
GO

CREATE TABLE [Det_Factura] (
  [Det_Factura] DECIMAL(10) PRIMARY KEY,
  [Cod_Articulo] DECIMAL(8),
  [Cant_Articulo] DECIMAL(4),
  [ImpPar_Factura] decimal(10,2),
  [Descu_Articulo] Numeric(3),
  [Nro_OC] DECIMAL(10)
)
GO

CREATE TABLE [REMITO] (
  [Nro_Remito] DECIMAL(10) PRIMARY KEY,
  [Det_Remito] DECIMAL(10),
  [Fecha_Rem] DATETIME,
  [Obsercaciones_R] NVARCHAR(400)
)
GO

CREATE TABLE [Det_Remito] (
  [Det_Remito] DECIMAL(10) PRIMARY KEY,
  [Cod_Articulo] DECIMAL(8),
  [Cant_Articulo] DECIMAL(4),
  [Nro_OC] DECIMAL(10)
)
GO

CREATE TABLE [RECETAS] (
  [Nro_Receta] DECIMAL(10) PRIMARY KEY,
  [Id_OS] Numeric(10),
  [Id_Cliente] Numeric(10),
  [Det_Receta] DECIMAL(10),
  [Id_Medico] DECIMAL(10)
)
GO

CREATE TABLE [Det_Recetas] (
  [Det_Receta] DECIMAL(10) PRIMARY KEY,
  [Cod_Articulo] DECIMAL(8),
  [Cant_Articulo] DECIMAL(4)
)
GO

CREATE TABLE [F_Farmacia] (
  [Nro_Pres_Facturacion] DECIMAL(10) PRIMARY KEY,
  [Fecha_FF] DATETIME,
  [Id_Farmacia] numeric(1),
  [Det_FFarm] DECIMAL(10)
)
GO

CREATE TABLE [Det_FFarm] (
  [Det_FFarm] DECIMAL(10) PRIMARY KEY,
  [Mes] varchar(15),
  [Nro_Receta] DECIMAL(10),
  [Total_Facturado] Decimal(10,2),
  [Total_Fact_OS] Decimal(10,2)
)
GO

CREATE TABLE [CREDENCIAL] (
  [Nro_Credencial] DECIMAL(12) PRIMARY KEY,
  [Id_OS] Numeric(10),
  [Id_Cliente] Numeric(10),
  [Fecha_Ing] DATE,
  [Cond_IVA] NVARCHAR(40),
  [PLAN] NVARCHAR(40)
)
GO

CREATE TABLE [COMPR_PAGO] (
  [Nro_CPago] DECIMAL(15) PRIMARY KEY,
  [Id_Farmacia] numeric(1),
  [Id_OS] Numeric(10),
  [Id_Proveedor] Numeric(5),
  [Fecha_CPago] DATETIME,
  [Detalles] NVARCHAR(400)
)
GO

CREATE TABLE [MOVIMIENTO_CAJA] (
  [Id_Movimiento] DECIMAL(10) PRIMARY KEY,
  [Fecha_Movimiento] DATE,
  [Id_Ingreso] DECIMAL(10),
  [Id_Egreso] DECIMAL(10),
  [Id_Gasto] DECIMAL(10)
)
GO

CREATE TABLE [INGRESOS] (
  [Id_Ingreso] DECIMAL(10) PRIMARY KEY,
  [Tipo_Ingreso] varchar(20),
  [Fecha_Ingreso] DATE,
  [Valor_Ingreso] decimal(10,2)
)
GO

CREATE TABLE [EGRESOS] (
  [Id_Egreso] DECIMAL(10) PRIMARY KEY,
  [Tipo_Egreso] varchar(20),
  [Fecha_Egreso] DATE,
  [Valor_Egreso] decimal(10,2)
)
GO

CREATE TABLE [GASTOS] (
  [Id_Gasto] DECIMAL(10) PRIMARY KEY,
  [Fecha_Gasto] DATE,
  [Valor_Gasto] decimal(10,2),
  [Tipo_Gasto] varchar(20)
)
GO

CREATE TABLE [List_MPendiente] (
  [Nro_ListadoMP] DECIMAL(10) PRIMARY KEY,
  [Nom_ListadoMp] varchar(20),
  [Fecha_ListadoMp] DATE,
  [Cod_Articulo] DECIMAL(8)
)
GO

CREATE TABLE [List_OS] (
  [Nro_ListOS] DECIMAL(10) PRIMARY KEY,
  [Nom_ListOS] varchar(20),
  [Fecha_ListOS] DATE,
  [Id_OS] Numeric
)
GO

CREATE TABLE [List_RecPend] (
  [Nro_LRP] numeric(10) PRIMARY KEY,
  [Nom_ListLRP] varchar(20),
  [Fecha_ListLRP] DATE,
  [Nro_Receta] DECIMAL(10)
)
GO

CREATE TABLE [CAJA] (
  [Nro_Caja] DECIMAL(10) PRIMARY KEY,
  [Fecha_Caja] DATETIME,
  [Nro_Tique] Numeric(10),
  [Id_Farmacia] Numeric(1),
  [Total_Caja] decimal(10,2)
)
GO

CREATE TABLE [List_Semanal] (
  [Nro_ListSem] DECIMAL(10) PRIMARY KEY,
  [Nom_ListSem] varchar(20),
  [Id_Farmacia] Numeric(1),
  [Fecha_ListSem] DATE,
  [Total_ListSem] decimal(10,2)
)
GO

CREATE TABLE [L_Cuentas] (
  [Nro_ListC] DECIMAL(10) PRIMARY KEY,
  [Nom_ListC] varchar(20),
  [Id_Movimiento] DECIMAL(10),
  [Fecha_ListC] DATE
)
GO

CREATE TABLE [COMPROBANTES] (
  [Id_Comprobantes] DECIMAL(10) PRIMARY KEY,
  [Id_Caja] DECIMAL(10),
  [Nro_ListSem] DECIMAL(10),
  [Nro_ListC] DECIMAL(10),
  [Nro_Pres_Facturacion] DECIMAL(10),
  [Id_Contador] Numeric(1)
)
GO

CREATE TABLE [List_Stock] (
  [Nro_ListStock] DECIMAL(10) PRIMARY KEY,
  [Nom_ListStock] varchar(20),
  [Fecha_LS] DATE,
  [Cod_Articulo] DECIMAL(8),
  [Nro_Remito] DECIMAL(10),
  [Nro_Tique] DECIMAL(10)
)
GO

CREATE TABLE [ARTICULOS] (
  [Cod_Articulo] DECIMAL(8) PRIMARY KEY,
  [Nom_Articulo] varchar(20),
  [Droga_Articulo] varchar(30),
  [Formato_Articulo] Varchar(6),
  [Envase_Articulo] Varchar(15),
  [Cant_Disp_Articulo] numeric(5),
  [PU_Articulo] decimal(10,2),
  [PMay_Articulo] decimal(10,2),
  [Descu_Articulo] numeric(3)
)
GO
