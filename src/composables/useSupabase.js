import { ref } from 'vue'
import { supabase } from '../lib/supabase.js'

// Services API
export function useServices() {
  const services = ref([])
  const loading = ref(false)
  const error = ref(null)

  const fetchServices = async () => {
    try {
      loading.value = true
      error.value = null
      
      const { data, error: fetchError } = await supabase
        .from('services')
        .select('*')
        .order('created_at', { ascending: false })

      if (fetchError) throw fetchError
      services.value = data || []
    } catch (err) {
      error.value = err.message
      console.error('Error fetching services:', err)
    } finally {
      loading.value = false
    }
  }

  const addService = async (service) => {
    try {
      const { data, error: insertError } = await supabase
        .from('services')
        .insert([service])
        .select()

      if (insertError) throw insertError
      services.value.unshift(data[0])
      return data[0]
    } catch (err) {
      error.value = err.message
      throw err
    }
  }

  return {
    services,
    loading,
    error,
    fetchServices,
    addService
  }
}

// Vehicles API
export function useVehicles() {
  const vehicles = ref([])
  const loading = ref(false)
  const error = ref(null)

  const fetchVehicles = async (category = null) => {
    try {
      loading.value = true
      error.value = null
      
      let query = supabase
        .from('vehicles')
        .select('*')
        .eq('available', true)

      if (category) {
        query = query.eq('category', category)
      }

      const { data, error: fetchError } = await query.order('created_at', { ascending: false })

      if (fetchError) throw fetchError
      vehicles.value = data || []
    } catch (err) {
      error.value = err.message
      console.error('Error fetching vehicles:', err)
    } finally {
      loading.value = false
    }
  }

  return {
    vehicles,
    loading,
    error,
    fetchVehicles
  }
}

// Team Members API
export function useTeamMembers() {
  const teamMembers = ref([])
  const loading = ref(false)
  const error = ref(null)

  const fetchTeamMembers = async () => {
    try {
      loading.value = true
      error.value = null
      
      const { data, error: fetchError } = await supabase
        .from('team_members')
        .select('*')
        .order('created_at', { ascending: false })

      if (fetchError) throw fetchError
      teamMembers.value = data || []
    } catch (err) {
      error.value = err.message
      console.error('Error fetching team members:', err)
    } finally {
      loading.value = false
    }
  }

  return {
    teamMembers,
    loading,
    error,
    fetchTeamMembers
  }
}

// Projects API
export function useProjects() {
  const projects = ref([])
  const loading = ref(false)
  const error = ref(null)

  const fetchProjects = async (category = null) => {
    try {
      loading.value = true
      error.value = null
      
      let query = supabase.from('projects').select('*')

      if (category) {
        query = query.eq('category', category)
      }

      const { data, error: fetchError } = await query.order('completion_date', { ascending: false })

      if (fetchError) throw fetchError
      projects.value = data || []
    } catch (err) {
      error.value = err.message
      console.error('Error fetching projects:', err)
    } finally {
      loading.value = false
    }
  }

  return {
    projects,
    loading,
    error,
    fetchProjects
  }
}