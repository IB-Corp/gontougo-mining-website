-- Database trigger to automatically send email when new contact submission is created
-- This calls the Supabase Edge Function to send the notification email

-- First, create the trigger function
CREATE OR REPLACE FUNCTION notify_new_contact_submission()
RETURNS TRIGGER AS $$
DECLARE
  submission_data jsonb;
  function_url text;
BEGIN
  -- Build the submission data
  submission_data := jsonb_build_object(
    'name', NEW.name,
    'email', NEW.email,
    'phone', NEW.phone,
    'company', NEW.company,
    'subject', NEW.subject,
    'message', NEW.message,
    'created_at', NEW.created_at
  );

  -- Call the edge function (you'll need to replace YOUR_PROJECT_REF with your actual project reference)
  -- Format: https://YOUR_PROJECT_REF.supabase.co/functions/v1/send-contact-email
  -- Example: https://abcdefghijklmnop.supabase.co/functions/v1/send-contact-email
  
  -- For now, we'll use pg_net extension to make HTTP request
  -- You need to enable pg_net extension first: CREATE EXTENSION IF NOT EXISTS pg_net;
  
  PERFORM
    net.http_post(
      url := 'https://YOUR_PROJECT_REF.supabase.co/functions/v1/send-contact-email',
      headers := jsonb_build_object(
        'Content-Type', 'application/json',
        'Authorization', 'Bearer ' || current_setting('request.headers', true)::json->>'authorization'
      ),
      body := submission_data
    );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Create the trigger
DROP TRIGGER IF EXISTS on_contact_submission_created ON contact_submissions;

CREATE TRIGGER on_contact_submission_created
  AFTER INSERT ON contact_submissions
  FOR EACH ROW
  EXECUTE FUNCTION notify_new_contact_submission();

-- Note: You'll need to:
-- 1. Enable pg_net extension: CREATE EXTENSION IF NOT EXISTS pg_net;
-- 2. Replace YOUR_PROJECT_REF with your actual Supabase project reference
-- 3. Deploy the edge function first before enabling this trigger
