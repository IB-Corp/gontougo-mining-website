<template>
  <div class="about-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gms-blue to-blue-700 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">{{ $t('about.title') }}</h1>
        <p class="text-xl text-center text-blue-100 max-w-2xl mx-auto">
          {{ $t('about.subtitle') }}
        </p>
      </div>
    </section>

    <!-- Who We Are Section -->
    <section class="py-16 md:py-24 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-5xl mx-auto">
          <div class="section-badge">
          {{ $t('about.whoAreWe',capitalize) }}
          </div>
          
          <div class="prose-content">
            <p class="text-3xl text-gray-700 leading-relaxed mb-6">
              <strong class="text-gms-blue">GMS (Gontougo Mining Service)</strong> 
              {{ $t('about.intro.description') }}
            </p>
            
            <p class="text-3xl text-gray-700 leading-relaxed">
              {{ $t('about.intro.companyInfo') }}
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Our Objective Section -->
    <section class="py-16 md:py-24 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="max-w-5xl mx-auto">
          <div class="section-badge">
          {{ $t('about.services.title') }} ?
          </div>
          
          <div class="prose-content">
            <p class="text-3xl text-gray-700 leading-relaxed mb-6">
              {{ $t('about.services.paragraph1') }}
            </p>
            
            <p class="text-3xl text-gray-700 leading-relaxed mb-6">
             {{ $t('about.services.paragraph2') }}
            </p>
            
            <p class="text-3xl text-gray-700 leading-relaxed">
              {{ $t('about.services.commitment') }}
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Our Team Section -->
    <section class="py-16 md:py-24 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-5xl mx-auto">
          <div class="section-badge ">
           {{ $t('about.team.title') }}
          </div>
          
          <div class="prose-content ">
            <p class="text-3xl text-gray-700 leading-relaxed">
              {{ $t('about.team.description') }}
            </p>
            
            <p class="text-3xl text-gray-700 leading-relaxed mt-6">
             {{$t('about.team.collaboration') }}
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Mission Statement Banner -->
    <section class="py-16 bg-gradient-to-r from-gms-red to-red-700 text-white">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto text-center">
          <div class="mb-6">
            <svg class="w-16 h-16 mx-auto text-white opacity-90" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
            </svg>
          </div>
          <h2 class="text-3xl md:text-4xl font-bold mb-4">
            {{$t('about.motto.line1')}} <span class="text-yellow-300">{{ $t('about.motto.highlight') }}</span>
          </h2>
          <h2 class="text-3xl md:text-4xl font-bold">
           {{ $t('about.motto.line2') }} <span class="text-yellow-300">{{ $t('about.motto.highlight2') }}</span>
          </h2>
        </div>
      </div>
    </section>

    <!-- Values Section -->
    <section class="py-16 md:py-24 bg-gray-50">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          {{ $t('about.values.title') }}
        </h2>
        
        <div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
          <!-- Value 1 -->
          <div class="value-card">
            <div class="value-icon bg-gms-blue">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ $t('about.values.security.title') }}</h3>
            <p class="text-lg text-gray-600">
              {{ $t('about.values.security.desc') }}
            </p>
          </div>

          <!-- Value 2 -->
          <div class="value-card">
            <div class="value-icon bg-gms-red">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z" />
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ $t('about.values.quality.title') }}</h3>
            <p class="text-lg text-gray-600">
              {{ $t('about.values.quality.desc') }}
            </p>
          </div>

          <!-- Value 3 -->
          <div class="value-card">
            <div class="value-icon bg-gms-blue">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-gray-900 mb-3">{{ $t('about.values.integrity.title') }}</h3>
            <p class="text-lg text-gray-600">
              {{ $t('about.values.integrity.desc') }}
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <h2 class="text-4xl font-bold text-gray-900 mb-6">
            {{ $t('about.cta.title') }}
          </h2>
          <p class="text-xl text-gray-600 mb-8">
            {{ $t('about.cta.subtitle') }}
          </p>
          <router-link 
            to="/contact" 
            class="inline-block bg-gms-blue text-white px-8 py-4 rounded-lg font-semibold hover:bg-blue-700 transition shadow-lg"
          >
            {{ $t('about.cta.button') }}
          </router-link>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { capitalize } from 'vue';

// No script needed
</script>

<style scoped>
.section-badge {
  display: inline-block;
  background: linear-gradient(135deg, #1e5ba8 0%, #3b82f6 100%);
  color: white;
  padding: 0.75rem 2rem;
  border-radius: 9999px;
  font-size: 1.125rem;
  font-weight: 700;
  margin-bottom: 2rem;
  box-shadow: 0 4px 6px -1px rgba(30, 91, 168, 0.3);
}

.prose-content {
  max-width: 100%;
}

.prose-content p {
  margin-bottom: 1.5rem;
}

.value-card {
  background-color: white;
  padding: 2rem;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  text-align: center;
  transition: all 0.3s ease-in-out;
  border: 1px solid rgb(243 244 246);
}

.value-card:hover {
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
  transform: translateY(-4px);
}

.value-icon {
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1.5rem;
}
</style>