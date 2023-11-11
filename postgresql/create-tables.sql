-- Particle_Generations
DROP TABLE IF EXISTS public."Particle_Generations";
CREATE TABLE IF NOT EXISTS public."Particle_Generations"
(
    "ID" SERIAL,
    particle_generation text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Particle_Generations_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Particle_Generations"
    OWNER to postgres;

-- Particle_Families
DROP TABLE IF EXISTS public."Particle_Families";
CREATE TABLE IF NOT EXISTS public."Particle_Families"
(
    "ID" SERIAL,
    family_name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Particle_Families_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Particle_Families"
    OWNER to postgres;

-- Particle_Types
DROP TABLE IF EXISTS public."Particle_Types";
CREATE TABLE IF NOT EXISTS public."Particle_Types"
(
    "ID" SERIAL,
    particle_type_name text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Particle_Types_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Particle_Types"
    OWNER to postgres;

-- Interactions
DROP TABLE IF EXISTS public."Interactions";
CREATE TABLE IF NOT EXISTS public."Interactions"
(
    "ID" SERIAL,
    interaction_name text COLLATE pg_catalog."default",
    CONSTRAINT "Interactions_pkey1" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Interactions"
    OWNER to postgres;

-- Particles
DROP TABLE IF EXISTS public."Particles";
CREATE TABLE IF NOT EXISTS public."Particles"
(
    id SERIAL,
    particle_name text COLLATE pg_catalog."default" NOT NULL,
    particle_type integer,
    particle_family integer,
    particle_generation integer,
    color_charge boolean,
    antiparticle_name text COLLATE pg_catalog."default",
    "mass (eV/c2)" real,
    electric_charge_e real,
    particle_spin_hbar real,
    CONSTRAINT "Particles_pkey" PRIMARY KEY (id),
    CONSTRAINT "FK_Particle_Families" FOREIGN KEY (particle_family)
        REFERENCES public."Particle_Families" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "FK_Particle_Generations" FOREIGN KEY (particle_generation)
        REFERENCES public."Particle_Generations" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "FK_Particle_Types" FOREIGN KEY (particle_type)
        REFERENCES public."Particle_Types" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Particles"
    OWNER to postgres;

-- Particle_Interactions
DROP TABLE IF EXISTS public."Particle_Interactions";
CREATE TABLE IF NOT EXISTS public."Particle_Interactions"
(
    "ID" SERIAL,
    interaction_id integer NOT NULL,
    particle_id integer NOT NULL,
    CONSTRAINT "Interactions_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "FK_Interactions" FOREIGN KEY (interaction_id)
        REFERENCES public."Interactions" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT "FK_Particles" FOREIGN KEY (particle_id)
        REFERENCES public."Particles" (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Particle_Interactions"
    OWNER to postgres;