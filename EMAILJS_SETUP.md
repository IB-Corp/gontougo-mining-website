# EmailJS Quick Setup Guide

## ✅ What's Installed
- `@emailjs/browser` package installed
- Contact.vue updated with email notification code
- Falls back gracefully if EmailJS is not configured

---

## 🚀 Setup Steps (5 minutes)

### 1. Create EmailJS Account
1. Go to: **https://www.emailjs.com/**
2. Click **"Sign Up"** (it's FREE - 200 emails/month)
3. Verify your email

### 2. Add Email Service
1. Go to: **Email Services** tab
2. Click **"Add New Service"**
3. Choose your email provider:
   - **Gmail** (easiest)
   - Outlook
   - Yahoo
   - Custom SMTP
4. Follow the connection steps
5. **Copy the Service ID** (looks like: `service_abc123`)

### 3. Create Email Template
1. Go to: **Email Templates** tab
2. Click **"Create New Template"**
3. Use this template content:

#### Subject:
```
Nouveau message: {{subject}} - {{from_name}}
```

#### Content (Body):
```html
<h2>Nouveau message de contact</h2>

<p><strong>Nom:</strong> {{from_name}}</p>
<p><strong>Email:</strong> {{from_email}}</p>
<p><strong>Téléphone:</strong> {{phone}}</p>
<p><strong>Entreprise:</strong> {{company}}</p>
<p><strong>Sujet:</strong> {{subject}}</p>

<h3>Message:</h3>
<p>{{message}}</p>

<hr>
<p><small>Date: {{submission_date}}</small></p>
<p><small>Répondre à: {{from_email}}</small></p>
```

4. In **Settings** section:
   - **To Email**: Use `{{to_email}}` (dynamic) or hardcode your admin email
   - **From Name**: Gontougo Mining Service
   - **Reply To**: `{{from_email}}` (so you can reply directly)

5. Click **"Save"**
6. **Copy the Template ID** (looks like: `template_xyz789`)

### 4. Get Your Public Key
1. Go to: **Account** → **API Keys**
2. Copy your **Public Key** (looks like: `AbCdEfGh123456789`)

### 5. Update Contact.vue
1. Open: `src/views/Contact.vue`
2. Find lines 6-8 (at the top of the script)
3. Replace the placeholder values:

```javascript
const EMAILJS_SERVICE_ID = 'service_abc123'  // Your Service ID
const EMAILJS_TEMPLATE_ID = 'template_xyz789'  // Your Template ID
const EMAILJS_PUBLIC_KEY = 'AbCdEfGh123456789'  // Your Public Key
const ADMIN_EMAIL = 'your-email@example.com'  // Your email address
```

4. Save the file

---

## 🧪 Test It!

1. Go to your contact form: http://localhost:5174/contact
2. Fill out and submit the form
3. Check your email inbox!
4. You should receive an email with all the submission details

---

## 📧 Email Template Variables Available

When creating your EmailJS template, you can use these variables:

| Variable | Description |
|----------|-------------|
| `{{to_email}}` | Admin email address |
| `{{from_name}}` | Sender's full name |
| `{{from_email}}` | Sender's email address |
| `{{phone}}` | Sender's phone number |
| `{{company}}` | Company name (or "Non spécifié") |
| `{{subject}}` | Selected subject/topic |
| `{{message}}` | The message content |
| `{{submission_date}}` | Date and time of submission |

---

## ✨ How It Works

1. User submits the contact form
2. **First**: Data is saved to Supabase database ✅
3. **Then**: Email notification is sent to admin via EmailJS ✅
4. **If email fails**: Form submission still succeeds (graceful fallback)

---

## 🔒 Security Notes

- EmailJS Public Key is safe to expose in frontend code
- It can only send emails (cannot read or delete)
- Rate limited to prevent abuse
- Use environment variables for production (optional)

---

## 🎯 Production Tips

For production, you can move credentials to environment variables:

### .env file:
```
VITE_EMAILJS_SERVICE_ID=service_abc123
VITE_EMAILJS_TEMPLATE_ID=template_xyz789
VITE_EMAILJS_PUBLIC_KEY=AbCdEfGh123456789
VITE_ADMIN_EMAIL=admin@gontougominingservice.com
```

### Contact.vue:
```javascript
const EMAILJS_SERVICE_ID = import.meta.env.VITE_EMAILJS_SERVICE_ID
const EMAILJS_TEMPLATE_ID = import.meta.env.VITE_EMAILJS_TEMPLATE_ID
const EMAILJS_PUBLIC_KEY = import.meta.env.VITE_EMAILJS_PUBLIC_KEY
const ADMIN_EMAIL = import.meta.env.VITE_ADMIN_EMAIL
```

---

## 📊 Free Tier Limits

EmailJS Free Plan includes:
- ✅ 200 emails per month
- ✅ 2 email services
- ✅ 2 email templates
- ✅ Email history (30 days)

For most contact forms, this is more than enough!

---

## 🐛 Troubleshooting

### Email not received?
1. Check spam/junk folder
2. Verify Service ID, Template ID, and Public Key are correct
3. Check browser console for errors
4. Verify email service is connected in EmailJS dashboard

### "User ID not found" error?
- Make sure you're using the **Public Key**, not the Private Key
- The Public Key is found in Account → API Keys

### Form submits but no email?
- Check if `EMAILJS_SERVICE_ID !== 'YOUR_SERVICE_ID'` (credentials updated)
- Look for console warnings about EmailJS not being configured
- Check EmailJS dashboard → Email History for failed sends

---

## 🎉 You're Done!

Your contact form now:
1. ✅ Saves submissions to Supabase
2. ✅ Sends email notifications to admin
3. ✅ Shows success/error messages
4. ✅ Has beautiful loading states

Test it out and enjoy! 🚀
