import { createClient } from '@supabase/supabase-js'

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY 

export const supabase = createClient(supabaseUrl, supabaseAnonKey)

// Database table structures (for reference)
/*
Services table:
- id, name, description, icon, category, features (array), route, created_at

Vehicles table:
- id, name, description, image_url, daily_rate, category, specifications (json), available, created_at

Team Members table:
- id, name, position, bio, photo_url, email, phone, created_at

Projects table:
- id, title, description, images (array), client, completion_date, category, created_at
*/