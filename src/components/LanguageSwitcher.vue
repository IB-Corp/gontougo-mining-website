<template>
  <div class="language-switcher">
    <button
      @click="toggleLanguage"
      class="flex items-center gap-2 px-4 py-2 rounded-md bg-gray-100 hover:bg-gray-200 transition-colors duration-200"
      :title="currentLocale === 'fr' ? 'Switch to English' : 'Basculer en Français'"
    >
      <!-- Flag Icon -->
      <span class="text-xl">{{ currentLocale === 'fr' ? '🇬🇧' : '🇫🇷' }}</span>
      
      <!-- Language Code -->
      <span class="font-semibold text-gray-700 uppercase">
        {{ currentLocale === 'fr' ? 'EN' : 'FR' }}
      </span>
    </button>
  </div>
</template>

<script setup>
import { useI18n } from 'vue-i18n'
import { computed } from 'vue'

const { locale } = useI18n()

const currentLocale = computed(() => locale.value)

const toggleLanguage = () => {
  const newLocale = locale.value === 'fr' ? 'en' : 'fr'
  locale.value = newLocale
  
  // Save preference to localStorage
  localStorage.setItem('locale', newLocale)
  
  // Optional: Show a toast notification
  console.log(`Language switched to ${newLocale === 'fr' ? 'Français' : 'English'}`)
}
</script>

<style scoped>
.language-switcher {
  display: inline-block;
}

button {
  cursor: pointer;
  border: 1px solid #e5e7eb;
  box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
}

button:hover {
  box-shadow: 0 2px 4px 0 rgba(0, 0, 0, 0.1);
}
</style>
