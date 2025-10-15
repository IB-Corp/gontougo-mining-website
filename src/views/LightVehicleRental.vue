<template>
  <div class="vehicle-rental-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gms-blue to-blue-700 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
          Location de Véhicule Léger & Auxiliaire
        </h1>
        <p class="text-xl text-center text-blue-100 max-w-2xl mx-auto">
          Une flotte diversifiée pour répondre à tous vos besoins de transport et de logistique
        </p>
      </div>
    </section>

    <!-- Vehicles Grid -->
    <section class="py-16 md:py-24 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="grid md:grid-cols-2 gap-8 max-w-6xl mx-auto">
          
          <!-- Vehicle 1: Toyota Coaster -->
          <div class="vehicle-card">
            <div class="vehicle-image-wrapper">
              <img src="../assets/images/vehicles/toyata coaster.webp" />
            </div>
            
            <div class="vehicle-content">
              <h3 class="vehicle-title">TOYOTA COASTER</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">TYPE:</span>
                  <span class="spec-value">2x4</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CAPACITÉ:</span>
                  <span class="spec-value">20 places</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CABINE:</span>
                  <span class="spec-value">Climatisée</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">ETAT:</span>
                  <span class="spec-value">Neuf / occasion</span>
                </div>
              </div>

              <button class="contact-btn">
                Demander un Devis
              </button>
            </div>
          </div>

          <!-- Vehicle 2: Genie S60 -->
          <div class="vehicle-card">
            <div class="vehicle-image-wrapper">
              <img src="../assets/images/vehicles/GENIE S60.webp" />
            </div>
            
            <div class="vehicle-content">
              <h3 class="vehicle-title">GENIE S60</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">HAUTEUR DE TRAVAIL:</span>
                  <span class="spec-value">20.30m</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">ROTATION DE LA MACHINE:</span>
                  <span class="spec-value">360°</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CAPACITÉ DE LEVAGE:</span>
                  <span class="spec-value">227kg</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">ROTATION DE LA PLATEFORME:</span>
                  <span class="spec-value">160°</span>
                </div>
              </div>

              <button class="contact-btn">
                Demander un Devis
              </button>
            </div>
          </div>

          <!-- Vehicle 3: Toyota Land Cruiser -->
          <div class="vehicle-card">
            <div class="vehicle-image-wrapper">
              <img src="../assets/images/vehicles/TOYOTA LAND CRUISER.jpg" />
            </div>
            
            <div class="vehicle-content">
              <h3 class="vehicle-title">TOYOTA LAND CRUISER</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">TYPE:</span>
                  <span class="spec-value">4x4</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CABINE:</span>
                  <span class="spec-value">Climatisée</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CAPACITÉ:</span>
                  <span class="spec-value">5 places</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">ETAT:</span>
                  <span class="spec-value">Neuf / occasion</span>
                </div>
              </div>

              <button class="contact-btn">
                Demander un Devis
              </button>
            </div>
          </div>

          <!-- Vehicle 4: Sinotruck Howo -->
          <div class="vehicle-card">
            <div class="vehicle-image-wrapper">
               <img src="../assets/images/vehicles/SINOTRUCK HOWO1.1.jpg" style="height: auto; width: auto;" />
            </div>
            
            <div class="vehicle-content">
              <h3 class="vehicle-title">SINOTRUCK HOWO</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">TYPE:</span>
                  <span class="spec-value">6x4</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CABINE:</span>
                  <span class="spec-value">Climatisée</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">CAPACITÉ:</span>
                  <span class="spec-value">20 mètre cube</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">ETAT:</span>
                  <span class="spec-value">Neuf / occasion</span>
                </div>
              </div>

              <button class="contact-btn">
                Demander un Devis
              </button>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Avantages de Notre Service de Location
        </h2>
        
        <div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
          <div class="feature-card">
            <div class="feature-icon bg-gms-blue">
              <svg class="icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
            <h3 class="feature-title">Véhicules Entretenus</h3>
            <p class="feature-description">
              Tous nos véhicules sont régulièrement entretenus et contrôlés pour garantir votre sécurité.
            </p>
          </div>

          <div class="feature-card">
            <div class="feature-icon bg-gms-red">
              <svg class="icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
            <h3 class="feature-title">Disponibilité 24/7</h3>
            <p class="feature-description">
              Service client disponible à tout moment pour répondre à vos besoins urgents.
            </p>
          </div>

          <div class="feature-card">
            <div class="feature-icon bg-gms-blue">
              <svg class="icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
            <h3 class="feature-title">Tarifs Flexibles</h3>
            <p class="feature-description">
              Options de location courte et longue durée avec des tarifs compétitifs adaptés à votre budget.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-gradient-to-r from-gms-blue to-blue-700 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          Besoin d'un Véhicule pour Votre Projet?
        </h2>
        <p class="text-xl mb-8 text-blue-100 max-w-2xl mx-auto">
          Contactez-nous dès maintenant pour vérifier la disponibilité et obtenir un devis personnalisé.
        </p>
        <router-link 
          to="/contact" 
          class="inline-block bg-white text-gms-blue px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition shadow-lg"
        >
          Contactez-nous Maintenant
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
// No script needed for now
</script>

<style scoped>
.vehicle-card {
  background-color: white;
  border-radius: 1rem;
  overflow: hidden;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
  border: 2px solid #e5e7eb;
}

.vehicle-card:hover {
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
  transform: translateY(-4px);
  border-color: #1e5ba8;
}

.vehicle-image-wrapper {
  width: 100%;
  height: 250px;
  background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  border-bottom: 3px solid #1e5ba8;
}

.vehicle-image-placeholder {
  text-align: center;
}

.placeholder-icon {
  width: 80px;
  height: 80px;
  color: #9ca3af;
  margin: 0 auto;
}

.vehicle-content {
  padding: 2rem;
}

.vehicle-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #1e5ba8;
  margin-bottom: 1.5rem;
  text-align: center;
  padding-bottom: 1rem;
  border-bottom: 2px solid #e5e7eb;
}

.specs-grid {
  display: grid;
  gap: 1rem;
  margin-bottom: 1.5rem;
}

.spec-item {
  background-color: #f9fafb;
  padding: 0.75rem 1rem;
  border-radius: 0.5rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-left: 3px solid #1e5ba8;
}

.spec-label {
  font-weight: 600;
  color: #374151;
  font-size: 0.875rem;
}

.spec-value {
  font-weight: 700;
  color: #1e5ba8;
  font-size: 0.875rem;
}

.contact-btn {
  width: 100%;
  background-color: #dc2626;
  color: white;
  padding: 0.875rem 1.5rem;
  border-radius: 0.5rem;
  font-weight: 600;
  border: none;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  font-size: 1rem;
}

.contact-btn:hover {
  background-color: #b91c1c;
  transform: translateY(-2px);
  box-shadow: 0 4px 6px -1px rgba(220, 38, 38, 0.3);
}

.feature-card {
  text-align: center;
  padding: 2rem;
}

.feature-icon {
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1.5rem;
}

.icon-svg {
  width: 2rem;
  height: 2rem;
  color: white;
}

.feature-title {
  font-size: 1.25rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 0.75rem;
}

.feature-description {
  color: #6b7280;
  line-height: 1.6;
}
</style>