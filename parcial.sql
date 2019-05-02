CREATE DATABASE [Hospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Hospital.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hospital_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Hospital_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hospital] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Hospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hospital] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Hospital] SET  MULTI_USER 
GO
ALTER DATABASE [Hospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hospital] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Hospital] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Hospital]
GO
/****** Object:  Table [dbo].[Administracion]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracion](
	[cod_Admin] [int] IDENTITY(1,1) NOT NULL,
	[encargadoAdmin] [nvarchar](150) NULL,
	[cod_AreaFinan] [int] NOT NULL,
	[cod_Adquis_Contrat] [int] NOT NULL,
	[cod_Manten] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Adquisicion_Contratacion]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adquisicion_Contratacion](
	[cod_Adq_Contr] [int] IDENTITY(1,1) NOT NULL,
	[licitacionesCorrespondientes] [nvarchar](100) NULL,
	[cod_Contratos] [int] NOT NULL,
	[valoracionInsumos] [nvarchar](50) NULL,
	[controlSuministros] [nvarchar](50) NULL,
	[Cod_Inventario] [int] NOT NULL,
	[cod_Evaluaciones] [int] NOT NULL,
	[supervicion] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AreaFinanciera]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaFinanciera](
	[cod_AreaFinan] [int] IDENTITY(1,1) NOT NULL,
	[EncargadoAreaFinan] [nvarchar](50) NULL,
	[valoracionExistencias] [nvarchar](100) NULL,
	[ejecucionPresupuestaria] [nvarchar](150) NULL,
	[estadoFinan] [nvarchar](50) NULL,
	[nominaEmple] [nvarchar](50) NULL,
	[registroContable] [nvarchar](50) NULL,
	[cod_Planillas] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[cod_Contacto] [int] IDENTITY(1,1) NOT NULL,
	[cod_TipoContacto] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contratos]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contratos](
	[cod_Contratos] [int] IDENTITY(1,1) NOT NULL,
	[encargadoContr] [nvarchar](50) NULL,
	[fechaContr] [date] NULL,
	[horaContr] [time](7) NULL,
	[observacionContr] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[cod_Descuentos] [int] IDENTITY(1,1) NOT NULL,
	[afp] [nvarchar](50) NULL,
	[isss] [nvarchar](50) NULL,
	[renta] [nvarchar](50) NULL,
	[otro] [nvarchar](50) NULL,
	[totalDescuentos] [int] NOT NULL,
	[observacion] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Documentos]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documentos](
	[cod_Docum] [int] IDENTITY(1,1) NOT NULL,
	[cod_TipoDocum] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[cod_Empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre_Emple] [nvarchar](50) NULL,
	[primerApellEmple] [nvarchar](50) NULL,
	[segundoApellEmple] [nvarchar](50) NULL,
	[tercerApellEmple] [nvarchar](50) NULL,
	[sexo] [nvarchar](3) NULL,
	[direccion] [nvarchar](75) NULL,
	[fechaNacimiento] [date] NULL,
	[observacion] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluaciones]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluaciones](
	[cod_Evaluaciones] [int] IDENTITY(1,1) NOT NULL,
	[encargadoEvalu] [nvarchar](50) NULL,
	[fechaEvalu] [date] NULL,
	[horaEvalu] [time](7) NULL,
	[detalleEvalu] [nvarchar](75) NULL,
	[descripcion] [nvarchar](150) NULL,
	[cod_Emple] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Expediente]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expediente](
	[cod_expediente] [int] IDENTITY(1,1) NOT NULL,
	[numeroExp] [int] NULL,
	[departamento] [nvarchar](50) NULL,
	[municipio] [nvarchar](50) NULL,
	[zona] [nvarchar](50) NULL,
	[temperatura] [nvarchar](50) NULL,
	[pulso] [nvarchar](50) NULL,
	[peso] [nvarchar](50) NULL,
	[estatura] [nvarchar](50) NULL,
	[pres_Art] [nvarchar](50) NULL,
	[vacunas] [nvarchar](50) NULL,
	[fechaExp] [date] NULL,
	[descripcion] [nvarchar](150) NULL,
	[cod_Paciente] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Inventario]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventario](
	[cod_Inventario] [int] IDENTITY(1,1) NOT NULL,
	[nombreInventario] [nvarchar](75) NULL,
	[FechaInventario] [date] NULL,
	[medicamentos] [nvarchar](50) NULL,
	[utensiliosLimpieza] [nvarchar](50) NULL,
	[materialQuirurgico] [nvarchar](50) NULL,
	[materialCuracion] [nvarchar](50) NULL,
	[laboratorios] [nvarchar](50) NULL,
	[materialEstirilizacion] [nvarchar](50) NULL,
	[farmacias] [nvarchar](50) NULL,
	[clinicas] [nvarchar](50) NULL,
	[inmobiliario] [nvarchar](50) NULL,
	[aparatosMedicos] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Mantenimiento]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento](
	[cod_Manteni] [int] IDENTITY(1,1) NOT NULL,
	[fechaManteni] [date] NULL,
	[ejecucionManteni] [nvarchar](150) NULL,
	[Cod_Inventario] [int] NOT NULL,
	[actualizacionInventario] [nvarchar](50) NULL,
	[revisionCumplimiento] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paciente]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paciente](
	[cod_Paciente] [int] IDENTITY(1,1) NOT NULL,
	[nombrePaci] [nvarchar](50) NULL,
	[primerApellPaci] [nvarchar](50) NULL,
	[segundoApellPaci] [nvarchar](50) NULL,
	[sexo] [nvarchar](3) NULL,
	[fechaNacimiento] [date] NULL,
	[estadoCivil] [nvarchar](50) NULL,
	[ocupacion] [nvarchar](50) NULL,
	[direccionHabitual] [nvarchar](75) NULL,
	[cod_Documentos] [int] NULL,
	[nombrePadre] [nvarchar](75) NULL,
	[nombreMadre] [nvarchar](75) NULL,
	[nombreConyugue] [nvarchar](75) NULL,
	[responsablePaci] [nvarchar](50) NULL,
	[cod_Contacto] [int] NULL,
	[tomoInformacion] [nvarchar](50) NULL,
	[fechaInscripcion] [date] NULL,
	[observacion] [nvarchar](150) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Planillas]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Planillas](
	[cod_Planillas] [int] IDENTITY(1,1) NOT NULL,
	[cod_Emple] [int] NOT NULL,
	[cargo] [nvarchar](50) NULL,
	[cod_descuentos] [int] NOT NULL,
	[cod_R_H] [int] NOT NULL,
	[fechaPlanilla] [date] NULL,
	[salarioTotal] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recursos Humanos]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recursos Humanos](
	[cod_R_H] [int] IDENTITY(1,1) NOT NULL,
	[encargadoR_H] [nvarchar](150) NULL,
	[horaEntradaEmple] [time](7) NULL,
	[horaSalidaEmple] [time](7) NULL,
	[horasExtrasEmple] [time](7) NULL,
	[cod_Empledo] [int] NOT NULL,
	[cod_Evaluaciones] [int] NOT NULL,
	[cod_Contratos] [int] NOT NULL,
	[tarjetaVidaEmple] [nvarchar](50) NULL,
	[Seleccion] [nvarchar](150) NULL,
	[registroSistema] [nvarchar](75) NULL,
	[Informacion] [nvarchar](150) NULL,
	[cod_Expediente] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo Contacto]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo Contacto](
	[cod_TipoContacto] [int] IDENTITY(1,1) NOT NULL,
	[tipoContacto] [nvarchar](50) NULL,
	[nombreContacto] [nvarchar](50) NULL,
	[numeroContacto] [int] NULL,
	[fechaIngreContacto] [date] NULL,
	[observaciones] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 25/04/2019 01:22:00 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[cod_TipoDocum] [int] IDENTITY(1,1) NOT NULL,
	[tipoDocum] [nvarchar](50) NULL,
	[nombreDocum] [nvarchar](50) NULL,
	[numeroDocum] [nvarchar](50) NULL,
	[fechaIngreDocum] [date] NULL,
	[imagenDocum] [image] NULL,
	[observacion] [nvarchar](150) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Hospital] SET  READ_WRITE 
GO

/*INSERSION DE REGISTROS*/

INSERT INTO dbo Empleado (cod_Empleado,nombre_Emple,primerApellEmple,segundoApellEmple,tercerApellEmple,sexo,direccion,fechaNacimiento,observacion)
values(001,'carlos antonio','escobar','casilla','','M','altos del cerro soyapando','1990/05/12',''),
(002,'cecilia areli','segovia','centeno','','f','colonia zacamil','1889/07/12',''),
(003,'ana maria','urrutia','benites','','f','prados de venecia soyapando','1884/05/01',''),
(004,'antonio josue','espinosa','castro','','M','san jacinto','1990/12/12',''),
(005,'oscar javier','carcamo','ceren','','M','22 de abril soyapando','1885/07/12',''),
(006,'joselin marina','escobar','paulino','','f','san roque mejicanos','1991/08/10',''),
(007,'carlos luis','reyes','mendez','','M','cuscatancingo','1994/05/28','',),
(008,'mauricio alberto','palacio','gomez','','M','mejicanos colonia escorial','1993/04/02',''),
(009,'eduardo saul','medina','ceren','','M','san salvador','1990/10/12','',),
(010,'alexander josue','leiva','gonzales','','M','altos del cerro soyapando','1990/05/12','',);

INSERT INTO dbo Evaluaciones (cod_Evaluaciones,encargadoEvalu,fechaEvalu,horaEvalu,detalleEvalu,descripcion,cod_Emple)
values(01,'Jorge Diaz','2019/01/12','08:00','todo con normalidad','',''),
(02,'mauricio ortiz','2019/01/20','08:00','todo con normalidad','',''),
(03,'Jorge Diaz','2019/01/15','08:00','todo con normalidad','',''),
(04,'Jorge Diaz','2019/01/30','08:00','todo con normalidad','se espera que todo mejore',''),
(05,'mauricio ortiz','2019/02/01','08:00','todo con normalidad','',''),
(06,'Jorge Diaz','2019/01/18','08:00','todo con normalidad','',''),
(07,'Jorge Diaz','2019/01/11','08:00','todo con normalidad','',''),
(08,'mauricio ortiz','2019/02/09','08:00','todo con normalidad','faltan materiales medicos',''),
(09,'Jorge Diaz','2019/02/05','08:00','todo con normalidad','',''),
(10,'mauricio ortiz','2019/02/07','08:00','todo con normalidad','','');

INSERT INTO dbo Expediente (cod_expediente,numeroExp,departamento,municipo,zona,temperatura,pulso,peso,estatura,pres_Art,vacunas,fechaExp,descripcion,cod_Paciente)
values(01,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(02,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(03,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(04,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(05,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(06,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(07,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(08,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(09,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
(10,001,'san salvador','mejicanos','','normal','normal','160 libras','','','todas','2019/03/11','',''),
