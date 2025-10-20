import { createApp } from 'vue'
import './assets/main.css'
import App from './App.vue'
import router from './router'
import i18n from './langs/translate.js'

createApp(App)
  .use(router)
  .use(i18n)
  .mount('#app')
