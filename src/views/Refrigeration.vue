<template>
  <div class="froid-climatisation-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gray-800 to-gray-600 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
          Froid et Climatisation
        </h1>
        <p class="text-xl text-center text-gray-300 max-w-2xl mx-auto">
          Installation, maintenance et dépannage de systèmes de climatisation et de réfrigération
        </p>
      </div>
    </section>

    <!-- Introduction Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto text-center">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
            Experts en Climatisation et Réfrigération
          </h2>
          <p class="text-lg text-gray-700 leading-relaxed">
            GMS SARL propose des services complets en froid et climatisation pour les secteurs 
            résidentiel, commercial et industriel. Notre équipe de techniciens qualifiés assure 
            l'installation, la maintenance et le dépannage de tous types de systèmes de climatisation 
            et de réfrigération, garantissant votre confort et la préservation de vos produits.
          </p>
        </div>
      </div>
    </section>

    <!-- Services Section -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Nos Services Froid et Climatisation
        </h2>

        <!-- Service 1: Climatisation Résidentielle -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
              </svg>
              <p class="placeholder-text">Climatisation Résidentielle</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Climatisation Résidentielle</h3>
            <p class="service-description">
              Installation de systèmes de climatisation pour maisons et appartements. Climatiseurs 
              split, multi-split, et systèmes centralisés adaptés à vos besoins. Conseils personnalisés 
              pour choisir l'équipement optimal selon la superficie et l'isolation de votre habitation.
            </p>
            <ul class="service-features">
              <li>Climatiseurs split et multi-split</li>
              <li>Systèmes centralisés</li>
              <li>Étude thermique et dimensionnement</li>
            </ul>
          </div>
        </div>

        <!-- Service 2: Climatisation Commerciale -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
              </svg>
              <p class="placeholder-text">Climatisation Commerciale</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Climatisation Commerciale</h3>
            <p class="service-description">
              Solutions de climatisation pour bureaux, commerces, restaurants et hôtels. Systèmes VRV/VRF, 
              cassettes encastrables, unités au plafond, et climatisation de précision pour salles serveurs. 
              Installations discrètes et performantes adaptées aux espaces professionnels.
            </p>
            <ul class="service-features">
              <li>Systèmes VRV/VRF multi-zones</li>
              <li>Cassettes et unités encastrées</li>
              <li>Climatisation salles informatiques</li>
            </ul>
          </div>
        </div>

        <!-- Service 3: Climatisation Industrielle -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z" />
              </svg>
              <p class="placeholder-text">Climatisation Industrielle</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Climatisation Industrielle</h3>
            <p class="service-description">
              Systèmes de climatisation pour usines, entrepôts et installations minières. Refroidissement 
              de process industriels, ventilation forcée, et traitement d'air pour environnements 
              spécifiques. Solutions robustes pour conditions extrêmes et grandes surfaces.
            </p>
            <ul class="service-features">
              <li>Refroidissement process industriels</li>
              <li>Ventilation et extraction d'air</li>
              <li>Solutions haute capacité</li>
            </ul>
          </div>
        </div>

        <!-- Service 4: Chambres Froides -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M20 7l-8-4-8 4m16 0l-8 4m8-4v10l-8 4m0-10L4 7m8 4v10M4 7v10l8 4" />
              </svg>
              <p class="placeholder-text">Chambres Froides</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Chambres Froides et Réfrigération</h3>
            <p class="service-description">
              Conception et installation de chambres froides pour restaurants, supermarchés, hôtels et 
              industries agroalimentaires. Chambres froides positives et négatives, vitrines réfrigérées, 
              et meubles frigorifiques. Isolation thermique et systèmes de contrôle de température précis.
            </p>
            <ul class="service-features">
              <li>Chambres froides sur mesure</li>
              <li>Vitrines et meubles réfrigérés</li>
              <li>Contrôle de température précis</li>
            </ul>
          </div>
        </div>

        <!-- Service 5: Maintenance et Entretien -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
              </svg>
              <p class="placeholder-text">Maintenance</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Maintenance et Entretien</h3>
            <p class="service-description">
              Contrats de maintenance préventive pour assurer le bon fonctionnement de vos installations. 
              Nettoyage des filtres, vérification des fluides frigorigènes, contrôle des performances, 
              et détection précoce des anomalies. Interventions programmées pour éviter les pannes.
            </p>
            <ul class="service-features">
              <li>Contrats de maintenance annuels</li>
              <li>Entretien préventif régulier</li>
              <li>Optimisation des performances</li>
            </ul>
          </div>
        </div>

        <!-- Service 6: Dépannage Urgent -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
              </svg>
              <p class="placeholder-text">Dépannage</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Dépannage Urgent 24/7</h3>
            <p class="service-description">
              Service de dépannage rapide pour tous types de pannes de climatisation et réfrigération. 
              Diagnostic précis, réparation sur place, et remplacement de pièces défectueuses. 
              Intervention d'urgence 24h/24 et 7j/7 pour limiter l'impact des pannes sur votre activité.
            </p>
            <ul class="service-features">
              <li>Intervention rapide 24/7</li>
              <li>Diagnostic et réparation</li>
              <li>Stock de pièces détachées</li>
            </ul>
          </div>
        </div>

      </div>
    </section>

        <!-- GALLERY IMAGES AND VIDEOS SECTION -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-4">
          Nos Réalisations
        </h2>
        <p class="text-center text-gray-600 mb-12 max-w-2xl mx-auto">
          Découvrez quelques exemples de nos projets de froids et climatisation réalisés avec succès
        </p>

      <MediaGallery :mediaItems="galleryItems" />
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-gradient-to-r from-gray-800 to-gray-600 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          Besoin de Services de Climatisation?
        </h2>
        <p class="text-xl mb-8 text-gray-300 max-w-2xl mx-auto">
          Installation, maintenance ou dépannage : nos experts sont à votre service
        </p>
        <router-link 
          to="/contact" 
          class="inline-block bg-gms-blue text-white px-8 py-4 rounded-lg font-semibold hover:bg-blue-700 transition shadow-lg"
        >
          Demander un Devis
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue'
import MediaGallery from '../components/MediaGallery.vue';
const galleryItems = ref([
  {
    type: 'image',
    src: '/images/gallery/metal-construction/image1.jpg',
    caption: 'Toiture Industrielle'
  },
  {
    type: 'video',
    src: '/images/gallery/metal-construction/video1.mp4',
    caption: 'Hangar'
  },
  {
    type: 'image',
    src: '/images/gallery/metal-construction/image2.jpg',
    caption: 'Toiture Industrielle'
  },
])
</script>

<style scoped>
.service-item {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
  margin-bottom: 3rem;
  background-color: white;
  border-radius: 1rem;
  overflow: hidden;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  padding: 2rem;
}

@media (min-width: 640px) {
  .service-item {
    grid-template-columns: 1fr 1fr;
  }
}

@media (min-width: 768px) {
  .service-item {
    grid-template-columns: 1fr;
  }
}

.service-image-wrapper {
  width: 100%;
}

.service-image-placeholder {
  width: 100%;
  height: 300px;
  background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%);
  border-radius: 0.5rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.placeholder-icon {
  width: 80px;
  height: 80px;
  color: #9ca3af;
  margin-bottom: 1rem;
}

.placeholder-text {
  color: #6b7280;
  font-size: 0.875rem;
  font-weight: 500;
}

.service-content {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.service-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #1e5ba8;
  margin-bottom: 1rem;
}

.service-description {
  color: #4b5563;
  line-height: 1.7;
  margin-bottom: 1.5rem;
  font-size: 0.938rem;
}

.service-features {
  list-style: none;
  padding: 0;
}

.service-features li {
  padding: 0.5rem 0;
  color: #6b7280;
  font-size: 0.875rem;
}

.service-features li:before {
  content: "✓ ";
  color: #1e5ba8;
  font-weight: bold;
  margin-right: 0.5rem;
}
</style>