-- GMS Website Database Schema
-- Run these commands in your Supabase SQL Editor

-- Enable Row Level Security
ALTER TABLE IF EXISTS services ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS vehicles ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS team_members ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS projects ENABLE ROW LEVEL SECURITY;

-- Services table
CREATE TABLE IF NOT EXISTS services (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  icon TEXT,
  category TEXT NOT NULL DEFAULT 'general',
  features TEXT[] DEFAULT '{}',
  price_range TEXT,
  route TEXT NOT NULL DEFAULT '/contact',
  active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Vehicles table
CREATE TABLE IF NOT EXISTS vehicles (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  image_url TEXT,
  daily_rate DECIMAL(10,2),
  category TEXT NOT NULL DEFAULT 'equipment',
  specifications JSONB DEFAULT '{}',
  available BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Team Members table
CREATE TABLE IF NOT EXISTS team_members (
  id BIGSERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  position TEXT NOT NULL,
  bio TEXT,
  photo_url TEXT,
  email TEXT,
  phone TEXT,
  active BOOLEAN DEFAULT true,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Projects table
CREATE TABLE IF NOT EXISTS projects (
  id BIGSERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT NOT NULL,
  images TEXT[] DEFAULT '{}',
  client TEXT,
  completion_date DATE,
  category TEXT NOT NULL DEFAULT 'general',
  featured BOOLEAN DEFAULT false,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create policies for public read access
CREATE POLICY "Anyone can read services" ON services FOR SELECT USING (active = true);
CREATE POLICY "Anyone can read vehicles" ON vehicles FOR SELECT USING (available = true);
CREATE POLICY "Anyone can read team_members" ON team_members FOR SELECT USING (active = true);
CREATE POLICY "Anyone can read projects" ON projects FOR SELECT USING (true);

-- Insert sample data

-- Sample Services
INSERT INTO services (name, description, category, features, route) VALUES
('Location d''Engins Miniers', 'Bulldozers, pelles mécaniques, camions-bennes, excavateurs et plus encore pour vos projets miniers.', 'mining', ARRAY['Bulldozers D6-D8', 'Pelles hydrauliques', 'Camions-bennes', 'Excavateurs'], '/heavy-equipment'),
('Formation DEWATERING', 'Formation professionnelle complète en techniques de DEWATERING pour l''industrie minière.', 'training', ARRAY['Formation théorique', 'Pratique sur site', 'Certification'], '/contact'),
('Formation Conduite d''Engins Lourds', 'Formation certifiante pour la conduite sécurisée d''engins lourds miniers.', 'training', ARRAY['Permis de conduire engins', 'Sécurité sur chantier', 'Maintenance de base'], '/contact'),
('Location de Véhicules Légers', 'Véhicules légers et utilitaires pour tous vos besoins de transport et logistique.', 'transport', ARRAY['Véhicules 4x4', 'Utilitaires', 'Transport de personnel'], '/vehicles'),
('Tuyauterie et Plomberie', 'Installation et maintenance de systèmes de tuyauterie plastique et métallique.', 'plumbing', ARRAY['Tuyauterie HDPE', 'Soudage plastique', 'Polyfusion', 'Installation métallique'], '/plumbing'),
('Charpente Métallique', 'Conception, fabrication et installation de structures métalliques pour l''industrie.', 'construction', ARRAY['Structures industrielles', 'Hangars', 'Plateformes', 'Passerelles'], '/metal-construction'),
('Commerce Général', 'Fourniture d''équipements et matériels pour l''industrie minière et la construction.', 'commerce', ARRAY['EPI (Équipements de Protection)', 'Outils professionnels', 'Fournitures industrielles'], '/commerce');

-- Sample Vehicles  
INSERT INTO vehicles (name, description, category, daily_rate, specifications) VALUES
('Bulldozer CAT D6T', 'Bulldozer Caterpillar D6T pour travaux de terrassement et nivellement.', 'bulldozer', 850000, '{"puissance": "215 HP", "poids": "18.5 tonnes", "lame": "3.4m³"}'),
('Pelle Hydraulique CAT 320D', 'Pelle hydraulique performante pour excavation et chargement.', 'excavator', 750000, '{"puissance": "174 HP", "poids": "20 tonnes", "godet": "1.2m³"}'),
('Camion-benne Volvo FMX', 'Camion-benne robuste pour transport de matériaux sur chantier.', 'truck', 450000, '{"charge_utile": "25 tonnes", "moteur": "420 HP", "benne": "15m³"}'),
('Compacteur Dynapac CA302D', 'Compacteur vibrant pour compactage de sols et enrobés.', 'compactor', 320000, '{"largeur": "2.13m", "poids": "10.5 tonnes", "force": "280 kN"}');

-- Sample Team Members
INSERT INTO team_members (name, position, bio, email, phone) VALUES
('Kouakou Jean-Baptiste', 'Directeur Général', 'Expert en gestion d''entreprise avec plus de 15 ans d''expérience dans l''industrie minière.', 'direction@gms-sarl.com', '+225 0788884940'),
('Adjoua Marie-Claire', 'Responsable Formation', 'Spécialiste en formation professionnelle et sécurité industrielle.', 'formation@gms-sarl.com', '+225 0123456789'),
('Koné Ibrahim', 'Chef d''Atelier', 'Technicien expert en maintenance d''engins lourds et équipements industriels.', 'atelier@gms-sarl.com', '+225 0987654321');

-- Sample Projects
INSERT INTO projects (title, description, client, completion_date, category, featured) VALUES
('Projet Mine d''Or Bonikro', 'Fourniture et maintenance d''équipements miniers pour l''extraction aurifère.', 'Newmont Corporation', '2024-08-15', 'mining', true),
('Formation Personnel SODEMI', 'Programme de formation DEWATERING pour 50 techniciens.', 'SODEMI', '2024-06-30', 'training', true),
('Construction Hangar Industriel', 'Conception et construction d''un hangar de 2000m² en charpente métallique.', 'Industries Réunies', '2024-09-20', 'construction', false);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_services_category ON services(category);
CREATE INDEX IF NOT EXISTS idx_services_active ON services(active);
CREATE INDEX IF NOT EXISTS idx_vehicles_category ON vehicles(category);
CREATE INDEX IF NOT EXISTS idx_vehicles_available ON vehicles(available);
CREATE INDEX IF NOT EXISTS idx_projects_featured ON projects(featured);
CREATE INDEX IF NOT EXISTS idx_projects_completion_date ON projects(completion_date);

-- Update updated_at trigger function
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create triggers for updated_at
CREATE TRIGGER update_services_updated_at BEFORE UPDATE ON services FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_vehicles_updated_at BEFORE UPDATE ON vehicles FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_team_members_updated_at BEFORE UPDATE ON team_members FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();
CREATE TRIGGER update_projects_updated_at BEFORE UPDATE ON projects FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();