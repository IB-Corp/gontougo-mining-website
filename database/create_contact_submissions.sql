-- Create contact_submissions table
CREATE TABLE IF NOT EXISTS contact_submissions (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone VARCHAR(50) NOT NULL,
  company VARCHAR(255),
  subject VARCHAR(100) NOT NULL,
  message TEXT NOT NULL,
  status VARCHAR(50) DEFAULT 'new',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW()),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc', NOW())
);

-- Create index on created_at for faster queries
CREATE INDEX IF NOT EXISTS idx_contact_submissions_created_at ON contact_submissions(created_at DESC);

-- Create index on status for filtering
CREATE INDEX IF NOT EXISTS idx_contact_submissions_status ON contact_submissions(status);

-- Enable Row Level Security
ALTER TABLE contact_submissions ENABLE ROW LEVEL SECURITY;

-- Policy: Allow anyone (including anonymous users) to insert (submit contact form)
CREATE POLICY "Anyone can submit contact form" 
ON contact_submissions 
FOR INSERT 
WITH CHECK (true);

-- Policy: Only authenticated users can read submissions (for admin panel later)
CREATE POLICY "Authenticated users can view submissions" 
ON contact_submissions 
FOR SELECT 
TO authenticated 
USING (true);

-- Policy: Only authenticated users can update status
CREATE POLICY "Authenticated users can update submissions" 
ON contact_submissions 
FOR UPDATE 
TO authenticated 
USING (true);

-- Add trigger to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = TIMEZONE('utc', NOW());
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_contact_submissions_updated_at 
BEFORE UPDATE ON contact_submissions 
FOR EACH ROW 
EXECUTE FUNCTION update_updated_at_column();
