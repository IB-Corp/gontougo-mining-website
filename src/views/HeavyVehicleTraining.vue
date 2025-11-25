<template>
  <div class="heavy-vehicle-training-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gray-800 to-gray-600 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
          Formation Conduite d'Engins Lourds
        </h1>
        <p class="text-xl text-center text-gray-300 max-w-2xl mx-auto">
          Formation professionnelle pour la conduite d'engins de chantier et équipements lourds
        </p>
      </div>
    </section>

    <!-- Introduction Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto text-center">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
            Devenez Conducteur d'Engins Certifié
          </h2>
          <p class="text-lg text-gray-700 leading-relaxed">
            GMS SARL propose des formations complètes pour la conduite d'engins lourds. 
            Nos formateurs expérimentés vous accompagnent dans l'apprentissage pratique et 
            théorique pour maîtriser les différents types d'équipements utilisés sur les 
            chantiers miniers et de construction.
          </p>
        </div>
      </div>
    </section>

    <!-- Training Vehicles Section -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
          <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
            Nos Formations par Engin
          </h2>

        <!-- Vehicle 1: COMPACTEUR CAT -->
        <div class="training-item">
          <div class="training-image-wrapper">
              <img src="../assets/images/vehicles/COMPACTEUR CAT1.jpg" alt="Image Formation Compacteur" >
            <!-- </div> -->
          </div>
          <div class="training-content">
            <h3 class="training-title">COMPACTEUR CAT</h3>
            <p class="training-description">
              Formation complète sur la conduite du compacteur Caterpillar. Apprenez les techniques 
              de compactage, les règles de sécurité, et la maintenance de base. Formation pratique 
              sur chantier réel avec accompagnement personnalisé.
            </p>

            <ul class="training-features">
              <li>Durée: 2 semaines</li>
              <li>Pratique sur chantier réel</li>
              <li>Certificat de formation</li>
            </ul>
          </div>
        </div>

        <!-- Vehicle 2: TRACTOPELLE CAT -->
        <div class="training-item">
          <div class="training-image-wrapper">
              <img src="../assets/images/vehicles/TRACTOPELLE CAT.jpg" alt="Image Formation Tractopelle" >
          </div>
          <div class="training-content">
            <h3 class="training-title">TRACTOPELLE CAT</h3>
            <p class="training-description">
              Maîtrisez la conduite de la tractopelle Caterpillar, un engin polyvalent essentiel 
              sur tous les chantiers. Formation théorique et pratique incluant le chargement, 
              l'excavation, et les manœuvres en espace restreint.
            </p>
            <ul class="training-features">
              <li>Durée: 3 semaines</li>
              <li>Double fonction pelle et chargeur</li>
              <li>Exercices pratiques variés</li>
            </ul>
          </div>
        </div>

        <!-- Vehicle 3: PELLE HYDRAULIQUE CAT -->
        <div class="training-item">
          <div class="training-image-wrapper">
            <img src="../assets/images/vehicles/PELLE HYDRAULIQUE CAT.png" alt="Image Formation Pelle Hydraulique" />
          </div>
          <div class="training-content">
            <h3 class="training-title">PELLE HYDRAULIQUE CAT</h3>
            <p class="training-description">
              Formation spécialisée pour la conduite de pelle hydraulique. Techniques d'excavation, 
              terrassement, chargement de camions, et manipulation précise. Cours adaptés aux 
              débutants et conducteurs expérimentés souhaitant se perfectionner.
            </p>
            <ul class="training-features">
              <li>Durée: 3 semaines</li>
              <li>Techniques d'excavation avancées</li>
              <li>Formation sur différents modèles</li>
            </ul>
          </div>
        </div>

        <!-- Vehicle 5: MANITOU -->
        <div class="training-item">
          <div class="training-image-wrapper">
            <img src="../assets/images/vehicles/MANITOU.jpg" alt="Image Formation Manitou" />
          </div>
          <div class="training-content">
            <h3 class="training-title">MANITOU</h3>
            <p class="training-description">
              Formation sur chariot télescopique Manitou. Manipulation de charges en hauteur, 
              stabilité de l'engin, et respect des consignes de sécurité. Formation adaptée 
              aux besoins des chantiers de construction et sites industriels.
            </p>
            <ul class="training-features">
              <li>Durée: 2 semaines</li>
              <li>Manipulation en hauteur</li>
              <li>Règles de sécurité renforcées</li>
            </ul>
          </div>
        </div>

        <!-- Vehicle 6: BULLDOZER CAT -->
        <div class="training-item">
          <div class="training-image-wrapper">
          <img src="../assets/images/vehicles/BULLDOZER CAT.jpg" alt="Image Formation Bulldozer" />
          </div>
          <div class="training-content">
            <h3 class="training-title">BULLDOZER CAT</h3>
            <p class="training-description">
              Formation complète sur bulldozer Caterpillar. Techniques de terrassement, nivellement, 
              poussage de matériaux, et travaux de grande envergure. Formation pratique sur terrain 
              varié pour développer votre expertise.
            </p>
            <ul class="training-features">
              <li>Durée: 3 semaines</li>
              <li>Terrassement et nivellement</li>
              <li>Travaux de grande ampleur</li>
            </ul>
          </div>
        </div>

      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-gradient-to-r from-gray-800 to-gray-600 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          Prêt à Commencer Votre Formation?
        </h2>
        <p class="text-xl mb-8 text-gray-300 max-w-2xl mx-auto">
          Inscrivez-vous dès maintenant et lancez votre carrière de conducteur d'engins professionnels
        </p>
        <router-link 
          to="/contact" 
          class="inline-block bg-gms-blue text-white px-8 py-4 rounded-lg font-semibold hover:bg-blue-700 transition shadow-lg"
        >
          Nous Contacter
        </router-link>
      </div>
    </section>
  </div>
</template>

<script setup>
// No script needed for now
</script>

<style scoped>
.training-item {
  display: grid;
  grid-template-columns: 1fr;
  gap: 2rem;
  margin-bottom: 3rem;
  background-color: white;
  border-radius: 1rem;
  overflow: hidden;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  padding: 2rem;
}

@media (min-width: 640px) {
  .training-item {
    grid-template-columns: 1fr 1fr;
  }
}

@media (min-width: 768px) {
  .training-item {
    grid-template-columns: 1fr;
  }
}

.training-image-wrapper {
  width: 100%;
}
.training-image-wrapper img {
  width: 100%;
  height: auto;
  border-radius: 0.5rem;
  object-fit: cover;
}

.training-image-placeholder {
  width: 100%;
  height: 300px;
  background: linear-gradient(135deg, #f3f4f6 0%, #e5e7eb 100%);
  border-radius: 0.5rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.placeholder-icon {
  width: 80px;
  height: 80px;
  color: #9ca3af;
  margin-bottom: 1rem;
}

.placeholder-text {
  color: #6b7280;
  font-size: 0.875rem;
  font-weight: 500;
}

.training-content {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.training-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #1e5ba8;
  margin-bottom: 1rem;
}

.training-description {
  color: #4b5563;
  line-height: 1.7;
  margin-bottom: 1.5rem;
  font-size: 0.938rem;
}

.training-features {
  list-style: none;
  padding: 0;
}

.training-features li {
  padding: 0.5rem 0;
  color: #6b7280;
  font-size: 0.875rem;
}

.training-features li:before {
  content: "✓ ";
  color: #1e5ba8;
  font-weight: bold;
  margin-right: 0.5rem;
}
</style>