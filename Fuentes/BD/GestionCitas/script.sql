USE master
GO 
create database DB_SGH
GO
USE [DB_SGH]
GO
/****** Object:  Table [dbo].[TB_Agenda_Medica]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Agenda_Medica](
	[CodigoAgenda] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[HoraInicio] [datetime] NULL,
	[HoraFin] [datetime] NULL,
	[Estado] [bit] NOT NULL,
	[CodigoMedico] [int] NOT NULL,
	[NumeroConsultorio] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoAgenda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Analisis]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Analisis](
	[CodigoAnalisis] [int] IDENTITY(1,1) NOT NULL,
	[FechaSolicitud] [datetime] NULL,
	[FechaAnalisis] [datetime] NULL,
	[Resultado] [varchar](50) NULL,
	[Observaciones] [varchar](100) NULL,
	[CodigoConsulta] [int] NOT NULL,
	[CodigoTipoAnalisis] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoAnalisis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Cita]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Cita](
	[CodigoCita] [int] IDENTITY(1,1) NOT NULL,
	[FechaCita] [date] NULL,
	[CodigoPaciente] [int] NOT NULL,
	[CodigoMedico] [int] NOT NULL,
	[CodigoAgenda] [int] NOT NULL,
	[IdEstado] [int] NULL,
 CONSTRAINT [PK__Cita__D97C79B007020F21] PRIMARY KEY CLUSTERED 
(
	[CodigoCita] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Consulta]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Consulta](
	[CodigoConsulta] [int] IDENTITY(1,1) NOT NULL,
	[FechaHoraInicio] [datetime] NOT NULL,
	[FechaHoraFin] [datetime] NULL,
	[Observaciones] [varchar](100) NULL,
	[CodigoMedico] [int] NOT NULL,
	[CodigoCita] [int] NOT NULL,
	[CodigoConsultorio] [int] NOT NULL,
	[CodigoPaciente] [int] NOT NULL,
	[Diagnostico] [varchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Consultorio]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Consultorio](
	[CodigoConsultorio] [int] IDENTITY(1,1) NOT NULL,
	[NumeroConsultorio] [varchar](20) NULL,
	[Piso] [varchar](20) NULL,
	[CodigoLocal] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoConsultorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Especialidad]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Especialidad](
	[CodigoEspecialidad] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoEspecialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Estado_Cita]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Estado_Cita](
	[IdEstado] [int] NOT NULL,
	[DesEstado] [Varchar](20) NULL,
 CONSTRAINT [PK_EstadoCitas] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TB_Local]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Local](
	[CodigoLocal] [int] IDENTITY(1,1) NOT NULL,
	[NombreLocal] [varchar](100) NULL,
	[DireccionLocal] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoLocal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Medicamento]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Medicamento](
	[CodigoMedicamento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[Laboratorio] [varchar](100) NULL,
	[Observaciones] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoMedicamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Medico]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Medico](
	[CodigoMedico] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[Apellidos] [varchar](100) NULL,
	[CodigoEspecialidad] [int] NULL,
	[NumeroColegiatura] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoMedico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Motivo_Hospitalizacion]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Motivo_Hospitalizacion](
	[CodigoMotivo] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionInternamiento] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoMotivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Orden_Hopitalizacion]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Orden_Hopitalizacion](
	[CodigoOrden] [int] IDENTITY(1,1) NOT NULL,
	[FechaHora] [datetime] NOT NULL,
	[Observaciones] [varchar](100) NULL,
	[FechaHoraAlta] [datetime] NULL,
	[CodigoMotivo] [int] NOT NULL,
	[CodigoConsulta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Paciente]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Paciente](
	[CodigoPaciente] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](100) NULL,
	[ApellidoPat] [varchar](100) NULL,
	[ApellidoMat] [varchar](100) NULL,
	[Direccion] [varchar](100) NULL,
	[FechaNacimiento] [datetime] NULL,
	[Telefono] [varchar](15) NULL,
	[TelefonoCasa] [varchar](15) NULL,
	[Dni] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoPaciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Prescripcion_Medica]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Prescripcion_Medica](
	[CodigoReceta] [int] IDENTITY(1,1) NOT NULL,
	[Dosis] [varchar](50) NULL,
	[Frecuencia] [varchar](50) NULL,
	[CodigoMedicamento] [int] NOT NULL,
	[CodigoConsulta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TB_Tipo_Analisis]    Script Date: 05/03/2014 12:28:37 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TB_Tipo_Analisis](
	[CodigoTipoAnalisis] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NULL,
	[TipoResultado] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodigoTipoAnalisis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[TB_Agenda_Medica]  WITH CHECK ADD FOREIGN KEY([CodigoMedico])
REFERENCES [dbo].[TB_Medico] ([CodigoMedico])
GO
ALTER TABLE [dbo].[TB_Agenda_Medica]  WITH CHECK ADD FOREIGN KEY([CodigoMedico])
REFERENCES [dbo].[TB_Medico] ([CodigoMedico])
GO
ALTER TABLE [dbo].[TB_Analisis]  WITH CHECK ADD FOREIGN KEY([CodigoTipoAnalisis])
REFERENCES [dbo].[TB_Tipo_Analisis] ([CodigoTipoAnalisis])
GO
ALTER TABLE [dbo].[TB_Analisis]  WITH CHECK ADD FOREIGN KEY([CodigoConsulta])
REFERENCES [dbo].[TB_Consulta] ([CodigoConsulta])
GO
ALTER TABLE [dbo].[TB_Analisis]  WITH CHECK ADD FOREIGN KEY([CodigoTipoAnalisis])
REFERENCES [dbo].[TB_Tipo_Analisis] ([CodigoTipoAnalisis])
GO
ALTER TABLE [dbo].[TB_Analisis]  WITH CHECK ADD FOREIGN KEY([CodigoConsulta])
REFERENCES [dbo].[TB_Consulta] ([CodigoConsulta])
GO
ALTER TABLE [dbo].[TB_Cita]  WITH CHECK ADD  CONSTRAINT [FK__Cita__CodigoAgen__33D4B598] FOREIGN KEY([CodigoAgenda])
REFERENCES [dbo].[TB_Agenda_Medica] ([CodigoAgenda])
GO
ALTER TABLE [dbo].[TB_Cita] CHECK CONSTRAINT [FK__Cita__CodigoAgen__33D4B598]
GO
ALTER TABLE [dbo].[TB_Cita]  WITH CHECK ADD  CONSTRAINT [FK__Cita__CodigoMedi__36B12243] FOREIGN KEY([CodigoMedico])
REFERENCES [dbo].[TB_Medico] ([CodigoMedico])
GO
ALTER TABLE [dbo].[TB_Cita] CHECK CONSTRAINT [FK__Cita__CodigoMedi__36B12243]
GO
ALTER TABLE [dbo].[TB_Cita]  WITH CHECK ADD  CONSTRAINT [FK__Cita__CodigoPaci__37A5467C] FOREIGN KEY([CodigoPaciente])
REFERENCES [dbo].[TB_Paciente] ([CodigoPaciente])
GO
ALTER TABLE [dbo].[TB_Cita] CHECK CONSTRAINT [FK__Cita__CodigoPaci__37A5467C]
GO
ALTER TABLE [dbo].[TB_Cita]  WITH CHECK ADD  CONSTRAINT [FK_Cita_EstadoCita] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[TB_Estado_Cita] ([IdEstado])
GO
ALTER TABLE [dbo].[TB_Cita] CHECK CONSTRAINT [FK_Cita_EstadoCita]
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD  CONSTRAINT [FK__Consulta__Codigo__3B75D760] FOREIGN KEY([CodigoCita])
REFERENCES [dbo].[TB_Cita] ([CodigoCita])
GO
ALTER TABLE [dbo].[TB_Consulta] CHECK CONSTRAINT [FK__Consulta__Codigo__3B75D760]
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD FOREIGN KEY([CodigoPaciente])
REFERENCES [dbo].[TB_Paciente] ([CodigoPaciente])
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD FOREIGN KEY([CodigoConsultorio])
REFERENCES [dbo].[TB_Consultorio] ([CodigoConsultorio])
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD FOREIGN KEY([CodigoMedico])
REFERENCES [dbo].[TB_Medico] ([CodigoMedico])
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD FOREIGN KEY([CodigoPaciente])
REFERENCES [dbo].[TB_Paciente] ([CodigoPaciente])
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD FOREIGN KEY([CodigoConsultorio])
REFERENCES [dbo].[TB_Consultorio] ([CodigoConsultorio])
GO
ALTER TABLE [dbo].[TB_Consulta]  WITH CHECK ADD FOREIGN KEY([CodigoMedico])
REFERENCES [dbo].[TB_Medico] ([CodigoMedico])
GO
ALTER TABLE [dbo].[TB_Consultorio]  WITH CHECK ADD FOREIGN KEY([CodigoLocal])
REFERENCES [dbo].[TB_Local] ([CodigoLocal])
GO
ALTER TABLE [dbo].[TB_Consultorio]  WITH CHECK ADD FOREIGN KEY([CodigoLocal])
REFERENCES [dbo].[TB_Local] ([CodigoLocal])
GO
ALTER TABLE [dbo].[TB_Medico]  WITH CHECK ADD FOREIGN KEY([CodigoEspecialidad])
REFERENCES [dbo].[TB_Especialidad] ([CodigoEspecialidad])
GO
ALTER TABLE [dbo].[TB_Medico]  WITH CHECK ADD FOREIGN KEY([CodigoEspecialidad])
REFERENCES [dbo].[TB_Especialidad] ([CodigoEspecialidad])
GO
ALTER TABLE [dbo].[TB_Prescripcion_Medica]  WITH CHECK ADD FOREIGN KEY([CodigoConsulta])
REFERENCES [dbo].[TB_Consulta] ([CodigoConsulta])
GO
ALTER TABLE [dbo].[TB_Prescripcion_Medica]  WITH CHECK ADD FOREIGN KEY([CodigoMedicamento])
REFERENCES [dbo].[TB_Medicamento] ([CodigoMedicamento])
GO
ALTER TABLE [dbo].[TB_Prescripcion_Medica]  WITH CHECK ADD FOREIGN KEY([CodigoConsulta])
REFERENCES [dbo].[TB_Consulta] ([CodigoConsulta])
GO
ALTER TABLE [dbo].[TB_Prescripcion_Medica]  WITH CHECK ADD FOREIGN KEY([CodigoMedicamento])
REFERENCES [dbo].[TB_Medicamento] ([CodigoMedicamento])
GO
