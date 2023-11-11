USE [StandardModel]
GO

-- Particle_Generations
INSERT INTO [dbo].[Particle_Generations] ([particle_generation])
     VALUES ('first'), ('second'), ('third');
GO

-- Particle_Families
INSERT INTO [dbo].[Particle_Families] ([family_name])
     VALUES ('lepton'), ('quark'), ('gauge'), ('scalar');
GO


-- Particle_Types
INSERT INTO [dbo].[Particle_Types] ([particle_type_name])
     VALUES ('fermion'), ('boson');
GO


-- Interactions
INSERT INTO [dbo].[Interactions] ([interaction_name])
     VALUES ('electromagnetic'), ('gravity'), ('strong'), ('weak'), ('mass');
GO

-- Particles
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (1, N'electron', 1, 1, 1, 0, N'positron', CAST(-1.00 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(511000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (2, N'electron neutrino', 1, 1, 1, 0, N'electron antineutrino', CAST(0.00 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(0.1610 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (3, N'muon', 1, 1, 2, 0, N'antimuon', CAST(-1.00 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(105660000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (4, N'muon neutrino', 1, 1, 2, 0, N'muon antineutrino', CAST(0.00 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(0.1610 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (5, N'tauon', 1, 1, 3, 0, N'antitau', CAST(-1.00 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(1776860000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (6, N'tauon neutrino', 1, 1, 3, 0, N'tau antineutrino', CAST(0.00 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), 0.1610)
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (7, N'up quark', 1, 2, 1, 1, N'up antiquark', CAST(0.66 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(2200000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (8, N'down quark', 1, 2, 1, 1, N'down antiquark', CAST(-0.33 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(4700000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (9, N'charm quark', 1, 2, 2, 1, N'charm antiquark', CAST(0.66 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), 1270000000)
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (10, N'strange quark', 1, 2, 2, 1, N'strange antiquark', CAST(-0.33 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(95000000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (11, N'top quark', 1, 2, 3, 1, N'top antiquark', CAST(0.66 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(172760000000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (12, N'bottom quark', 1, 2, 3, 1, N'bottom antiquark', CAST(-0.33 AS Decimal(3, 2)), CAST(0.5 AS Decimal(2, 1)), CAST(4180000000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (13, N'photon', 2, 3, NULL, 0, N'photon', CAST(0.00 AS Decimal(3, 2)), CAST(1.0 AS Decimal(2, 1)), CAST(0.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (14, N'W boson', 2, 3, NULL, 0, N'W+ boson', CAST(1.00 AS Decimal(3, 2)), CAST(1.0 AS Decimal(2, 1)), CAST(80377000.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (15, N'Z boson', 2, 3, NULL, 0, N'Z boson', CAST(0.00 AS Decimal(3, 2)), CAST(1.0 AS Decimal(2, 1)), CAST(91187600.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (16, N'gluon', 2, 3, NULL, 1, N'gluon', CAST(0.00 AS Decimal(3, 2)), CAST(1.0 AS Decimal(2, 1)), CAST(0.0000 AS Decimal(16, 4)))
GO
INSERT [dbo].[Particles] ([particle_name], [particle_type], [particle_family], [particle_generation], [color_charge], [antiparticle_name], [electric_charge_e], [particle_spin_hbar], [mass_eV_c2]) VALUES (17, N'Higgs boson', 2, 4, NULL, 0, N'Higgs boson', CAST(0.00 AS Decimal(3, 2)), CAST(0.0 AS Decimal(2, 1)), CAST(125110000.0000 AS Decimal(16, 4)))
GO


-- Particle_Interactions
INSERT INTO [dbo].[Particle_Interactions] ([particle_id], [interaction_id])
     VALUES
        (1, 1)
        , (1, 2)
        , (1, 4)
        , (2, 2)
        , (2, 4)
        , (3, 1)
        , (3, 2)
        , (3, 4)
        , (4, 2)
        , (4, 4)
        , (5, 1)
        , (5, 2)
        , (5, 4)
        , (6, 2)
        , (6, 4)
        , (7, 1)
        , (7, 2)
        , (7, 3)
        , (7, 4)
        , (8, 1)
        , (8, 2)
        , (8, 3)
        , (8, 4)
        , (9, 1)
        , (9, 2)
        , (9, 3)
        , (9, 4)
        , (10, 1)
        , (10, 2)
        , (10, 3)
        , (10, 4)
        , (11, 1)
        , (11, 2)
        , (11, 3)
        , (11, 4)
        , (12, 1)
        , (12, 2)
        , (12, 3)
        , (12, 4)
        , (13, 1)
        , (13, 2)
        , (13, 4)
        , (14, 4)
        , (15, 4)
        , (16, 3)
        , (17, 5)
GO