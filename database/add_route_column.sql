-- Add route column to services table
ALTER TABLE services ADD COLUMN route TEXT;

-- Update existing services with proper routes
UPDATE services SET route = '/heavy-equipment-rental' WHERE name LIKE '%Location d''Engins Miniers%';
UPDATE services SET route = '/dewatering' WHERE name LIKE '%Formation DEWATERING%';
UPDATE services SET route = '/heavy-vehicle-training' WHERE name LIKE '%Formation%Conduite%';
UPDATE services SET route = '/heavy-vehicle-training' WHERE name LIKE '%Location de V%hicules%';
UPDATE services SET route = '/plumbing' WHERE name LIKE '%Tuyauterie%' OR name LIKE '%Plomberie%';
UPDATE services SET route = '/metal-construction' WHERE name LIKE '%Charpente M%tallique%';
UPDATE services SET route = '/commerce' WHERE name LIKE '%Commerce G%n%ral%';

-- Set default route for any services without a route
UPDATE services SET route = '/contact' WHERE route IS NULL;

-- Make route column required for future inserts
ALTER TABLE services ALTER COLUMN route SET NOT NULL;
ALTER TABLE services ALTER COLUMN route SET DEFAULT '/contact';