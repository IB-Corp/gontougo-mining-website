import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  {
    path: '/',
    name: 'Home',
    component: () => import('../views/Home.vue')
  },
  {
    path: '/about',
    name: 'About',
    component: () => import('../views/About.vue')
  },
  {
    path: '/light-vehicles-rental',
    name: 'LightVehicles',
    component: () => import('../views/LightVehicleRental.vue')
  },
  {
    path: '/heavy-vehicle-rental',
    name: 'HeavyVehicle',
    component: () => import('../views/HeavyVehicleRental.vue')
  },
    
  {
    path: '/plumbing',
    name: 'Plumbing',
    component: () => import('../views/Plumbing.vue')
  },
  {
    path: '/metal-construction',
    name: 'MetalConstruction',
    component: () => import('../views/MetalConstruction.vue')
  },
  {
    path: '/commerce',
    name: 'Commerce',
    component: () => import('../views/Commerce.vue')
  },
  {
    path: '/contact',
    name: 'Contact',
    component: () => import('../views/Contact.vue')
  },
   {
    path: '/heavy-vehicle-training',
    name: 'HeavyVehicleTraining',
    component: () => import('../views/HeavyVehicleTraining.vue')
  },
  {
    path: '/dewatering-training',
    name: 'DewateringTraining',
    component: () => import('../views/DewateringTraining.vue')
  },
  {
    path: '/refrigeration',
    name: 'Refrigeration',
    component: () => import('../views/Refrigeration.vue') 
  },
  {
    path: '/woodworking',
    name: 'Woodworking',
    component: () => import('../views/WoodWorking.vue')
  },
  {
    path: '/drilling',
    name: 'Drilling',
    component: () => import('../views/Drilling.vue')
  },
  {
    path:'/refrigeration',
    name: 'Refrigeration',
    component: () => import('../views/Refrigeration.vue')
  }
]

const router = createRouter({
  history: createWebHistory(),
  routes,
  scrollBehavior(to, from, savedPosition) {
    if (savedPosition) {
      return savedPosition
    } else {
      return { top: 0 }
    }
  }
})

export default router