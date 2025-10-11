<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="hero-section relative bg-gradient-to-br from-gray-100 to-gray-200 py-20 md:py-32">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto text-center">
          <!-- Logo/Company Name -->
          <div class="mb-8">
            <h1 class="text-4xl md:text-6xl font-bold text-gms-blue mb-4">
              GONTOUGO MINING SERVICE
              <span class="text-gms-red"> SARL</span>
            </h1>
            <div class="inline-block bg-gms-blue text-white px-6 py-2 rounded-full text-lg font-semibold">
              CATALOGUE 2025
            </div>
          </div>

          <!-- Company Motto -->
          <h2 class="text-2xl md:text-4xl font-semibold text-gray-800 mb-8">
            La sécurité, la clé de la production
          </h2>

          <p class="text-lg text-gray-600 mb-10 max-w-2xl mx-auto">
            Entreprise de service diversifiée spécialisée dans l'exploitation minière 
            et les industries connexes en Côte d'Ivoire.
          </p>

          <!-- CTA Buttons -->
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <router-link 
              to="/about" 
              class="bg-gms-blue text-white px-8 py-4 rounded-lg font-semibold hover:bg-blue-700 transition shadow-lg"
            >
              Découvrir GMS
            </router-link>
            <router-link 
              to="/contact" 
              class="bg-gms-red text-white px-8 py-4 rounded-lg font-semibold hover:bg-red-700 transition shadow-lg"
            >
              Nous Contacter
            </router-link>
          </div>
        </div>
      </div>

      <!-- Decorative Elements -->
      <div class="absolute bottom-0 left-0 right-0 h-16 bg-gradient-to-t from-white to-transparent"></div>
    </section>

    <!-- Services Grid Section -->
    <section class="py-16 md:py-24 bg-white">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
            Nos Services
          </h2>
          <p class="text-lg text-gray-600 max-w-2xl mx-auto">
            Des solutions complètes pour vos projets miniers et industriels
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <!-- Service Card 1 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-blue-100 group-hover:bg-gms-blue transition">
              <svg class="w-12 h-12 text-gms-blue group-hover:text-white transition" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 7h12m0 0l-4-4m4 4l-4 4m0 6H4m0 0l4 4m-4-4l4-4" />
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              Location d'Engins Miniers
            </h3>
            <p class="text-gray-600 mb-4">
              Bulldozers, pelles mécaniques, camions-bennes, excavateurs et plus encore pour vos projets.
            </p>
            <router-link to="/heavy-vehicle-rental" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 2 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-red-100 group-hover:bg-gms-red transition">
              <svg class="w-12 h-12 text-gms-red group-hover:text-white transition" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              Formation & Natation
            </h3>
            <p class="text-gray-600 mb-4">
              Formation professionnelle en conduite d'engins lourds et cours de natation (dewatering).
            </p>
            <router-link to="/about" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 3 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-blue-100 group-hover:bg-gms-blue transition">
              <svg class="w-12 h-12 text-gms-blue group-hover:text-white transition" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4" />
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              Location de Véhicules
            </h3>
            <p class="text-gray-600 mb-4">
              Véhicules légers et lourds pour tous vos besoins de transport et logistique.
            </p>
            <router-link to="/light-vehicles-rental" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 4 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-red-100 group-hover:bg-gms-red transition">
              <svg class="w-12 h-12 text-gms-red group-hover:text-white transition" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4" />
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              Charpente Métallique
            </h3>
            <p class="text-gray-600 mb-4">
              Construction et installation de structures métalliques pour vos projets industriels.
            </p>
            <router-link to="/metal-construction" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 5 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-blue-100 group-hover:bg-gms-blue transition">
              <svg class="w-12 h-12 text-gms-blue group-hover:text-white transition" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              Plomberie & Électrofusion
            </h3>
            <p class="text-gray-600 mb-4">
              Tuyauterie plastique et métallique, polyfusion pour projets miniers et industriels.
            </p>
            <router-link to="/plumbing" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 6 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-red-100 group-hover:bg-gms-red transition">
              <svg class="w-12 h-12 text-gms-red group-hover:text-white transition" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z" />
              </svg>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              Commerce Général
            </h3>
            <p class="text-gray-600 mb-4">
              Fournitures de bureau, équipements de protection individuelle et consommables.
            </p>
            <router-link to="/commerce" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>
        </div>
      </div>
    </section>

    <!-- Stats Section -->
    <section class="py-16 bg-gms-blue text-white">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">10+</div>
            <div class="text-blue-200">Années d'expérience</div>
          </div>
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">500+</div>
            <div class="text-blue-200">Projets réalisés</div>
          </div>
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">50+</div>
            <div class="text-blue-200">Engins disponibles</div>
          </div>
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">100%</div>
            <div class="text-blue-200">Satisfaction client</div>
          </div>
        </div>
      </div>
    </section>

    <!-- Why Choose Us Section -->
    <section class="py-16 md:py-24 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto">
          <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
            Pourquoi Choisir GMS?
          </h2>
          
          <div class="grid md:grid-cols-2 gap-8">
            <div class="flex items-start">
              <div class="flex-shrink-0 w-12 h-12 bg-gms-blue rounded-full flex items-center justify-center mr-4">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Équipe Qualifiée</h3>
                <p class="text-gray-600">
                  Des professionnels hautement qualifiés et motivés pour garantir l'excellence.
                </p>
              </div>
            </div>

            <div class="flex items-start">
              <div class="flex-shrink-0 w-12 h-12 bg-gms-blue rounded-full flex items-center justify-center mr-4">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Sécurité Prioritaire</h3>
                <p class="text-gray-600">
                  La sécurité au cœur de nos actions - notre devise et engagement.
                </p>
              </div>
            </div>

            <div class="flex items-start">
              <div class="flex-shrink-0 w-12 h-12 bg-gms-blue rounded-full flex items-center justify-center mr-4">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z" />
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Service Rapide</h3>
                <p class="text-gray-600">
                  Réactivité et efficacité pour répondre rapidement à vos besoins.
                </p>
              </div>
            </div>

            <div class="flex items-start">
              <div class="flex-shrink-0 w-12 h-12 bg-gms-blue rounded-full flex items-center justify-center mr-4">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">Prix Compétitifs</h3>
                <p class="text-gray-600">
                  Des tarifs adaptés à votre budget sans compromis sur la qualité.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Call to Action -->
    <section class="py-16 bg-gradient-to-r from-gms-blue to-blue-700 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          Prêt à Démarrer Votre Projet?
        </h2>
        <p class="text-xl mb-8 text-blue-100 max-w-2xl mx-auto">
          Contactez-nous dès aujourd'hui pour discuter de vos besoins et obtenir un devis personnalisé.
        </p>
        <router-link 
          to="/contact" 
          class="inline-block bg-white text-gms-blue px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition shadow-lg"
        >
          Demander un Devis
        </router-link>
      </div>
    </section>
  </div>
</template>

<style scoped>
.service-card {
  background-color: white;
  padding: 2rem;
  border-radius: 0.75rem;
  box-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
  transition: all 0.3s ease-in-out;
  border: 1px solid rgb(243 244 246);
}

.service-card:hover {
  box-shadow: 0 25px 50px -12px rgb(0 0 0 / 0.25);
}

.icon-wrapper {
  width: 5rem;
  height: 5rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 1.5rem;
}
</style>