SET IDENTITY_INSERT [TB_ESPECIALIDAD] ON
INSERT [TB_ESPECIALIDAD] ([ID_Especialidad], [descripcion]) VALUES (1, N'General')
INSERT [TB_ESPECIALIDAD] ([ID_Especialidad], [descripcion]) VALUES (2, N'Cirugía')
INSERT [TB_ESPECIALIDAD] ([ID_Especialidad], [descripcion]) VALUES (3, N'Traumatología')
INSERT [TB_ESPECIALIDAD] ([ID_Especialidad], [descripcion]) VALUES (4, N'Fisioterapia')
INSERT [TB_ESPECIALIDAD] ([ID_Especialidad], [descripcion]) VALUES (5, N'Psicología')
INSERT [TB_ESPECIALIDAD] ([ID_Especialidad], [descripcion]) VALUES (6, N'Psiquiatría')
SET IDENTITY_INSERT [TB_ESPECIALIDAD] OFF

SET IDENTITY_INSERT [TB_MOTIVO_HOSPITALIZACION] ON
INSERT INTO [TB_MOTIVO_HOSPITALIZACION](ID_Motivo_Hospitalizacion, [DescripcionInternamiento])  VALUES (1,'MEDICO')
INSERT INTO [TB_MOTIVO_HOSPITALIZACION](ID_Motivo_Hospitalizacion, [DescripcionInternamiento])  VALUES (2,'AMBULATORIO')
INSERT INTO [TB_MOTIVO_HOSPITALIZACION](ID_Motivo_Hospitalizacion, [DescripcionInternamiento])  VALUES (3,'QUIRURGICO')
SET IDENTITY_INSERT [TB_MOTIVO_HOSPITALIZACION] OFF

SET IDENTITY_INSERT [Habitacion] ON
INSERT [Habitacion] ([HabitacionID], [Nombre], [Descripcion]) VALUES (1, N'habitacion 1', N'nueva habitacion')
SET IDENTITY_INSERT [Habitacion] OFF

SET IDENTITY_INSERT [TB_TIPO_DOCUMENTO] ON
INSERT [TB_TIPO_DOCUMENTO] ([ID_TipoDocumento], [GA_Nombre]) VALUES (1, N'DNI')
INSERT [TB_TIPO_DOCUMENTO] ([ID_TipoDocumento], [GA_Nombre]) VALUES (2, N'Pasaporte')
INSERT [TB_TIPO_DOCUMENTO] ([ID_TipoDocumento], [GA_Nombre]) VALUES (3, N'Licencia de Conducir')
SET IDENTITY_INSERT [TB_TIPO_DOCUMENTO] OFF

SET IDENTITY_INSERT [TB_PACIENTE] ON
INSERT [TB_PACIENTE] ([ID_Paciente], [GA_Nombre], [GA_DocumentoIdentidad], [GA_EstadoCivil], [GA_FechaNacimiento], [GA_Celular], [GA_TelefonoDomicilio], [GA_Pais], [GA_Departamento], [GA_Provincia], [GA_Distrito], [GA_Direccion], [GA_Sexo], [GA_Ocupacion], [ID_TipoDocumento], [dni_paciente], [nombres], [ApellidoPat], [ApellidoMat]) VALUES (9, N'Andree Galdos Correa', N'DNI', N'Soltero', CAST(0x000078ED00000000 AS DateTime), N'951292670', N'4781135', N'Perú', N'Lima', N'Lima', N'Santa Anita', N'Av.Manuel de la Torre #846', N'Masculino', N'Sistemas', 1, N'42637814', N'Andree Alejandro', N'Galdos', N'Correa')
INSERT [TB_PACIENTE] ([ID_Paciente], [GA_Nombre], [GA_DocumentoIdentidad], [GA_EstadoCivil], [GA_FechaNacimiento], [GA_Celular], [GA_TelefonoDomicilio], [GA_Pais], [GA_Departamento], [GA_Provincia], [GA_Distrito], [GA_Direccion], [GA_Sexo], [GA_Ocupacion], [ID_TipoDocumento], [dni_paciente], [nombres], [ApellidoPat], [ApellidoMat]) VALUES (10, N'Oscar Segovia', N'DNI', N'Soltero', CAST(0x00007A3F00000000 AS DateTime), N'951303680', N'4881302', N'Perú', N'Lima', N'Lima', N'Santa Anita', N'Av.Separadora Industril Lot.5 Mz.3', N'Masculino', N'Logística', 1, N'48825680', N'Oscar ', N'Segovia', N'Alvarez')
SET IDENTITY_INSERT [TB_PACIENTE] OFF

SET IDENTITY_INSERT [TB_MEDICO] ON
INSERT [TB_MEDICO] ([ID_Medico], [nom_medico], [ape_medico], [num_cmp], [email], [telefono], [GA_Nombre], [GA_Direccion], [GA_Correo], [GA_Celular], [GA_TelefonoDomicilio], [GE_NombreMedico], [GE_Especialidad], [GE_FechaCertificacion], [GE_CentroEstudios], [GE_CodigoColegiatura]) VALUES (1, N'Gustavo', N'Perez Lazo', N'12345', N'glazo@ci.com.pe', N'4781135', N'Gustavo Lazo', N'Av.Manuel de la Torre #846', N'glazo@ci.com.pe', N'9512926701', N'4781135', N'Gustavo Perez', 1, NULL, NULL, NULL)
INSERT [TB_MEDICO] ([ID_Medico], [nom_medico], [ape_medico], [num_cmp], [email], [telefono], [GA_Nombre], [GA_Direccion], [GA_Correo], [GA_Celular], [GA_TelefonoDomicilio], [GE_NombreMedico], [GE_Especialidad], [GE_FechaCertificacion], [GE_CentroEstudios], [GE_CodigoColegiatura]) VALUES (2, N'Alejandro', N'Galarza Solano', N'32545', N'agalarza@ci.com.pe', N'4883011', N'Alejandro Galarza', N'Av.Los Ficus 787', N'agalarza@ci.com.pe', N'950252630', N'4883011', N'Alejandro Galarza', 2, NULL, NULL, NULL)
INSERT [TB_MEDICO] ([ID_Medico], [nom_medico], [ape_medico], [num_cmp], [email], [telefono], [GA_Nombre], [GA_Direccion], [GA_Correo], [GA_Celular], [GA_TelefonoDomicilio], [GE_NombreMedico], [GE_Especialidad], [GE_FechaCertificacion], [GE_CentroEstudios], [GE_CodigoColegiatura]) VALUES (3, N'Alonso', N'Sotomayor Alvarez', N'98995', N'asotomayor@ci.com.pe', N'5520184', N'Alonso Sotomayor', N'Av.Los Sauces 588', N'asotomayor@ci.com.pe', N'988202520', N'5520184', N'Alonso Sotomayor', 3, NULL, NULL, NULL)
INSERT [TB_MEDICO] ([ID_Medico], [nom_medico], [ape_medico], [num_cmp], [email], [telefono], [GA_Nombre], [GA_Direccion], [GA_Correo], [GA_Celular], [GA_TelefonoDomicilio], [GE_NombreMedico], [GE_Especialidad], [GE_FechaCertificacion], [GE_CentroEstudios], [GE_CodigoColegiatura]) VALUES (4, N'Pedro', N'Rivera Fiorelaso', N'47588', N'privera@ci.com.pe', N'3624796', N'Pedro Rivera', N'Av.Eucaliptos #525', N'privera@ci.com.pe', N'951292370', N'3624796', N'Pedro Rivera', 4, NULL, NULL, NULL)
SET IDENTITY_INSERT [TB_MEDICO] OFF

SET IDENTITY_INSERT TB_HISTORIA_CLINICA ON
INSERT INTO dbo.TB_HISTORIA_CLINICA (ID_Historia,GA_FechaRegistro,GA_Antecedentes,GE_Descripcion,GE_FechaAtencion,ID_Paciente) VALUES (2,GETDATE(),'No cuenta con antecedentes','',GETDATE(),7)
INSERT INTO dbo.TB_HISTORIA_CLINICA (ID_Historia,GA_FechaRegistro,GA_Antecedentes,GE_Descripcion,GE_FechaAtencion,ID_Paciente) VALUES (3,GETDATE(),'No cuenta con antecedentes','',GETDATE(),8)
SET IDENTITY_INSERT TB_HISTORIA_CLINICA OFF

SET IDENTITY_INSERT [TB_ESTADO_CITA] ON
INSERT INTO [BD_ClinicaInternacional].[dbo].[TB_ESTADO_CITA](ID_EstadoCita,[DesEstado]) VALUES (1,1)
INSERT INTO [BD_ClinicaInternacional].[dbo].[TB_ESTADO_CITA](ID_EstadoCita,[DesEstado]) VALUES (2,2)
SET IDENTITY_INSERT [TB_ESTADO_CITA] OFF

SET IDENTITY_INSERT [TB_AGENDA_MEDICA] ON
INSERT INTO [BD_ClinicaInternacional].[dbo].[TB_AGENDA_MEDICA]
(ID_AgendaMedica,[Fecha],[HoraInicio],[HoraFin],[Estado],[ID_Medico])VALUES(1, GETDATE(),GETDATE(),GETDATE(),1,2)
SET IDENTITY_INSERT [TB_AGENDA_MEDICA] OFF

SET IDENTITY_INSERT [TB_CITA] ON
INSERT INTO [BD_ClinicaInternacional].[dbo].[TB_CITA]
(ID_Cita,[GA_FechaHoraCita],[GA_Aseguradora],[GA_Cobertura],[GA_Estado],[GA_OrdenAtencion],[ID_Paciente],[ID_Historia],[ID_Especialidad],[ID_Medico],[ID_AgendaMedica],[ID_EstadoCita])
VALUES(1,GETDATE(),'LA POSITIVA VIDA',1500,'1','10001',7,1,1,3,1,1)
SET IDENTITY_INSERT [TB_CITA] OFF

SET IDENTITY_INSERT [TB_CONSULTA] ON
INSERT INTO [TB_CONSULTA](ID_Consulta,[FechaHoraInicio],[FechaHoraFin],[Observaciones],[ID_Medico],[ID_Cita],[ID_Consultorio],[ID_Paciente],[Diagnostico])VALUES(1,GETDATE(),GETDATE(),'',1,1,1,7,'')
INSERT INTO [TB_CONSULTA](ID_Consulta,[FechaHoraInicio],[FechaHoraFin],[Observaciones],[ID_Medico],[ID_Cita],[ID_Consultorio],[ID_Paciente],[Diagnostico])VALUES(2,GETDATE(),GETDATE(),'',1,1,1,8,'')
SET IDENTITY_INSERT [TB_CONSULTA] ON

SET IDENTITY_INSERT [TB_ORDEN_HOSPITALIZACION] ON

INSERT INTO [TB_ORDEN_HOSPITALIZACION]
([ID_Orden_Hospitalizacion],[GA_FechaOrden],[GA_Prevision],[GA_Motivo],[GA_Tratamiento],[GA_NroDiasHospitalizacion],[GA_ExamenesPreOperatorios],[GA_MedicoTratante],[GA_MedicoTurno],[ID_Paciente],[FechaHora],[Observaciones],[FechaHoraAlta],[ID_Motivo_Hospitalizacion],[ID_Consulta])
VALUES(1001,GETDATE(),'CONVENIO',1,'',5,1,'',2,7,GETDATE(),'',GETDATE(),1,1)
INSERT INTO [TB_ORDEN_HOSPITALIZACION]
([ID_Orden_Hospitalizacion],[GA_FechaOrden],[GA_Prevision],[GA_Motivo],[GA_Tratamiento],[GA_NroDiasHospitalizacion],[GA_ExamenesPreOperatorios],[GA_MedicoTratante],[GA_MedicoTurno],[ID_Paciente],[FechaHora],[Observaciones],[FechaHoraAlta],[ID_Motivo_Hospitalizacion],[ID_Consulta])
VALUES(1002,GETDATE(),'OTROS',1,'',5,1,'',2,7,GETDATE(),'',GETDATE(),1,1)
INSERT INTO [TB_ORDEN_HOSPITALIZACION]
([ID_Orden_Hospitalizacion],[GA_FechaOrden],[GA_Prevision],[GA_Motivo],[GA_Tratamiento],[GA_NroDiasHospitalizacion],[GA_ExamenesPreOperatorios],[GA_MedicoTratante],[GA_MedicoTurno],[ID_Paciente],[FechaHora],[Observaciones],[FechaHoraAlta],[ID_Motivo_Hospitalizacion],[ID_Consulta])
VALUES(1003,GETDATE(),'CONVENIO',1,'',5,1,'',2,7,GETDATE(),'',GETDATE(),1,1)

SET IDENTITY_INSERT [TB_ORDEN_HOSPITALIZACION] OFF

SET IDENTITY_INSERT [TB_CAMA] ON
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(1,100,'A','4A','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(2,200,'A','5A','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(3,300,'B','5B','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(4,400,'B','2B','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(5,500,'B','2B','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(6,600,'B','3B','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(7,700,'A','5A','1')
INSERT INTO [TB_CAMA](ID_Cama,[GA_NroCama],[GA_TipoCama],[GA_Ubicacion],[GA_Estado]) VALUES(8,800,'A','2A','1')
SET IDENTITY_INSERT [TB_CAMA] ON
