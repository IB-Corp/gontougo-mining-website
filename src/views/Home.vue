<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="hero-section relative py-20 md:py-32 overflow-hidden">
      <!-- Background Image -->
      <div class="hero-background"></div>
      
      <!-- Dark Overlay -->
      <div class="hero-overlay"></div>
      
      <div class="container mx-auto px-4 relative z-10">
        <div class="max-w-4xl mx-auto text-center">
          <!-- Logo/Company Name -->
          <div class="mb-8">
            <h1 class="text-4xl md:text-6xl font-bold text-white mb-4">
              GONTOUGO MINING SERVICE
              <span class="text-gms-red"> SARL</span>
            </h1>
          </div>

          <!-- Company Motto -->
          <h2 class="text-2xl md:text-4xl font-semibold text-white mb-8">
            {{ $t('home.motto') }}
          </h2>

          <p class="text-lg text-gray-200 mb-10 max-w-2xl mx-auto">
            {{ $t('home.description') }}
          </p>

          <!-- CTA Buttons -->
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <router-link 
              to="/about" 
              class="bg-gms-blue text-white px-8 py-4 rounded-lg font-semibold hover:bg-blue-700 transition shadow-lg"
            >
              {{$t('home.discover')}}
            </router-link>
            <router-link 
              to="/contact" 
              class="bg-red-500 text-white px-8 py-4 rounded-lg font-semibold hover:bg-red-600 transition shadow-lg"
            >
              {{ $t('home.contactUs') }}
            </router-link>
          </div>
        </div>
      </div>

      <!-- Decorative Elements -->
      <div class="absolute bottom-0 left-0 right-0 h-16 bg-gradient-to-t from-white to-transparent z-10"></div>
    </section>

    <!-- Services Grid Section -->
    <section class="py-16 md:py-24 bg-white">
      <div class="container mx-auto px-4">
        <div class="text-center mb-16">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-4">
           {{ $t('home.ourServices') }}
          </h2>
          <p class="text-lg text-gray-600 max-w-2xl mx-auto">
            {{ $t('home.servicesDescription') }}
          </p>
        </div>

        <!-- Loading State -->
        <!-- <div v-if="servicesLoading" class="text-center py-12">
          <div class="inline-block animate-spin rounded-full h-8 w-8 border-b-2 border-gms-blue"></div>
          <p class="mt-4 text-gray-600">Chargement des services...</p>
        </div> -->

        <!-- Error State -->
        <!-- <div v-else-if="servicesError" class="text-center py-12">
          <p class="text-red-600">Erreur lors du chargement des services: {{ servicesError }}

          </p>
        </div> -->

        <!-- Dynamic Services Grid -->
        <!-- <div v-else class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div 
            v-for="service in services.slice(0, 10)" 
            :key="service.id" 
            class="service-card group"
          >
            <div :class="[
              'icon-wrapper transition',
              getServiceColor(service.category).bg,
              getServiceColor(service.category).hover
            ]">
              <img 
                :src="getServiceIcon(service.category)" 
                :alt="service.name"
                class="w-12 h-12 object-contain transition group-hover:brightness-0 group-hover:invert"
              />
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              {{ service.name }}
            </h3>
            <p class="text-gray-600 mb-4">
              {{ service.description }}
            </p>
            <ul v-if="service.features && service.features.length" class="text-sm text-gray-500 mb-4">
              <li v-for="feature in service.features.slice(0, 2)" :key="feature" class="mb-1">
                • {{ feature }}
              </li>
            </ul>
            <router-link 
              :to="service.route || '/contact'" 
              class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center"
            >
              En savoir plus
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>
        </div> -->

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 gap-8">
          <!-- Static Service Card 1 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-blue-100 group-hover:bg-gms-blue transition">
            <img src="/images/icons/construction.png" alt="Construction Icon" class="w-12 h-12" />
              
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              {{ $t('home.services.constructionCategory.title') }}
            </h3>
            <p class="text-gray-600 mb-4">
              {{ $t('home.services.constructionCategory.description') }}
            </p>
            <router-link to="/plumbing" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              {{ $t('common.readMore') }}
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Static Service Card 2 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-red-100 group-hover:bg-gms-red transition">
             <img src="/images/icons/training.png"/>
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              {{ $t('home.services.trainingCategory.title') }}
            </h3>
            <p class="text-gray-600 mb-4">
              {{ $t('home.services.trainingCategory.description') }}
            </p>
            <router-link to="/heavy-vehicle-training" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              {{ $t('common.readMore') }}
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 3 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-blue-100 group-hover:bg-gms-blue transition">
             <img src="/images/icons/transport.png" alt="Logistics Icon" class="w-12 h-12" />
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              {{ $t('home.services.logisticsCategory.title') }}
            </h3>
            <p class="text-gray-600 mb-4">
              {{ $t('home.services.logisticsCategory.description') }}
            </p>
            <router-link to="/heavy-vehicle-rental" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              {{ $t('common.readMore') }}
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
              </svg>
            </router-link>
          </div>

          <!-- Service Card 4 -->
          <div class="service-card group">
            <div class="icon-wrapper bg-red-100 group-hover:bg-gms-red transition">
              <img src="/images/icons/commerce.png"
            </div>
            <h3 class="text-xl font-bold text-gray-900 mb-3">
              {{ $t('home.services.generalServicesCategory.title') }}
            </h3>
            <p class="text-gray-600 mb-4">
              {{ $t('home.services.generalServicesCategory.description') }}
            </p>
            <router-link to="/metal-construction" class="text-gms-blue font-semibold hover:text-blue-700 inline-flex items-center">
              {{ $t('common.readMore') }}
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
            <div class="text-blue-200">{{ $t('home.stats.experience') }}</div>
          </div>
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">500+</div>
            <div class="text-blue-200">{{ $t('home.stats.projects') }}</div>
          </div>
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">50+</div>
            <div class="text-blue-200">{{ $t('home.stats.equipment') }}</div>
          </div>
          <div>
            <div class="text-4xl md:text-5xl font-bold mb-2">100%</div>
            <div class="text-blue-200">{{ $t('home.stats.satisfaction') }}</div>
          </div>
        </div>
      </div>
    </section>

    <!-- Why Choose Us Section -->
    <section class="py-16 md:py-24 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto">
          <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
            {{ $t('home.whyChooseUs.title') }}
          </h2>
          
          <div class="grid md:grid-cols-2 gap-8">
            <div class="flex items-start">
              <div class="flex-shrink-0 w-12 h-12 bg-gms-blue rounded-full flex items-center justify-center mr-4">
                <svg class="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7" />
                </svg>
              </div>
              <div>
                <h3 class="text-xl font-bold text-gray-900 mb-2">{{ $t('home.whyChooseUs.qualifiedTeam.title') }}</h3>
                <p class="text-gray-600">
                  {{ $t('home.whyChooseUs.qualifiedTeam.description') }}
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
                <h3 class="text-xl font-bold text-gray-900 mb-2">{{ $t('home.whyChooseUs.prioritySafety.title') }}</h3>
                <p class="text-gray-600">
                  {{ $t('home.whyChooseUs.prioritySafety.description') }}
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
                <h3 class="text-xl font-bold text-gray-900 mb-2">{{ $t('home.whyChooseUs.fastService.title') }}</h3>
                <p class="text-gray-600">
                  {{ $t('home.whyChooseUs.fastService.description') }}
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
                <h3 class="text-xl font-bold text-gray-900 mb-2">{{ $t('home.whyChooseUs.competitivePrices.title') }}</h3>
                <p class="text-gray-600">
                  {{ $t('home.whyChooseUs.competitivePrices.description') }}
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
         {{ $t('cta.title') }}
        </h2>
        <p class="text-xl mb-8 text-blue-100 max-w-2xl mx-auto">
          {{ $t('cta.needsAreResolved') }}
        </p>
        <router-link 
          to="/contact" 
          class="inline-block bg-white text-gms-blue px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition shadow-lg"
        >
          {{  $t('cta.quotation') }}
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
import { onMounted } from 'vue'
import { useServices, useVehicles, useProjects } from '../composables/useSupabase.js'

// Initialize composables for data fetching
const { services, loading: servicesLoading, error: servicesError, fetchServices } = useServices()
const { vehicles, loading: vehiclesLoading, error: vehiclesError, fetchVehicles } = useVehicles()
const { projects, loading: projectsLoading, error: projectsError, fetchProjects } = useProjects()

// Fetch data when component mounts
onMounted(async () => {
  console.log('🔄 Fetching data from Supabase...')
  
  // Fetch services for the services section
  await fetchServices()
  console.log('📋 Services fetched:', services.value)
  console.log('📊 Services count:', services.value?.length || 0)
  console.log('❌ Services error:', servicesError.value)
  
  // Fetch featured vehicles (limit to first 3 for homepage)
  await fetchVehicles()
  console.log('🚗 Vehicles fetched:', vehicles.value?.length || 0)
  
  // Fetch recent projects for gallery
  await fetchProjects()
  console.log('📁 Projects fetched:', projects.value?.length || 0)
})

// Helper function to get service icon based on category
const getServiceIcon = (category) => {
  const icons = {
    // Put your icon images in /public/images/icons/
    'mining': '/images/icons/mining.png',
    'training': '/images/icons/training.png',
    'transport': '/images/icons/transport.png',
    'construction': '/images/icons/construction.png',
    'plumbing': '/images/icons/plumbing.png',
    'woodworking': '/images/icons/woodworking.png',
    'commerce': '/images/icons/commerce.png',
    'refrigeration': '/images/icons/refrigeration.png',
    'drilling': '/images/icons/drilling.png'
  }
  // Fallback to a default icon if category not found
  return icons[category] || '/images/icons/default.png'
}

// Helper function to get service color based on category  
const getServiceColor = (category) => {
  const colors = {
    'mining': { bg: 'bg-blue-100', text: 'text-gms-blue', hover: 'group-hover:bg-gms-blue' },
    'training': { bg: 'bg-red-100', text: 'text-gms-red', hover: 'group-hover:bg-gms-red' },
    'transport': { bg: 'bg-green-100', text: 'text-green-600', hover: 'group-hover:bg-green-600' },
    'construction': { bg: 'bg-purple-100', text: 'text-purple-600', hover: 'group-hover:bg-purple-600' },
    'plumbing': { bg: 'bg-indigo-100', text: 'text-indigo-600', hover: 'group-hover:bg-indigo-600' },
    'commerce': { bg: 'bg-orange-100', text: 'text-orange-600', hover: 'group-hover:bg-orange-600' }
  }
  return colors[category] || colors['mining']
}
</script>

<style scoped>
/* Hero Section Background */
.hero-section {
  min-height: 600px;
  position: relative;
}

.hero-background {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-image: url('../assets/images/hero-background-image.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  z-index: 0;
}

.hero-overlay {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: linear-gradient(
    135deg,
    rgba(30, 58, 138, 0.85) 0%,
    rgba(30, 91, 168, 0.75) 50%,
    rgba(0, 0, 0, 0.7) 100%
  );
  z-index: 1;
}

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