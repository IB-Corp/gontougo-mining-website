import { createI18n } from 'vue-i18n'
import fr from './french.js'
import en from './english.js'

const i18n = createI18n({
  legacy: false, // Use Composition API
  locale: localStorage.getItem('locale') || 'fr', // Default language
  fallbackLocale: 'fr',
  messages: {
    fr,
    en
  }
})

export default i18n
