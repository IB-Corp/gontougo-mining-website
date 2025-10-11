<template>
  <nav class="bg-white shadow-md sticky top-0 z-50">
    <div class="container mx-auto px-4">
      <div class="flex items-center justify-between h-20">
        <!-- Logo -->
        <router-link to="/" class="flex items-center space-x-3">
          <div class="flex items-center">
            <div class="text-gms-blue font-bold text-2xl">GMS</div>
            <span class="text-xs ml-1 text-gray-600">SARL</span>
          </div>
        </router-link>  

        <!-- Desktop Menu -->
        <div class="hidden md:flex items-center space-x-8">
          <router-link 
            to="/" 
            class="nav-link"
            active-class="text-gms-blue font-semibold"
          >
            Accueil
          </router-link>
          <router-link 
            to="/about" 
            class="nav-link"
            active-class="text-gms-blue font-semibold"
          >
            À Propos
          </router-link>
          
          <!-- Services Dropdown -->
          <div class="relative group">
            <button class="nav-link flex items-center">
              Services
              <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
              </svg>
            </button>
            <div class="absolute left-0 mt-2 w-64 bg-white shadow-lg rounded-md opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200">
              <router-link to="/light-vehicles-rental" class="dropdown-link">
                Location de Véhicules Légers
              </router-link>
              <router-link to="/heavy-vehicle-rental" class="dropdown-link">
                Location de Véhicules Lourds
              </router-link>
              <router-link to="/plumbing" class="dropdown-link">
                Plomberie & Polyfusion
              </router-link>
              <router-link to="/metal-construction" class="dropdown-link">
                Charpente Métallique
              </router-link>
            </div>
          </div>

          <router-link 
            to="/commerce" 
            class="nav-link"
            active-class="text-gms-blue font-semibold"
          >
            Commerce
          </router-link>
          <router-link 
            to="/contact" 
            class="bg-gms-red text-white px-6 py-2 rounded-md hover:bg-red-700 transition"
          >
            Contact
          </router-link>
        </div>

        <!-- Mobile Menu Button -->
        <button 
          @click="mobileMenuOpen = !mobileMenuOpen"
          class="md:hidden text-gray-700 focus:outline-none"
        >
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path 
              v-if="!mobileMenuOpen"
              stroke-linecap="round" 
              stroke-linejoin="round" 
              stroke-width="2" 
              d="M4 6h16M4 12h16M4 18h16" 
            />
            <path 
              v-else
              stroke-linecap="round" 
              stroke-linejoin="round" 
              stroke-width="2" 
              d="M6 18L18 6M6 6l12 12" 
            />
          </svg>
        </button>
      </div>

      <!-- Mobile Menu -->
      <div 
        v-show="mobileMenuOpen"
        class="md:hidden pb-4"
      >
        <router-link to="/" class="mobile-link" @click="mobileMenuOpen = false">
          Accueil
        </router-link>
        <router-link to="/about" class="mobile-link" @click="mobileMenuOpen = false">
          À Propos
        </router-link>
        <div class="mobile-link text-gray-400 font-semibold">Services:</div>
        <router-link to="/vehicles" class="mobile-link pl-4" @click="mobileMenuOpen = false">
          Location de Véhicules
        </router-link>
        <router-link to="/heavy-equipment" class="mobile-link pl-4" @click="mobileMenuOpen = false">
          Engins Lourds
        </router-link>
        <router-link to="/plumbing" class="mobile-link pl-4" @click="mobileMenuOpen = false">
          Plomberie & Polyfusion
        </router-link>
        <router-link to="/metal-construction" class="mobile-link pl-4" @click="mobileMenuOpen = false">
          Charpente Métallique
        </router-link>
        <router-link to="/commerce" class="mobile-link" @click="mobileMenuOpen = false">
          Commerce
        </router-link>
        <router-link to="/contact" class="mobile-link" @click="mobileMenuOpen = false">
          Contact
        </router-link>
      </div>
    </div>
  </nav>
</template>

<script setup>
import { ref } from 'vue'

const mobileMenuOpen = ref(false)
</script>

<style scoped>
.nav-link {
  color: rgb(55 65 81);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}

.nav-link:hover {
  color: #1e5ba8;
}

.dropdown-link {
  display: block;
  padding: 0.75rem 1rem;
  font-size: 0.875rem;
  color: rgb(55 65 81);
  transition: all 0.15s ease-in-out;
}

.dropdown-link:hover {
  background-color: rgb(249 250 251);
  color: #1e5ba8;
}

.mobile-link {
  display: block;
  padding: 0.5rem 0;
  color: rgb(55 65 81);
  transition: all 0.15s ease-in-out;
}

.mobile-link:hover {
  color: #1e5ba8;
}
</style>