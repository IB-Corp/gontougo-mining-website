-- Fix RLS Policy for Contact Submissions
-- Run this if you're getting "row-level security policy" error

-- Drop existing policies
DROP POLICY IF EXISTS "Anyone can submit contact form" ON contact_submissions;
DROP POLICY IF EXISTS "Authenticated users can view submissions" ON contact_submissions;
DROP POLICY IF EXISTS "Authenticated users can update submissions" ON contact_submissions;

-- Create new policy that allows anonymous submissions
CREATE POLICY "Enable insert for all users"
ON contact_submissions
FOR INSERT
WITH CHECK (true);

-- Allow authenticated users to read all submissions
CREATE POLICY "Enable read for authenticated users only"
ON contact_submissions
FOR SELECT
USING (auth.role() = 'authenticated');

-- Allow authenticated users to update submissions
CREATE POLICY "Enable update for authenticated users only"
ON contact_submissions
FOR UPDATE
USING (auth.role() = 'authenticated')
WITH CHECK (auth.role() = 'authenticated');
