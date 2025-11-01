<template>
  <div class="heavy-equipment-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gms-red to-red-700 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
         {{ $t('heavyVehicleRental.heavyVehicleRental') }}
        </h1>
        <p class="text-xl text-center text-red-100 max-w-2xl mx-auto">
         {{ $t('heavyVehicleRental.qualityHeavyMachineryForYourMiningAndConstructionProjects') }}
        </p>
      </div>
    </section>

    <!-- Equipment Grid -->
    <section class="py-16 md:py-24 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="grid md:grid-cols-2 gap-8 max-w-6xl mx-auto">
          
          <!-- Equipment 1: Compacteur CAT -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
             <img src="../assets/images/vehicles/COMPACTEUR CAT1.jfif"  alt="COMPACTEUR CAT"/>
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.catCompactor.name') }}</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catCompactor.engineGrossPower') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catCompactor.power') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catCompactor.compactionWidth') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catCompactor.width') }}</span>
                </div>
              </div>
            </div>
          </div>

          <!-- Equipment 2: Tractopelle CAT -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/TRACTOPELLE CAT.jpg " alt="Tractopelle CAT" />
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.catBackhoeLoader.name') }}</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catBackhoeLoader.standardDimensions') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catBackhoeLoader.dimensions') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catBackhoeLoader.withStandardBucket') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catBackhoeLoader.availability') }}</span>
                </div>
              </div>
            </div>
          </div>

          <!-- Equipment 3: Pelle Hydraulique CAT -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/PELLE HYDRAULIQUE CAT.png" alt="PELLE HYDRAULIQUE CAT" />
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.catHydraulicExcavator.name') }}</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catHydraulicExcavator.enginePower') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catHydraulicExcavator.power') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catHydraulicExcavator.bucketCapacity') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catHydraulicExcavator.capacity') }}</span>
                </div>
              </div>

            </div>
          </div>

          <!-- Equipment 4: Chargeuse CAT -->
          <div class="equipment-card">
             <div class="equipment-image-wrapper">
            <img src="../assets/images/vehicles/CHARGEUSE CAT.jfif" alt="CHARGEUSE CAT" />
        </div>


 <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.catLoader.name') }}</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catLoader.bucketCapacity') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catLoader.capacity') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catLoader.operatingWeight') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catLoader.weight') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.catLoader.enginePower') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.catLoader.power') }}</span>
                </div>
              </div>
            </div>
          </div>
            
             <!-- Equipment 5: Manitou -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/MANITOU.jpg" alt="Manitou" />
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.manitou.name') }}</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.manitou.arrowTo') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.manitou.arrow') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.manitou.liftingCapacity') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.manitou.capacity') }}</span>
                </div>
              </div>

           
            </div>
          </div>

          <!-- Equipment 6: Bulldozer CAT -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/BULLDOZER CAT.jpg" alt="Bulldozer CAT" />
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.bulldozerCat.name') }}</h3>
              
              <div class="specs-grid">
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.bulldozerCat.enginePower') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.bulldozerCat.power') }}</span>
                </div>
                <div class="spec-item">
                  <span class="spec-label">{{ $t('heavyVehicleRental.vehicles.bulldozerCat.engineDisplacement') }}</span>
                  <span class="spec-value">{{ $t('heavyVehicleRental.vehicles.bulldozerCat.displacement') }}</span>
                </div>
              </div>
            </div>
          </div>

           <!-- Equipment 7: ADT ARTICULER -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/ADT ARTICULER.png" height="!100px" alt="ADT ARTICULER"  />
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.adtArticuler.name') }}</h3>
             
            </div>
          </div>

           <!-- Equipment 8: CAMION BENE -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/CAMION BENE.png" alt="CAMION BENNE" />
            </div>
            
            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.camionBenne.name') }}</h3>
             
            </div>
          </div>

          <!-- Equipment 9: CAMION CITERNE À EAU -->
          <div class="equipment-card ">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/CAMION CITERNE A EAU.png" alt="CAMION CITERNE À EAU" />
            </div>
            
            <div class="equipment-content mb-4">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.camionCiterneAeau.name') }}</h3>
             
            </div>
          </div>

           <!-- Equipment 10: CAMION CITERNE À CARBURANT-->
          <div class="equipment-card">
            <div class="equipment-image-wrapper ">
              <img src="../assets/images/vehicles/CAMION CITERNE A CARBURANT.png" alt="CAMION CITERNE À CARBURANT" />
            </div>
            
            <div class="equipment-content ">
              <h3 class="equipment-title ">{{ $t('heavyVehicleRental.vehicles.camionCiterneAcarburant.name') }}</h3>
             
            </div>
          </div>
          <!-- Equipment 10: BETONNIERE -->
          <div class="equipment-card">
            <div class="equipment-image-wrapper">
              <img src="../assets/images/vehicles/BETONNIERE.png" alt="BETONNIERE" />
            </div>

            <div class="equipment-content">
              <h3 class="equipment-title">{{ $t('heavyVehicleRental.vehicles.betonniere.name') }}</h3>

            </div>
          </div>

          </div>

        </div>
      
    </section>

    <!-- Why Choose Our Equipment -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
         {{ $t('heavyVehicleRental.whyRentOurHeavyEquipment') }}
        </h2>
        
        <div class="grid md:grid-cols-4 gap-6 max-w-6xl mx-auto">
          <div class="benefit-card">
            <div class="benefit-icon bg-yellow-100">
              <svg class="icon-svg text-yellow-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z" />
              </svg>
            </div>
            <h3 class="benefit-title">{{ $t('heavyVehicleRental.catEquipment') }}</h3>
            <p class="benefit-description">{{ $t('heavyVehicleRental.topQualityCaterpillarMachines') }}</p>
          </div>

          <div class="benefit-card">
            <div class="benefit-icon bg-green-100">
              <svg class="icon-svg text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
              </svg>
            </div>
            <h3 class="benefit-title">{{ $t('heavyVehicleRental.maintenance') }}</h3>
            <p class="benefit-description">{{ $t('heavyVehicleRental.regularMaintenanceAndRigorousChecks') }}</p>
          </div>

          <div class="benefit-card">
            <div class="benefit-icon bg-blue-100">
              <svg class="icon-svg text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z" />
              </svg>
            </div>
            <h3 class="benefit-title">{{ $t('heavyVehicleRental.operators') }}</h3>
            <p class="benefit-description">{{ $t('heavyVehicleRental.qualifiedPersonnelAvailableOnRequest') }}</p>
          </div>

          <div class="benefit-card">
            <div class="benefit-icon bg-red-100">
              <svg class="icon-svg text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
              </svg>
            </div>
            <h3 class="benefit-title">{{ $t('heavyVehicleRental.fastDelivery') }}</h3>
            <p class="benefit-description">{{ $t('heavyVehicleRental.transportationAndInstallationOnSite') }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-gradient-to-r from-gms-red to-red-700 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          {{ $t('heavyVehicleRental.readyToRentOurHeavyEquipment') }}
        </h2>
        <p class="text-xl mb-8 text-red-100 max-w-2xl mx-auto">
          {{ $t('heavyVehicleRental.contactOurExpertsToDiscussYourSpecificNeedsAndObtainADetailedQuote') }}
        </p>
        <router-link 
          to="/contact" 
          class="inline-block bg-white text-gms-red px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition shadow-lg"
        >
          {{ $t('heavyVehicleRental.getAQuote') }}
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
// No script needed for now
</script>

<style scoped>
.equipment-card {
  background-color: white;
  border-radius: 1rem;
  overflow: hidden;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
  border: 2px solid #e5e7eb;
}

.equipment-card:hover {
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
  transform: translateY(-4px);
  border-color: #dc2626;
}

.equipment-image-wrapper {
  width: 100%;
  height: 250px;
  /* background: linear-gradient(135deg, #fef2f2 0%, #fee2e2 100%); */
  display: flex;
  align-items: center;
  justify-content: center;
  /* border-bottom: 3px solid #dc2626; */
}

.equipment-image-placeholder {
  text-align: center;
}

.placeholder-icon {
  width: 80px;
  height: 80px;
  color: #9ca3af;
  margin: 0 auto;
}

.equipment-content {
  padding: 2rem;
}

.equipment-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #dc2626;
  margin-bottom: 1.5rem;
  text-align: center;
  padding-bottom: 1rem;
  border-bottom: 2px solid #e5e7eb;
}

.specs-grid {
  display: grid;
  gap: 1rem;
  margin-bottom: 1.5rem;
}

.spec-item {
  background-color: #f9fafb;
  padding: 0.75rem 1rem;
  border-radius: 0.5rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-left: 3px solid #dc2626;
}

.spec-label {
  font-weight: 600;
  color: #374151;
  font-size: 0.875rem;
}

.spec-value {
  font-weight: 700;
  color: #dc2626;
  font-size: 0.875rem;
}

.contact-btn {
  width: 100%;
  background-color: #1e5ba8;
  color: white;
  padding: 0.875rem 1.5rem;
  border-radius: 0.5rem;
  font-weight: 600;
  border: none;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
  font-size: 1rem;
}

.contact-btn:hover {
  background-color: #1a4d8f;
  transform: translateY(-2px);
  box-shadow: 0 4px 6px -1px rgba(30, 91, 168, 0.3);
}

.benefit-card {
  text-align: center;
  padding: 1.5rem;
}

.benefit-icon {
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1rem;
}

.icon-svg {
  width: 2rem;
  height: 2rem;
}

.benefit-title {
  font-size: 1.125rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 0.5rem;
}

.benefit-description {
  color: #6b7280;
  font-size: 0.875rem;
}

.application-card {
  background-color: white;
  padding: 2rem;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  border-left: 4px solid #1e5ba8;
}

.application-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #1e5ba8;
  margin-bottom: 1rem;
}

.application-list {
  list-style: none;
  padding: 0;
}

.application-list li {
  padding: 0.5rem 0;
  color: #4b5563;
  border-bottom: 1px solid #e5e7eb;
}

.application-list li:last-child {
  border-bottom: none;
}

.application-list li:before {
  content: "✓ ";
  color: #1e5ba8;
  font-weight: bold;
  margin-right: 0.5rem;
}
</style>