<template>
  <footer class="bg-gray-900 text-white">
    <!-- Main Footer Content -->
    <div class="container mx-auto px-4 py-12">
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
        
        <!-- Company Info -->
        <div>
          <div class="flex items-center mb-4">
            <div class="text-gms-blue font-bold text-3xl">GMS</div>
            <span class="text-xs ml-1 text-gray-400">SARL</span>
          </div>
          <p class="text-gray-400 text-sm leading-relaxed">
            Gontougo Mining Service
          </p>
          <p class="text-gms-blue font-semibold mt-2 text-sm">
            {{ $t('home.motto') }}
          </p>
        </div>

        <!-- Quick Links -->
        <div>
          <h3 class="text-lg font-semibold mb-4">{{ $t('footer.quickLinks') }}</h3>
          <ul class="space-y-2">
            <li>
              <router-link to="/" class="footer-link">
                {{ $t('nav.home') }}
              </router-link>
            </li>
            <li>
              <router-link to="/about" class="footer-link">
                {{ $t('nav.about') }}
              </router-link>
            </li>
            <li>
              <router-link to="/vehicles" class="footer-link">
                {{ $t('nav.services') }}
              </router-link>
            </li>
               <li>
              <router-link to="/commerce" class="footer-link">
                {{ $t('nav.commerce') }}
              </router-link>
            </li>
            <li>
              <router-link to="/contact" class="footer-link">
                {{ $t('nav.contact') }}
              </router-link>
            </li>
          </ul>
        </div>

        <!-- Services -->
        <div>
          <h3 class="text-lg font-semibold mb-4">{{ $t('footer.ourServices') }}</h3>
          <ul class="space-y-2 text-sm">
            <li class="text-gray-400">• {{ $t('servicesMenu.lightVehicles')}}</li>
            <li class="text-gray-400">• {{ $t('servicesMenu.plumbing')}}</li>
            <li class="text-gray-400">• {{ $t('servicesMenu.heavyTraining')}}</li>
            <li class="text-gray-400">• {{ $t('servicesMenu.dewateringTraining')}}</li>
            <li class="text-gray-400">• {{ $t('servicesMenu.metalConstruction')}}</li>
            <li class="text-gray-400">• {{ $t('servicesMenu.commerce')}}</li>
          </ul>
        </div>

        <!-- Contact Info -->
        <div>
          <h3 class="text-lg font-semibold mb-4">Contact</h3>
          <ul class="space-y-3 text-sm">
            <li class="flex items-start">
              <svg class="w-5 h-5 mr-2 text-gms-blue flex-shrink-0 mt-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
              </svg>
              <span class="text-gray-400">
                {{ $t('footer.locationMainArea') }}<br>
                {{ $t('footer.locationBranchArea') }}
              </span>
            </li>
            <li class="flex items-center">
              <svg class="w-5 h-5 mr-2 text-gms-blue flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z" />
              </svg>
              <a href="tel:+2250788884940" class="text-gray-400 hover:text-gms-blue transition">
                (+225) 0788884940
              </a>
            </li>
            <li class="flex items-center">
              <svg class="w-5 h-5 mr-2 text-gms-blue flex-shrink-0" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
              <a href="mailto:contact@gms-sarl.com" class="text-gray-400 hover:text-gms-blue transition">
                contact@gms-sarl.com
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Bottom Bar -->
    <div class="border-t border-gray-800">
      <div class="container mx-auto px-4 py-6">
        <div class="flex flex-col md:flex-row justify-between items-center text-sm text-gray-400">
          <div class="mb-4 md:mb-0">
            <p>RCCM: CI-ABG2023M0103 | CODE CDI: 911</p>
            <p class="mt-1">{{ $t('footer.legalRegime') }}</p>
          </div>
          <div class="text-center md:text-right">
            <p>&copy; {{ currentYear }}{{ $t('footer.copyright') }}</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup>
import { computed } from 'vue'

const currentYear = computed(() => new Date().getFullYear())
</script>

<style scoped>
.footer-link {
  color: rgb(156 163 175);
  font-size: 0.875rem;
  transition: all 0.15s ease-in-out;
}

.footer-link:hover {
  color: #1e5ba8;
}
</style>