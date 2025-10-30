# Email Notification Setup Guide

## 🎯 Goal
Send an email to admin whenever someone submits the contact form, with all submission details.

---

## 📧 Option 1: Supabase Edge Function + Resend (Recommended)

### Features:
- ✅ Server-side (secure)
- ✅ Automatic trigger on new submission
- ✅ Professional email delivery
- ✅ Free tier: 100 emails/day (Resend)
- ✅ Scalable

### Setup Steps:

#### 1. Create Resend Account
1. Go to: https://resend.com/signup
2. Create free account
3. Get your API key from: https://resend.com/api-keys
4. Verify your domain OR use their test domain

#### 2. Deploy Edge Function
```bash
# Install Supabase CLI (if not installed)
npm install -g supabase

# Login to Supabase
supabase login

# Link your project
supabase link --project-ref YOUR_PROJECT_REF

# Set environment variables
supabase secrets set RESEND_API_KEY=your_resend_api_key_here
supabase secrets set ADMIN_EMAIL=your-email@example.com

# Deploy the function
supabase functions deploy send-contact-email
```

#### 3. Enable Database Trigger
1. Enable pg_net extension:
   ```sql
   CREATE EXTENSION IF NOT EXISTS pg_net;
   ```

2. Update the trigger URL in `database/add_email_notification_trigger.sql`:
   - Replace `YOUR_PROJECT_REF` with your Supabase project reference
   - Run the SQL in Supabase SQL Editor

#### 4. Test
Submit a form and check your email!

---

## 📧 Option 2: EmailJS (Simpler - 5 minutes)

### Features:
- ✅ Super easy setup
- ✅ No backend needed
- ✅ 200 emails/month free
- ⚠️ Client-side (API key visible)
- ⚠️ Less secure for production

### Setup Steps:

#### 1. Create EmailJS Account
1. Go to: https://www.emailjs.com/
2. Sign up (free)
3. Add an email service (Gmail, Outlook, etc.)
4. Create an email template

#### 2. Get Your Credentials
- **Service ID**: From your email service
- **Template ID**: From your template
- **Public Key**: From Account → API Keys

#### 3. Install EmailJS
```bash
pnpm add @emailjs/browser
```

#### 4. Update Contact.vue
See the example code below in "EmailJS Implementation"

---

## 📧 Option 3: Simple HTTP POST to Your Backend

If you have your own backend, you can add an API endpoint that sends emails and call it from the Contact.vue component.

---

## 💡 Recommendation

For **production**: Use **Option 1** (Supabase Edge Functions + Resend)
For **quick testing**: Use **Option 2** (EmailJS)

---

## 📝 EmailJS Implementation (Option 2)

If you choose EmailJS, I'll update your Contact.vue to include:

```javascript
import emailjs from '@emailjs/browser'

const handleSubmit = async () => {
  // ... save to Supabase ...
  
  // Send email notification
  try {
    await emailjs.send(
      'YOUR_SERVICE_ID',
      'YOUR_TEMPLATE_ID',
      {
        from_name: formData.name,
        from_email: formData.email,
        phone: formData.phone,
        company: formData.company,
        subject: formData.subject,
        message: formData.message,
        to_email: 'your-admin-email@example.com'
      },
      'YOUR_PUBLIC_KEY'
    )
  } catch (error) {
    console.error('Failed to send email:', error)
  }
}
```

---

## 🎨 Email Template Variables

When you create your email template (EmailJS or Resend), include these variables:

- `{{from_name}}` - Sender's name
- `{{from_email}}` - Sender's email
- `{{phone}}` - Phone number
- `{{company}}` - Company name
- `{{subject}}` - Subject/topic
- `{{message}}` - Message content

---

## 🚀 Next Steps

**Which option do you prefer?**

1. **Option 1** (Supabase + Resend) - I'll help you deploy it
2. **Option 2** (EmailJS) - I'll update Contact.vue right now
3. **Option 3** (Custom backend) - I'll create the API structure

Let me know and I'll implement it! 🎉
