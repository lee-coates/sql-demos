USE [StandardModel]
GO

-- Particle_Generations
DROP TABLE IF EXISTS Particle_Generations;
CREATE TABLE [dbo].[Particle_Generations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[particle_generation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Particle_Generations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Particle_Families
DROP TABLE IF EXISTS Particle_Families;
CREATE TABLE [dbo].[Particle_Families](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[family_name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Particle_Families] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Particle_Types
DROP TABLE IF EXISTS Particle_Types;
CREATE TABLE [dbo].[Particle_Types](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[particle_type_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Particle_Types] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- Interactions
DROP TABLE IF EXISTS Interactions;
CREATE TABLE [dbo].[Interactions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[interaction_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Interactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- Particles
DROP TABLE IF EXISTS Particles;
CREATE TABLE [dbo].[Particles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[particle_name] [nvarchar](max) NULL,
	[particle_type] [int] NULL,
	[particle_family] [int] NULL,
	[particle_generation] [int] NULL,
	[color_charge] [bit] NULL,
	[antiparticle_name] [nvarchar](max) NULL,
	[electric_charge_e] [decimal](3, 2) NULL,
	[particle_spin_hbar] [decimal](2, 1) NULL,
	[mass_eV_c2] [decimal](16, 4) NULL,
 CONSTRAINT [PK_Particles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Particles]  WITH CHECK ADD  CONSTRAINT [FK_Particles_Particle_Families] FOREIGN KEY([particle_family])
REFERENCES [dbo].[Particle_Families] ([ID])
GO

ALTER TABLE [dbo].[Particles] CHECK CONSTRAINT [FK_Particles_Particle_Families]
GO

ALTER TABLE [dbo].[Particles]  WITH CHECK ADD  CONSTRAINT [FK_Particles_Particle_Generations] FOREIGN KEY([particle_generation])
REFERENCES [dbo].[Particle_Generations] ([ID])
GO

ALTER TABLE [dbo].[Particles] CHECK CONSTRAINT [FK_Particles_Particle_Generations]
GO

ALTER TABLE [dbo].[Particles]  WITH CHECK ADD  CONSTRAINT [FK_Particles_Particle_Types] FOREIGN KEY([particle_type])
REFERENCES [dbo].[Particle_Types] ([ID])
GO

ALTER TABLE [dbo].[Particles] CHECK CONSTRAINT [FK_Particles_Particle_Types]
GO

-- Particle_Interactions
DROP TABLE IF EXISTS Particle_Interactions;
CREATE TABLE [dbo].[Particle_Interactions](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[interaction_id] [int] NOT NULL,
	[particle_id] [int] NOT NULL,
 CONSTRAINT [PK_Particle_Interactions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Particle_Interactions]  WITH CHECK ADD  CONSTRAINT [FK_Particle_Interactions_Interactions] FOREIGN KEY([interaction_id])
REFERENCES [dbo].[Interactions] ([ID])
GO

ALTER TABLE [dbo].[Particle_Interactions] CHECK CONSTRAINT [FK_Particle_Interactions_Interactions]
GO

ALTER TABLE [dbo].[Particle_Interactions]  WITH CHECK ADD  CONSTRAINT [FK_Particle_Interactions_Particles] FOREIGN KEY([particle_id])
REFERENCES [dbo].[Particles] ([ID])
GO

ALTER TABLE [dbo].[Particle_Interactions] CHECK CONSTRAINT [FK_Particle_Interactions_Particles]
GO