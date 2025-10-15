-- Test queries to run in Supabase SQL Editor

-- 1. Check if services exist and are active
SELECT id, name, category, active, route, created_at 
FROM services 
ORDER BY created_at DESC;

-- 2. Check if route column exists and has data
SELECT id, name, route 
FROM services 
WHERE active = true;

-- 3. Count total services
SELECT COUNT(*) as total_services, 
       COUNT(CASE WHEN active = true THEN 1 END) as active_services
FROM services;

-- 4. Check Row Level Security policies
SELECT schemaname, tablename, policyname, permissive, roles, cmd, qual
FROM pg_policies 
WHERE tablename = 'services';