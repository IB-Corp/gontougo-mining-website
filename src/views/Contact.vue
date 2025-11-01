<template>
  <div class="contact-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gms-blue to-blue-700 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
          Contactez-Nous
        </h1>
        <p class="text-xl text-center text-blue-100 max-w-2xl mx-auto">
          Notre équipe est à votre disposition pour répondre à toutes vos questions
        </p>
      </div>
    </section>

    <!-- Contact Content Section -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="grid lg:grid-cols-2 gap-12 max-w-6xl mx-auto">
          
          <!-- Contact Form -->
          <div class="contact-form-wrapper">
            <h2 class="form-section-title">Envoyez-nous un Message</h2>
            <p class="form-section-description">
              Remplissez le formulaire ci-dessous et nous vous répondrons dans les plus brefs délais.
            </p>
            
            <form class="contact-form" @submit.prevent="handleSubmit">
              
              <!-- Success Message -->
              <div v-if="submitSuccess" class="alert alert-success">
                <svg class="alert-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
                <div>
                  <strong>Message envoyé avec succès!</strong>
                  <p>Nous vous répondrons dans les plus brefs délais.</p>
                </div>
              </div>

              <!-- Error Message -->
              <div v-if="submitError" class="alert alert-error">
                <svg class="alert-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4m0 4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
                <div>
                  <strong>Erreur</strong>
                  <p>{{ submitError }}</p>
                </div>
              </div>

              <div class="form-group">
                <label for="name" class="form-label">Nom Complet *</label>
                <input 
                  type="text" 
                  id="name" 
                  v-model="formData.name"
                  class="form-input"
                  placeholder="Votre nom complet"
                  required
                >
              </div>

              <div class="form-group">
                <label for="email" class="form-label">Email *</label>
                <input 
                  type="email" 
                  id="email" 
                  v-model="formData.email"
                  class="form-input"
                  placeholder="votre@email.com"
                  required
                >
              </div>

              <div class="form-group">
                <label for="phone" class="form-label">Téléphone *</label>
                <input 
                  type="tel" 
                  id="phone" 
                  v-model="formData.phone"
                  class="form-input"
                  placeholder="+225 XX XX XX XX XX"
                  required
                >
              </div>

              <div class="form-group">
                <label for="company" class="form-label">Entreprise</label>
                <input 
                  type="text" 
                  id="company" 
                  v-model="formData.company"
                  class="form-input"
                  placeholder="Nom de votre entreprise"
                >
              </div>

              <div class="form-group">
                <label for="subject" class="form-label">Sujet *</label>
                <select 
                  id="subject" 
                  v-model="formData.subject"
                  class="form-input"
                  required
                >
                  <option value="">Sélectionnez un sujet</option>
                  <option value="location-engins">Location d'Engins</option>
                  <option value="location-vehicules">Location de Véhicules</option>
                  <option value="plomberie">Plomberie & Polyfusion</option>
                  <option value="charpente">Charpente Métallique</option>
                  <option value="commerce">Commerce & Fournitures</option>
                  <option value="personnel">Placement de Personnel</option>
                  <option value="devis">Demande de Devis</option>
                  <option value="autre">Autre</option>
                </select>
              </div>

              <div class="form-group">
                <label for="message" class="form-label">Message *</label>
                <textarea 
                  id="message" 
                  v-model="formData.message"
                  class="form-textarea"
                  rows="6"
                  placeholder="Décrivez votre projet ou votre demande..."
                  required
                ></textarea>
              </div>

              <button type="submit" class="submit-btn" :disabled="isSubmitting">
                <svg v-if="!isSubmitting" class="btn-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
                <svg v-else class="btn-icon animate-spin" fill="none" viewBox="0 0 24 24">
                  <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                  <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                </svg>
                {{ isSubmitting ? 'Envoi en cours...' : 'Envoyer le Message' }}
              </button>
            </form>
          </div>

          <!-- Contact Information -->
          <div class="contact-info-wrapper">
            <h2 class="form-section-title">Nos Coordonnées</h2>
            <p class="form-section-description">
              Retrouvez toutes nos informations de contact ci-dessous
            </p>

            <!-- Contact Cards -->
            <div class="contact-cards">
              
              <!-- Address Card -->
              <div class="info-card">
                <div class="info-icon-wrapper bg-blue-100">
                  <svg class="info-icon text-gms-blue" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
                  </svg>
                </div>
                <div class="info-content">
                  <h3 class="info-title">Adresse</h3>
                  <p class="info-text">
                    Tanda, Quartier Résidentiel<br>
                    En face du Lycée Moderne<br>
                    Côte d'Ivoire
                  </p>
                </div>
              </div>

              <!-- Phone Card -->
              <div class="info-card">
                <div class="info-icon-wrapper bg-green-100">
                  <svg class="info-icon text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
                  </svg>
                </div>
                <div class="info-content">
                  <h3 class="info-title">Téléphone</h3>
                  <p class="info-text">
                    <a href="tel:+2250788884940" class="info-link">
                      (+225) 07 88 88 49 40
                    </a>
                  </p>
                  <p class="info-text">
                    <a href="tel:+2252731967622 " class="info-link">
                      (+225) 27 31 96 76 22 
                    </a>
                  </p>
                </div>
              </div>

              <!-- Email Card -->
              <div class="info-card">
                <div class="info-icon-wrapper bg-red-100">
                  <svg class="info-icon text-gms-red" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                  </svg>
                </div>
                <div class="info-content">
                  <h3 class="info-title">Email</h3>
                  <p class="info-text">
                    <a href="mailto:contact@gontougominingservice.com" class="info-link">
                       contact@gontougominingservice.com
                    </a>
                  </p>
                </div>
              </div>

              <!-- Hours Card -->
              <div class="info-card">
                <div class="info-icon-wrapper bg-yellow-100">
                  <svg class="info-icon text-yellow-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                </div>
                <div class="info-content">
                  <h3 class="info-title">Horaires</h3>
                  <p class="info-text">
                    Lun - Ven: 8h00 - 17h30<br>
                    Sam: 8h00 - 12h00<br>
                    Dim: Fermé
                  </p>
                </div>
              </div>

            </div>

            <!-- Company Legal Info -->
            <div class="legal-info-card">
              <h3 class="legal-title">Informations Légales</h3>
              <div class="legal-grid">
                <div class="legal-item">
                  <span class="legal-label">RCCM:</span>
                  <span class="legal-value">CI-ABG2023M0103</span>
                </div>
                <div class="legal-item">
                  <span class="legal-label">CODE CDI:</span>
                  <span class="legal-value">911</span>
                </div>
                <div class="legal-item">
                  <span class="legal-label">Régime Juridique:</span>
                  <span class="legal-value">SARL</span>
                </div>
              </div>
            </div>

            <!-- Map Placeholder -->
            <div class="map-placeholder">
              <div class="map-content">
                <svg class="map-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 20l-5.447-2.724A1 1 0 013 16.382V5.618a1 1 0 011.447-.894L9 7m0 13l6-3m-6 3V7m6 10l4.553 2.276A1 1 0 0021 18.382V7.618a1 1 0 00-.553-.894L15 4m0 13V4m0 0L9 7" />
                </svg>
                <p class="map-text">Carte interactive</p>
                <p class="map-subtext">Tanda, Côte d'Ivoire</p>
              </div>
            </div>

          </div>

        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="cta-banner">
          <div class="cta-content">
            <h2 class="cta-title">Besoin d'une Intervention Urgente?</h2>
            <p class="cta-description">
              Notre équipe est disponible pour répondre à vos urgences
            </p>
          </div>
          <div class="cta-actions">
            <a href="tel:+2250788884940" class="cta-btn primary">
              <svg class="cta-btn-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
              </svg>
              Appeler Maintenant
            </a>
            <a href="mailto:contact@gontougominingservice.com" class="cta-btn secondary">
              <svg class="cta-btn-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
              Envoyer un Email
            </a>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { reactive, ref } from 'vue'
import { supabase } from '../lib/supabase'
import emailjs from '@emailjs/browser'

// EmailJS Configuration
const EMAILJS_SERVICE_ID = 'service_mtvkgje'  // Your Service ID
const EMAILJS_TEMPLATE_ID = 'template_87ziwpj'  // Your Template ID
const EMAILJS_PUBLIC_KEY = 'jmAw-6pRo_3DHcMlv'  // Your Public Key

const formData = reactive({
  name: '',
  email: '',
  phone: '',
  company: '',
  subject: '',
  message: ''
})

const isSubmitting = ref(false)
const submitSuccess = ref(false)
const submitError = ref('')

const handleSubmit = async () => {
  // Reset messages
  submitSuccess.value = false
  submitError.value = ''
  isSubmitting.value = true
  
  try {
    // 1. Insert into Supabase
    const { data, error } = await supabase
      .from('contact_submissions')
      .insert([
        {
          name: formData.name,
          email: formData.email,
          phone: formData.phone,
          company: formData.company || null,
          subject: formData.subject,
          message: formData.message
        }
      ])
      .select()
    
    if (error) {
      throw error
    }
    
    console.log('Form submitted to database successfully:', data)
    
    // 2. Send email notification to admin
    // Only send email if EmailJS is configured (not using placeholder values)
    if (EMAILJS_SERVICE_ID !== 'YOUR_SERVICE_ID') {
      try {
        await emailjs.send(
          EMAILJS_SERVICE_ID,
          EMAILJS_TEMPLATE_ID,
          {
            // email: ADMIN_EMAIL,
            name: formData.name,
            email: formData.email,
            phone: formData.phone,
            company: formData.company || 'Non spécifié',
            subject: formData.subject,
            message: formData.message,
            submission_date: new Date().toLocaleString('fr-FR')
          },
          EMAILJS_PUBLIC_KEY
        )
        console.log('Email notification sent successfully')
      } catch (emailError) {
        console.error('Failed to send email notification:', emailError)
        // Don't fail the whole submission if email fails
      }
    } else {
      console.warn('EmailJS not configured. Skipping email notification.')
      console.log('To enable email notifications, update the EmailJS credentials in Contact.vue')
    }
    
    // Success!
    submitSuccess.value = true
    
    // Reset form after 3 seconds
    setTimeout(() => {
      Object.keys(formData).forEach(key => {
        formData[key] = ''
      })
      submitSuccess.value = false
    }, 3000)
    
  } catch (error) {
    console.error('Error submitting form:', error)
    submitError.value = 'Une erreur est survenue. Veuillez réessayer ou nous contacter directement.'
  } finally {
    isSubmitting.value = false
  }
}
</script>

<style scoped>
.contact-form-wrapper,
.contact-info-wrapper {
  background-color: white;
  padding: 2.5rem;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
}

.form-section-title {
  font-size: 1.875rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 1rem;
}

.form-section-description {
  color: #6b7280;
  margin-bottom: 2rem;
  line-height: 1.6;
}

.contact-form {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
}

.form-group {
  display: flex;
  flex-direction: column;
}

.form-label {
  font-weight: 600;
  color: #374151;
  margin-bottom: 0.5rem;
  font-size: 0.875rem;
}

.form-input,
.form-textarea {
  padding: 0.75rem 1rem;
  border: 2px solid #e5e7eb;
  border-radius: 0.5rem;
  font-size: 1rem;
  transition: all 0.3s ease-in-out;
  color: #111827;
  background-color: white;
}

.form-input:focus,
.form-textarea:focus {
  outline: none;
  border-color: #1e5ba8;
  box-shadow: 0 0 0 3px rgba(30, 91, 168, 0.1);
}

.form-textarea {
  resize: vertical;
  font-family: inherit;
}

.submit-btn {
  background-color: #1e5ba8;
  color: white;
  padding: 1rem 2rem;
  border-radius: 0.5rem;
  font-weight: 600;
  border: none;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.5rem;
  font-size: 1rem;
}

.submit-btn:hover {
  background-color: #1a4d8f;
  transform: translateY(-2px);
  box-shadow: 0 10px 20px rgba(30, 91, 168, 0.3);
}

.submit-btn:disabled {
  opacity: 0.6;
  cursor: not-allowed;
  transform: none;
  background-color: #6b7280;
}

.submit-btn:disabled:hover {
  transform: none;
  box-shadow: none;
  background-color: #6b7280;
}

.btn-icon {
  width: 1.25rem;
  height: 1.25rem;
}

/* Alert Styles */
.alert {
  display: flex;
  align-items: flex-start;
  gap: 0.75rem;
  padding: 1rem;
  border-radius: 0.5rem;
  margin-bottom: 1.5rem;
}

.alert-success {
  background-color: #d1fae5;
  border: 1px solid #6ee7b7;
  color: #065f46;
}

.alert-error {
  background-color: #fee2e2;
  border: 1px solid #fca5a5;
  color: #991b1b;
}

.alert-icon {
  width: 1.5rem;
  height: 1.5rem;
  flex-shrink: 0;
  margin-top: 0.125rem;
}

.alert strong {
  display: block;
  font-weight: 600;
  margin-bottom: 0.25rem;
}

.alert p {
  font-size: 0.875rem;
  margin: 0;
}

/* Loading Animation */
@keyframes spin {
  to {
    transform: rotate(360deg);
  }
}

.animate-spin {
  animation: spin 1s linear infinite;
}

.contact-cards {
  display: flex;
  flex-direction: column;
  gap: 1.5rem;
  margin-bottom: 2rem;
}

.info-card {
  display: flex;
  gap: 1rem;
  padding: 1.5rem;
  background-color: #f9fafb;
  border-radius: 0.75rem;
  border: 1px solid #e5e7eb;
  transition: all 0.3s ease-in-out;
}

.info-card:hover {
  background-color: white;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transform: translateX(4px);
}

.info-icon-wrapper {
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-shrink: 0;
}

.info-icon {
  width: 1.5rem;
  height: 1.5rem;
}

.info-content {
  flex: 1;
}

.info-title {
  font-size: 1.125rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 0.5rem;
}

.info-text {
  color: #6b7280;
  line-height: 1.6;
  font-size: 0.875rem;
}

.info-link {
  color: #1e5ba8;
  text-decoration: none;
  font-weight: 600;
  transition: color 0.3s ease-in-out;
}

.info-link:hover {
  color: #1a4d8f;
  text-decoration: underline;
}

.legal-info-card {
  background: linear-gradient(135deg, #1e5ba8 0%, #3b82f6 100%);
  padding: 2rem;
  border-radius: 0.75rem;
  color: white;
  margin-bottom: 2rem;
}

.legal-title {
  font-size: 1.25rem;
  font-weight: 700;
  margin-bottom: 1.5rem;
  text-align: center;
}

.legal-grid {
  display: grid;
  gap: 1rem;
}

.legal-item {
  display: flex;
  justify-content: space-between;
  padding: 0.75rem 0;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}

.legal-item:last-child {
  border-bottom: none;
}

.legal-label {
  font-weight: 600;
  opacity: 0.9;
}

.legal-value {
  font-weight: 700;
}

.map-placeholder {
  width: 100%;
  height: 300px;
  background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%);
  border-radius: 0.75rem;
  display: flex;
  align-items: center;
  justify-content: center;
  border: 2px dashed #d1d5db;
}

.map-content {
  text-align: center;
}

.map-icon {
  width: 4rem;
  height: 4rem;
  color: #9ca3af;
  margin: 0 auto 1rem;
}

.map-text {
  font-size: 1.125rem;
  font-weight: 600;
  color: #6b7280;
  margin-bottom: 0.25rem;
}

.map-subtext {
  font-size: 0.875rem;
  color: #9ca3af;
}

.cta-banner {
  background: linear-gradient(135deg, #1e5ba8 0%, #3b82f6 100%);
  border-radius: 1rem;
  padding: 3rem 2rem;
  display: flex;
  flex-direction: column;
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
  gap: 2rem;
  box-shadow: 0 20px 40px rgba(30, 91, 168, 0.3);
}

@media (min-width: 768px) {
  .cta-banner {
    flex-direction: row;
  }
}

.cta-content {
  color: white;
  flex: 1;
}

.cta-title {
  font-size: 2rem;
  font-weight: 700;
  margin-bottom: 0.5rem;
}

.cta-description {
  font-size: 1.125rem;
  opacity: 0.95;
}

.cta-actions {
  display: flex;
  flex-direction: column;
  gap: 1rem;
}

@media (min-width: 640px) {
  .cta-actions {
    flex-direction: row;
  }
}

.cta-btn {
  padding: 1rem 2rem;
  border-radius: 0.5rem;
  font-weight: 600;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  justify-content: center;
  text-decoration: none;
  transition: all 0.3s ease-in-out;
  white-space: nowrap;
}

.cta-btn.primary {
  background-color: white;
  color: #1e5ba8;
}

.cta-btn.primary:hover {
  background-color: #f3f4f6;
  transform: translateY(-2px);
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.cta-btn.secondary {
  background-color: transparent;
  color: white;
  border: 2px solid white;
}

.cta-btn.secondary:hover {
  background-color: rgba(255, 255, 255, 0.1);
  transform: translateY(-2px);
}

.cta-btn-icon {
  width: 1.25rem;
  height: 1.25rem;
}
</style>