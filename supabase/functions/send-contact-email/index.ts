// Supabase Edge Function to send email notifications for contact form submissions
// This function is triggered when a new row is inserted into contact_submissions table

import { serve } from "https://deno.land/std@0.168.0/http/server.ts"

const RESEND_API_KEY = Deno.env.get('RESEND_API_KEY')
const ADMIN_EMAIL = Deno.env.get('ADMIN_EMAIL') || 'contact@gontougominingservice.com'

interface ContactSubmission {
  name: string
  email: string
  phone: string
  company?: string
  subject: string
  message: string
  created_at: string
}

serve(async (req) => {
  try {
    const submission: ContactSubmission = await req.json()

    // Format the email HTML
    const emailHtml = `
      <!DOCTYPE html>
      <html>
        <head>
          <style>
            body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
            .container { max-width: 600px; margin: 0 auto; padding: 20px; }
            .header { background: linear-gradient(135deg, #1e5ba8 0%, #3b82f6 100%); color: white; padding: 20px; text-align: center; border-radius: 8px 8px 0 0; }
            .content { background: #f9fafb; padding: 30px; border: 1px solid #e5e7eb; }
            .field { margin-bottom: 20px; }
            .label { font-weight: bold; color: #1e5ba8; display: block; margin-bottom: 5px; }
            .value { background: white; padding: 10px; border-radius: 4px; border: 1px solid #e5e7eb; }
            .footer { background: #374151; color: white; padding: 15px; text-align: center; border-radius: 0 0 8px 8px; font-size: 12px; }
            .message-box { background: white; padding: 15px; border-left: 4px solid #1e5ba8; margin-top: 10px; }
          </style>
        </head>
        <body>
          <div class="container">
            <div class="header">
              <h1>📧 Nouveau Message de Contact</h1>
              <p>Gontougo Mining Service</p>
            </div>
            
            <div class="content">
              <div class="field">
                <span class="label">👤 Nom Complet:</span>
                <div class="value">${submission.name}</div>
              </div>
              
              <div class="field">
                <span class="label">📧 Email:</span>
                <div class="value"><a href="mailto:${submission.email}">${submission.email}</a></div>
              </div>
              
              <div class="field">
                <span class="label">📱 Téléphone:</span>
                <div class="value"><a href="tel:${submission.phone}">${submission.phone}</a></div>
              </div>
              
              ${submission.company ? `
              <div class="field">
                <span class="label">🏢 Entreprise:</span>
                <div class="value">${submission.company}</div>
              </div>
              ` : ''}
              
              <div class="field">
                <span class="label">📋 Sujet:</span>
                <div class="value">${submission.subject}</div>
              </div>
              
              <div class="field">
                <span class="label">💬 Message:</span>
                <div class="message-box">${submission.message.replace(/\n/g, '<br>')}</div>
              </div>
              
              <div class="field">
                <span class="label">🕐 Date de soumission:</span>
                <div class="value">${new Date(submission.created_at).toLocaleString('fr-FR')}</div>
              </div>
            </div>
            
            <div class="footer">
              <p>Ce message a été envoyé depuis le formulaire de contact de votre site web.</p>
              <p>Pour répondre, contactez directement: ${submission.email}</p>
            </div>
          </div>
        </body>
      </html>
    `

    // Send email using Resend
    const res = await fetch('https://api.resend.com/emails', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${RESEND_API_KEY}`
      },
      body: JSON.stringify({
        from: 'Gontougo Mining Service <notifications@gontougo.com>',
        to: [ADMIN_EMAIL],
        reply_to: submission.email,
        subject: `Nouveau message: ${submission.subject} - ${submission.name}`,
        html: emailHtml,
      })
    })

    const data = await res.json()

    if (res.ok) {
      return new Response(
        JSON.stringify({ success: true, message: 'Email sent successfully', data }),
        { headers: { 'Content-Type': 'application/json' }, status: 200 }
      )
    } else {
      throw new Error(data.message || 'Failed to send email')
    }

  } catch (error) {
    console.error('Error:', error)
    return new Response(
      JSON.stringify({ success: false, error: error.message }),
      { headers: { 'Content-Type': 'application/json' }, status: 500 }
    )
  }
})
