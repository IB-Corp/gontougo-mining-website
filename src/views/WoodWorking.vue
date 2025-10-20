<template>
  <div class="menuiserie-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gray-800 to-gray-600 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
          Menuiserie
        </h1>
        <p class="text-xl text-center text-gray-300 max-w-2xl mx-auto">
          Services de menuiserie bois et métallique pour vos projets résidentiels, commerciaux et industriels
        </p>
      </div>
    </section>

    <!-- Introduction Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto text-center">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
            Expertise en Menuiserie sur Mesure
          </h2>
          <p class="text-lg text-gray-700 leading-relaxed">
            GMS SARL propose des services complets de menuiserie pour tous types de projets. 
            Notre équipe de menuisiers qualifiés réalise des ouvrages en bois et en métal, 
            alliant savoir-faire traditionnel et techniques modernes pour garantir des finitions 
            de qualité et une durabilité exceptionnelle.
          </p>
        </div>
      </div>
    </section>

    <!-- Services Section -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Nos Services de Menuiserie
        </h2>

        <!-- Service 1: Portes et Fenêtres -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4" />
              </svg>
              <p class="placeholder-text">Portes et Fenêtres</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Portes et Fenêtres</h3>
            <p class="service-description">
              Fabrication et installation de portes et fenêtres sur mesure en bois massif, contreplaqué, 
              ou aluminium. Portes intérieures, portes d'entrée, fenêtres battantes ou coulissantes, 
              adaptées à vos besoins et au style de votre bâtiment.
            </p>
            <ul class="service-features">
              <li>Portes sur mesure (intérieures et extérieures)</li>
              <li>Fenêtres battantes et coulissantes</li>
              <li>Installation professionnelle</li>
            </ul>
          </div>
        </div>

        <!-- Service 2: Mobilier sur Mesure -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
              </svg>
              <p class="placeholder-text">Mobilier sur Mesure</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Mobilier sur Mesure</h3>
            <p class="service-description">
              Conception et fabrication de mobilier personnalisé pour bureaux, commerces et habitations. 
              Armoires, bibliothèques, bureaux, comptoirs de réception, et meubles de rangement réalisés 
              selon vos spécifications et l'espace disponible.
            </p>
            <ul class="service-features">
              <li>Mobilier de bureau et commercial</li>
              <li>Rangements et placards</li>
              <li>Design personnalisé</li>
            </ul>
          </div>
        </div>

        <!-- Service 3: Agencement Intérieur -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 5a1 1 0 011-1h14a1 1 0 011 1v2a1 1 0 01-1 1H5a1 1 0 01-1-1V5zM4 13a1 1 0 011-1h6a1 1 0 011 1v6a1 1 0 01-1 1H5a1 1 0 01-1-1v-6zM16 13a1 1 0 011-1h2a1 1 0 011 1v6a1 1 0 01-1 1h-2a1 1 0 01-1-1v-6z" />
              </svg>
              <p class="placeholder-text">Agencement Intérieur</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Agencement Intérieur</h3>
            <p class="service-description">
              Aménagement complet d'espaces intérieurs pour bureaux, boutiques, restaurants et habitations. 
              Cloisons, faux-plafonds, revêtements muraux en bois, et création d'espaces fonctionnels 
              optimisant l'utilisation de chaque mètre carré.
            </p>
            <ul class="service-features">
              <li>Cloisons et séparations</li>
              <li>Faux-plafonds décoratifs</li>
              <li>Optimisation des espaces</li>
            </ul>
          </div>
        </div>

        <!-- Service 4: Escaliers et Rampes -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 21v-4m0 0V5a2 2 0 012-2h6.5l1 1H21l-3 6 3 6h-8.5l-1-1H5a2 2 0 00-2 2zm9-13.5V9" />
              </svg>
              <p class="placeholder-text">Escaliers</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Escaliers et Rampes</h3>
            <p class="service-description">
              Fabrication et installation d'escaliers en bois (droits, tournants, hélicoïdaux) et de 
              garde-corps. Escaliers intérieurs et extérieurs, rampes d'accès, et balustrades alliant 
              sécurité, esthétique et conformité aux normes.
            </p>
            <ul class="service-features">
              <li>Escaliers droits et tournants</li>
              <li>Garde-corps et balustrades</li>
              <li>Conformité aux normes de sécurité</li>
            </ul>
          </div>
        </div>

        <!-- Service 5: Menuiserie Métallique -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z" />
              </svg>
              <p class="placeholder-text">Menuiserie Métallique</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Menuiserie Métallique</h3>
            <p class="service-description">
              Réalisation d'ouvrages en métal : portails, grilles de sécurité, portes métalliques, 
              garde-corps en fer forgé ou acier galvanisé. Solutions robustes et durables pour la 
              sécurisation et l'embellissement de vos bâtiments.
            </p>
            <ul class="service-features">
              <li>Portails et grilles métalliques</li>
              <li>Portes de sécurité</li>
              <li>Ouvrages en fer forgé</li>
            </ul>
          </div>
        </div>

        <!-- Service 6: Revêtements et Finitions -->
        <div class="service-item">
          <div class="service-image-wrapper">
            <div class="service-image-placeholder">
              <svg class="placeholder-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01" />
              </svg>
              <p class="placeholder-text">Revêtements</p>
            </div>
          </div>
          <div class="service-content">
            <h3 class="service-title">Revêtements et Finitions</h3>
            <p class="service-description">
              Pose de parquets, lambris, plinthes et moulures décoratives. Traitement et finition 
              des bois (vernissage, lasure, peinture) pour protéger et embellir vos ouvrages en 
              menuiserie. Finitions soignées garantissant une longue durée de vie.
            </p>
            <ul class="service-features">
              <li>Pose de parquets et lambris</li>
              <li>Traitements protecteurs</li>
              <li>Finitions décoratives</li>
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
          Découvrez quelques exemples de nos projets de menuiserie réalisés avec succès.
        </p>

      <MediaGallery :mediaItems="galleryItems" />
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-gradient-to-r from-gray-800 to-gray-600 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          Besoin de Services de Menuiserie?
        </h2>
        <p class="text-xl mb-8 text-gray-300 max-w-2xl mx-auto">
          Confiez-nous vos projets de menuiserie bois et métallique. Devis gratuit et personnalisé.
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