-- Particle_Generations
INSERT INTO public."Particle_Generation"(particle_generation)
	VALUES ('first'), ('second'), ('third');

-- Particle_Families
INSERT INTO public."Particle_Families"(family_name)
    VALUES ('lepton'), ('quark'), ('gauge'), ('scalar');

-- Particle_Types
INSERT INTO public."Particle_Types"(particle_type)
    VALUES ('fermion'), ('boson');

-- Interactions
INSERT INTO public."Interactions"(interaction_name)
    VALUES ('electromagnetic'), ('gravity'), ('strong'), ('weak'), ('mass');

-- Particles
INSERT INTO public."Particles"(particle_name,particle_type,particle_family,particle_generation,color_charge,antiparticle_name,electric_charge_e,particle_spin_hbar,"mass_eV_c2")
    VALUES
        ('electron',1,1,1,false,'positron',-1,0.5,511000)
        , ('electron neutrino',1,1,1,false,'electron antineutrino',0,0.5,0.161)
        , ('muon',1,1,2,false,'antimuon',-1,0.5,105660000)
        , ('muon neutrino',1,1,2,false,'muon antineutrino',0,0.5,0.161)
        , ('tauon',1,1,3,false,'antitau',-1,0.5,1776860000)
        , ('tauon neutrino',1,1,3,false,'tau antineutrino',0,0.5,0.161)
        , ('up quark',1,2,1,true,'up antiquark',0.66,0.5,2200000)
        , ('down quark',1,2,1,true,'down antiquark',-0.33,0.5,4700000)
        , ('charm quark',1,2,2,true,'charm antiquark',0.66,0.5,1270000000)
        , ('strange quark',1,2,2,true,'strange antiquark',-0.33,0.5,95000000)
        , ('top quark',1,2,3,true,'top antiquark',0.66,0.5,1.7276000000)
        , ('bottom quark',1,2,3,true,'bottom antiquark',-0.33,0.5,4180000000)
        , ('photon',2,3,null,false,'photon',0,1,0)
        , ('W boson',2,3,null,false,'W+ boson',1,1,80377000)
        , ('Z boson',2,3,null,false,'Z boson',0,1,91187600)
        , ('gluon',2,3,null,true,'gluon',0,1,0)
        , ('Higgs boson',2,4,null,false,'Higgs boson',0,0,125110000)


-- Particle_Interactions
INSERT INTO public."Particle_Interactions"(particle_id, interaction_id)
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
        , (17, 5);