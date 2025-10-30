<template>
  <nav class="bg-white shadow-md sticky top-0 z-50">
    <div class="container mx-auto px-4">
      <div class="flex items-center justify-between h-20">
        <!-- Logo -->
        <router-link to="/" class="flex items-center space-x-3">
          <div class="flex items-center">
            <img src="../assets/GMS-PNG.png" alt="GMS Logo" /> 
          </div>
        </router-link>  

        <!-- Desktop Menu -->
        <div class="hidden lg:flex items-center space-x-8">
          <router-link 
            to="/" 
            class="nav-link"
            active-class="text-gms-blue font-semibold"
          >
            {{ $t('nav.home') }}
          </router-link>
          <router-link 
            to="/about" 
            class="nav-link"
            active-class="text-gms-blue font-semibold"
          >
            {{ $t('nav.about') }}
          </router-link>
          
          <!-- Main Services Dropdown with Categories -->
          <div class="relative group">
            <button class="nav-link flex items-center">
              {{ $t('servicesMenu.services') }}
              <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
              </svg>
            </button>
            
            <!-- Mega Menu with 4 Categories -->
            <div class="absolute right-0 mt-2 w-[750px] bg-white shadow-xl rounded-lg opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 p-6 z-50">
              <div class="grid grid-cols-2 gap-8">
                
                <!-- Category 1: Bâtiment & Construction -->
                <div>
                  <button 
                    @click="toggleCategory('construction')" 
                    class="category-header"
                  >
                    <span>{{ $t('servicesMenu.constructionCategory') }}</span>
                    <svg 
                      class="w-4 h-4 transition-transform" 
                      :class="{ 'rotate-180': openCategories.construction }"
                      fill="none" 
                      stroke="currentColor" 
                      viewBox="0 0 24 24"
                    >
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                  </button>
                  <div v-show="openCategories.construction" class="category-items">
                    <router-link to="/drilling" class="mega-menu-link">
                      {{ $t('servicesMenu.drilling') }}
                    </router-link>
                    <router-link to="/plumbing" class="mega-menu-link">
                      {{ $t('servicesMenu.plumbing') }}
                    </router-link>
                    <router-link to="/woodworking" class="mega-menu-link">
                      {{ $t('servicesMenu.woodworking') }}
                    </router-link>
                    <router-link to="/refrigeration" class="mega-menu-link">
                      {{ $t('servicesMenu.refrigeration') }}
                    </router-link>
                    <router-link to="/metal-construction" class="mega-menu-link">
                      {{ $t('servicesMenu.metalConstruction') }}
                    </router-link>
                  </div>
                </div>

                <!-- Category 2: Formation -->
                <div>
                  <button 
                    @click="toggleCategory('formation')" 
                    class="category-header"
                  >
                    <span>{{ $t('servicesMenu.trainingCategory') }}</span>
                    <svg 
                      class="w-4 h-4 transition-transform" 
                      :class="{ 'rotate-180': openCategories.formation }"
                      fill="none" 
                      stroke="currentColor" 
                      viewBox="0 0 24 24"
                    >
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                  </button>
                  <div v-show="openCategories.formation" class="category-items">
                    <router-link to="/dewatering-training" class="mega-menu-link">
                      {{ $t('servicesMenu.dewateringTraining') }}
                    </router-link>
                    <router-link to="/heavy-vehicle-training" class="mega-menu-link">
                      {{ $t('servicesMenu.heavyTraining') }}
                    </router-link>
                  </div>
                </div>

                <!-- Category 3: Logistique -->
                <div>
                  <button 
                    @click="toggleCategory('logistique')" 
                    class="category-header"
                  >
                    <span>{{ $t('servicesMenu.logisticsCategory') }}</span>
                    <svg 
                      class="w-4 h-4 transition-transform" 
                      :class="{ 'rotate-180': openCategories.logistique }"
                      fill="none" 
                      stroke="currentColor" 
                      viewBox="0 0 24 24"
                    >
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                  </button>
                  <div v-show="openCategories.logistique" class="category-items">
                    <router-link to="/light-vehicles-rental" class="mega-menu-link">
                      {{ $t('servicesMenu.lightVehicles') }}
                    </router-link>
                    <router-link to="/heavy-vehicle-rental" class="mega-menu-link">
                      {{ $t('servicesMenu.heavyVehicles') }}
                    </router-link>
                  </div>
                </div>

                <!-- Category 4: Services Généraux -->
                <div>
                  <button 
                    @click="toggleCategory('services')" 
                    class="category-header"
                  >
                    <span>{{ $t('servicesMenu.generalServicesCategory') }}</span>
                    <svg 
                      class="w-4 h-4 transition-transform" 
                      :class="{ 'rotate-180': openCategories.services }"
                      fill="none" 
                      stroke="currentColor" 
                      viewBox="0 0 24 24"
                    >
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                  </button>
                  <div v-show="openCategories.services" class="category-items">
                    <router-link to="/commerce" class="mega-menu-link">
                      {{ $t('servicesMenu.commerce') }}
                    </router-link>
                    <router-link to="/contact" class="mega-menu-link">
                      {{ $t('servicesMenu.staffPlacement') }}
                    </router-link>
                    <router-link to="/commerce" class="mega-menu-link">
                      {{ $t('servicesMenu.officeSupplies') }}
                    </router-link>
                  </div>
                </div>

              </div>
            </div>
          </div>

          <router-link 
            to="/contact" 
            class="bg-gms-red text-white px-6 py-2 rounded-md hover:bg-red-700 transition"
          >
            {{ $t('nav.contact') }}
          </router-link>
          
          <!-- Language Switcher -->
          <LanguageSwitcher />
        </div>

        <!-- Mobile Menu Button -->
        <button 
          @click="mobileMenuOpen = !mobileMenuOpen"
          class="lg:hidden text-gray-700 focus:outline-none"
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
        class="lg:hidden pb-4"
      >
        <router-link to="/" class="mobile-link" @click="mobileMenuOpen = false">
          {{ $t('nav.home') }}
        </router-link>
        <router-link to="/about" class="mobile-link" @click="mobileMenuOpen = false">
          {{ $t('nav.about') }}
        </router-link>

        <!-- Mobile: Bâtiment & Construction -->
        <div class="mobile-category">
          <button @click="toggleMobileCategory('construction')" class="mobile-category-btn">
            <span>{{ $t('servicesMenu.constructionCategory') }}</span>
            <svg 
              class="w-4 h-4 transition-transform" 
              :class="{ 'rotate-180': openMobileCategories.construction }"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-show="openMobileCategories.construction" class="mobile-submenu">
            <router-link to="/drilling" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.drilling') }}
            </router-link>
            <router-link to="/plumbing" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.plumbing') }}
            </router-link>
            <router-link to="/woodworking" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.woodworking') }}
            </router-link>
            <router-link to="/refrigeration" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.refrigeration') }}
            </router-link>
            <router-link to="/metal-construction" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.metalConstruction') }}
            </router-link>
          </div>
        </div>

        <!-- Mobile: Formation -->
        <div class="mobile-category">
          <button @click="toggleMobileCategory('formation')" class="mobile-category-btn">
            <span>{{ $t('servicesMenu.trainingCategory') }}</span>
            <svg 
              class="w-4 h-4 transition-transform" 
              :class="{ 'rotate-180': openMobileCategories.formation }"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-show="openMobileCategories.formation" class="mobile-submenu">
            <router-link to="/dewatering-training" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.dewateringTraining') }}
            </router-link>
            <router-link to="/heavy-vehicle-training" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.heavyTraining') }}
            </router-link>
          </div>
        </div>

        <!-- Mobile: Logistique -->
        <div class="mobile-category">
          <button @click="toggleMobileCategory('logistique')" class="mobile-category-btn">
            <span>{{ $t('servicesMenu.logisticsCategory') }}</span>
            <svg 
              class="w-4 h-4 transition-transform" 
              :class="{ 'rotate-180': openMobileCategories.logistique }"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-show="openMobileCategories.logistique" class="mobile-submenu">
            <router-link to="/light-vehicles-rental" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.lightVehicles') }}
            </router-link>
            <router-link to="/heavy-vehicle-rental" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.heavyVehicles') }}
            </router-link>
          </div>
        </div>

        <!-- Mobile: Services Généraux -->
        <div class="mobile-category">
          <button @click="toggleMobileCategory('services')" class="mobile-category-btn">
            <span>{{ $t('servicesMenu.generalServicesCategory') }}</span>
            <svg 
              class="w-4 h-4 transition-transform" 
              :class="{ 'rotate-180': openMobileCategories.services }"
              fill="none" 
              stroke="currentColor" 
              viewBox="0 0 24 24"
            >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
            </svg>
          </button>
          <div v-show="openMobileCategories.services" class="mobile-submenu">
            <router-link to="/commerce" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.commerce') }}
            </router-link>
            <router-link to="/contact" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.staffPlacement') }}
            </router-link>
            <router-link to="/commerce" class="mobile-sublink" @click="mobileMenuOpen = false">
              {{ $t('servicesMenu.officeSupplies') }}
            </router-link>
          </div>
        </div>

        <router-link to="/contact" class="mobile-link" @click="mobileMenuOpen = false">
          {{ $t('nav.contact') }}
        </router-link>
      </div>
    </div>
  </nav>
</template>

<script setup>
import { ref, reactive } from 'vue'
import LanguageSwitcher from './LanguageSwitcher.vue'

const mobileMenuOpen = ref(false)

// Track which desktop categories are open
const openCategories = reactive({
  construction: false,
  formation: false,
  logistique: false,
  services: false
})

// Track which mobile categories are open
const openMobileCategories = reactive({
  construction: false,
  formation: false,
  logistique: false,
  services: false
})

// Toggle desktop category dropdown
const toggleCategory = (category) => {
  openCategories[category] = !openCategories[category]
}

// Toggle mobile category dropdown
const toggleMobileCategory = (category) => {
  openMobileCategories[category] = !openMobileCategories[category]
}
</script>

<style scoped>
.nav-link {
  color: rgb(55 65 81);
  cursor: pointer;
  transition: all 0.15s ease-in-out;
  white-space: nowrap;
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

/* Mega Menu Styles */
.group:hover > div {
  display: block;
}

.category-header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
  font-weight: 700;
  color: #1e5ba8;
  font-size: 0.75rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
  padding: 0.5rem 0;
  margin-bottom: 0.5rem;
  cursor: pointer;
  transition: all 0.15s ease-in-out;
  text-align: left;
}

.category-header:hover {
  color: #164273;
}

.category-items {
  animation: slideDown 0.2s ease-out;
}

@keyframes slideDown {
  from {
    opacity: 0;
    transform: translateY(-10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.mega-menu-link {
  display: block;
  padding: 0.5rem 0;
  font-size: 0.875rem;
  color: rgb(55 65 81);
  transition: all 0.15s ease-in-out;
}

.mega-menu-link:hover {
  color: #1e5ba8;
  padding-left: 0.5rem;
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

.mobile-category {
  margin: 0.5rem 0;
}

.mobile-category-btn {
  display: flex;
  align-items: center;
  justify-content: space-between;
  width: 100%;
  padding: 0.5rem 0;
  color: rgb(55 65 81);
  font-weight: 600;
  cursor: pointer;
  transition: all 0.15s ease-in-out;
}

.mobile-category-btn:hover {
  color: #1e5ba8;
}

.mobile-submenu {
  padding-left: 1rem;
  margin-top: 0.25rem;
}

.mobile-sublink {
  display: block;
  padding: 0.4rem 0;
  color: rgb(107 114 128);
  font-size: 0.875rem;
  transition: all 0.15s ease-in-out;
}

.mobile-sublink:hover {
  color: #1e5ba8;
}
</style>
