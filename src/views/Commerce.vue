<template>
  <div class="commerce-page">
    <!-- Page Header -->
    <section class="page-header bg-gradient-to-r from-gms-red to-red-700 text-white py-16">
      <div class="container mx-auto px-4">
        <h1 class="text-4xl md:text-5xl font-bold text-center mb-4">
          Placement de Personnel - Consommable Bureautique
        </h1>
        <p class="text-xl text-center text-red-100 max-w-2xl mx-auto">
          Fournitures de bureau, équipements informatiques et solutions de placement de personnel
        </p>
      </div>
    </section>

    <!-- Introduction Section -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <div class="max-w-4xl mx-auto text-center">
          <h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
            Commerce Général & Services
          </h2>
          <p class="text-lg text-gray-700 leading-relaxed mb-6">
            GMS propose une gamme complète de fournitures et d'équipements pour vos bureaux et sites industriels. 
            De l'informatique aux consommables bureautiques, en passant par les services de placement de personnel, 
            nous répondons à tous vos besoins professionnels.
          </p>
          <p class="text-lg text-gray-700 leading-relaxed">
            Notre expertise en logistique et transport nous permet de livrer rapidement vos commandes 
            partout en Côte d'Ivoire.
          </p>
        </div>
      </div>
    </section>

    <!-- Main Categories Section -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Nos Catégories de Produits
        </h2>
        
        <div class="grid md:grid-cols-3 gap-8 max-w-6xl mx-auto">
          
          <!-- Category 1: Office Supplies -->
          <div class="category-card">
            <div class="category-icon-wrapper bg-blue-100">
              <svg class="category-icon-svg text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
              </svg>
            </div>
            <h3 class="category-title">Consommables Bureautiques</h3>
            <ul class="category-list">
              <li>Papier A4, A3</li>
              <li>Cartouches d'encre</li>
              <li>Toners pour imprimantes</li>
              <li>Stylos et marqueurs</li>
              <li>Classeurs et archives</li>
              <li>Fournitures diverses</li>
            </ul>
            <button class="category-btn">
              Voir les Produits
            </button>
          </div>

          <!-- Category 2: IT Equipment -->
          <div class="category-card">
            <div class="category-icon-wrapper bg-red-100">
              <svg class="category-icon-svg text-red-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
            </div>
            <h3 class="category-title">Équipements Informatiques</h3>
            <ul class="category-list">
              <li>Ordinateurs de bureau</li>
              <li>Ordinateurs portables</li>
              <li>Imprimantes multifonctions</li>
              <li>Scanners</li>
              <li>Accessoires informatiques</li>
              <li>Logiciels et antivirus</li>
            </ul>
            <button class="category-btn">
              Voir les Produits
            </button>
          </div>

          <!-- Category 3: Personnel Placement -->
          <div class="category-card">
            <div class="category-icon-wrapper bg-green-100">
              <svg class="category-icon-svg text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z" />
              </svg>
            </div>
            <h3 class="category-title">Placement de Personnel</h3>
            <ul class="category-list">
              <li>Personnel qualifié</li>
              <li>Opérateurs d'engins</li>
              <li>Techniciens spécialisés</li>
              <li>Personnel administratif</li>
              <li>Main d'œuvre temporaire</li>
              <li>Recrutement sur mesure</li>
            </ul>
            <button class="category-btn">
              Nous Contacter
            </button>
          </div>

        </div>
      </div>
    </section>

    <!-- IT & Office Equipment Grid -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Équipements Bureautiques & Informatiques
        </h2>
        
        <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6 max-w-6xl mx-auto">
          
          <!-- Product 1 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
            </div>
            <h4 class="product-name">Ordinateurs</h4>
          </div>

          <!-- Product 2 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 18h.01M8 21h8a2 2 0 002-2V5a2 2 0 00-2-2H8a2 2 0 00-2 2v14a2 2 0 002 2z" />
              </svg>
            </div>
            <h4 class="product-name">Tablettes</h4>
          </div>

          <!-- Product 3 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 17h2a2 2 0 002-2v-4a2 2 0 00-2-2H5a2 2 0 00-2 2v4a2 2 0 002 2h2m2 4h6a2 2 0 002-2v-4a2 2 0 00-2-2H9a2 2 0 00-2 2v4a2 2 0 002 2zm8-12V5a2 2 0 00-2-2H9a2 2 0 00-2 2v4h10z" />
              </svg>
            </div>
            <h4 class="product-name">Imprimantes</h4>
          </div>

          <!-- Product 4 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01" />
              </svg>
            </div>
            <h4 class="product-name">Accessoires</h4>
          </div>

          <!-- Product 5 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 8h14M5 8a2 2 0 110-4h14a2 2 0 110 4M5 8v10a2 2 0 002 2h10a2 2 0 002-2V8m-9 4h4" />
              </svg>
            </div>
            <h4 class="product-name">Stockage</h4>
          </div>

          <!-- Product 6 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 3v2m6-2v2M9 19v2m6-2v2M5 9H3m2 6H3m18-6h-2m2 6h-2M7 19h10a2 2 0 002-2V7a2 2 0 00-2-2H7a2 2 0 00-2 2v10a2 2 0 002 2zM9 9h6v6H9V9z" />
              </svg>
            </div>
            <h4 class="product-name">Réseau</h4>
          </div>

          <!-- Product 7 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z" />
              </svg>
            </div>
            <h4 class="product-name">Antivirus</h4>
          </div>

          <!-- Product 8 -->
          <div class="product-item">
            <div class="product-icon-wrapper">
              <svg class="product-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10" />
              </svg>
            </div>
            <h4 class="product-name">Cartouches</h4>
          </div>

        </div>
      </div>
    </section>

    <!-- Logistics & Transport Services -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
        <div class="max-w-5xl mx-auto">
          <div class="logistics-banner">
            <div class="logistics-content">
              <div class="logistics-icon-wrapper">
                <svg class="logistics-icon" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path d="M9 17a2 2 0 11-4 0 2 2 0 014 0zM19 17a2 2 0 11-4 0 2 2 0 014 0z" />
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 16V6a1 1 0 00-1-1H4a1 1 0 00-1 1v10a1 1 0 001 1h1m8-1a1 1 0 01-1 1H9m4-1V8a1 1 0 011-1h2.586a1 1 0 01.707.293l3.414 3.414a1 1 0 01.293.707V16a1 1 0 01-1 1h-1m-6-1a1 1 0 001 1h1M5 17a2 2 0 104 0m-4 0a2 2 0 114 0m6 0a2 2 0 104 0m-4 0a2 2 0 114 0" />
                </svg>
              </div>
              <div>
                <h2 class="logistics-title">Transport et Logistique</h2>
                <p class="logistics-description">
                  Service de livraison rapide et fiable pour tous vos équipements et fournitures. 
                  Nous assurons le transport de marchandises sur l'ensemble du territoire ivoirien 
                  avec notre flotte de véhicules adaptés.
                </p>
                <ul class="logistics-features">
                  <li>Livraison express disponible</li>
                  <li>Suivi en temps réel</li>
                  <li>Emballage sécurisé</li>
                  <li>Assurance marchandises</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Personnel Services -->
    <section class="py-16 bg-white">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Services de Placement de Personnel
        </h2>
        
        <div class="grid md:grid-cols-2 gap-8 max-w-5xl mx-auto">
          
          <div class="personnel-card">
            <div class="personnel-icon bg-gms-blue">
              <svg class="personnel-icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2 2v2m4 6h.01M5 20h14a2 2 0 002-2V8a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
              </svg>
            </div>
            <h3 class="personnel-title">Personnel Technique</h3>
            <p class="personnel-description">
              Mise à disposition d'opérateurs qualifiés pour engins miniers, techniciens de maintenance, 
              soudeurs, électriciens et autres profils techniques spécialisés.
            </p>
          </div>

          <div class="personnel-card">
            <div class="personnel-icon bg-gms-red">
              <svg class="personnel-icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z" />
              </svg>
            </div>
            <h3 class="personnel-title">Personnel Administratif</h3>
            <p class="personnel-description">
              Recrutement et placement de personnel administratif qualifié : secrétaires, comptables, 
              assistants de direction, agents d'accueil et personnel de support.
            </p>
          </div>

          <div class="personnel-card">
            <div class="personnel-icon bg-gms-blue">
              <svg class="personnel-icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12h6m-6 4h6m2 5H7a2 2 0 01-2-2V5a2 2 0 012-2h5.586a1 1 0 01.707.293l5.414 5.414a1 1 0 01.293.707V19a2 2 0 01-2 2z" />
              </svg>
            </div>
            <h3 class="personnel-title">Missions Temporaires</h3>
            <p class="personnel-description">
              Solutions flexibles pour vos besoins en personnel temporaire : remplacement, renfort d'équipe, 
              projets ponctuels avec personnel qualifié et disponible rapidement.
            </p>
          </div>

          <div class="personnel-card">
            <div class="personnel-icon bg-gms-red">
              <svg class="personnel-icon-svg" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-6 9l2 2 4-4" />
              </svg>
            </div>
            <h3 class="personnel-title">Recrutement Sur Mesure</h3>
            <p class="personnel-description">
              Service de recrutement personnalisé selon vos critères spécifiques. Nous identifions, 
              sélectionnons et formons le personnel adapté à vos besoins.
            </p>
          </div>

        </div>
      </div>
    </section>

    <!-- Advantages Section -->
    <section class="py-16 bg-gray-50">
      <div class="container mx-auto px-4">
        <h2 class="text-3xl md:text-4xl font-bold text-center text-gray-900 mb-12">
          Pourquoi Choisir GMS?
        </h2>
        
        <div class="grid md:grid-cols-3 gap-8 max-w-5xl mx-auto">
          <div class="advantage-item">
            <div class="advantage-number">01</div>
            <h3 class="advantage-item-title">Stock Disponible</h3>
            <p class="advantage-item-description">
              Large gamme de produits en stock pour livraison immédiate
            </p>
          </div>

          <div class="advantage-item">
            <div class="advantage-number">02</div>
            <h3 class="advantage-item-title">Prix Compétitifs</h3>
            <p class="advantage-item-description">
              Tarifs attractifs grâce à nos partenariats avec les meilleurs fournisseurs
            </p>
          </div>

          <div class="advantage-item">
            <div class="advantage-number">03</div>
            <h3 class="advantage-item-title">Service Client</h3>
            <p class="advantage-item-description">
              Équipe dédiée pour vous accompagner dans vos choix et commandes
            </p>
          </div>

          <div class="advantage-item">
            <div class="advantage-number">04</div>
            <h3 class="advantage-item-title">Livraison Rapide</h3>
            <p class="advantage-item-description">
              Service de livraison fiable sur toute la Côte d'Ivoire
            </p>
          </div>

          <div class="advantage-item">
            <div class="advantage-number">05</div>
            <h3 class="advantage-item-title">Garantie Qualité</h3>
            <p class="advantage-item-description">
              Produits de marques reconnues avec garantie constructeur
            </p>
          </div>

          <div class="advantage-item">
            <div class="advantage-number">06</div>
            <h3 class="advantage-item-title">Paiement Flexible</h3>
            <p class="advantage-item-description">
              Options de paiement adaptées pour les entreprises
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-gradient-to-r from-gms-red to-red-700 text-white">
      <div class="container mx-auto px-4 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-6">
          Besoin de Fournitures ou de Personnel?
        </h2>
        <p class="text-xl mb-8 text-red-100 max-w-2xl mx-auto">
          Contactez-nous pour obtenir un devis personnalisé ou discuter de vos besoins en personnel qualifié.
        </p>
        <div class="flex flex-col sm:flex-row gap-4 justify-center">
          <router-link 
            to="/contact" 
            class="inline-block bg-white text-gms-red px-8 py-4 rounded-lg font-semibold hover:bg-gray-100 transition shadow-lg"
          >
            Demander un Devis
          </router-link>
          <a 
            href="tel:+2250788884940"
            class="inline-block bg-gms-blue text-white px-8 py-4 rounded-lg font-semibold hover:bg-blue-700 transition shadow-lg"
          >
            Appeler Maintenant
          </a>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
// No script needed for now
</script>

<style scoped>
.category-card {
  background-color: white;
  padding: 2rem;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
  text-align: center;
  border: 2px solid #e5e7eb;
  display: flex;
  flex-direction: column;
  height: 100%;
}

.category-card:hover {
  box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
  transform: translateY(-4px);
  border-color: #1e5ba8;
}

.category-icon-wrapper {
  width: 5rem;
  height: 5rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1.5rem;
}

.category-icon-svg {
  width: 2.5rem;
  height: 2.5rem;
}

.category-title {
  font-size: 1.5rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 1.5rem;
}

.category-list {
  list-style: none;
  padding: 0;
  margin-bottom: 2rem;
  text-align: left;
  flex-grow: 1;
}

.category-list li {
  padding: 0.5rem 0;
  color: #6b7280;
  font-size: 0.875rem;
  border-bottom: 1px solid #f3f4f6;
}

.category-list li:before {
  content: "✓ ";
  color: #1e5ba8;
  font-weight: bold;
  margin-right: 0.5rem;
}

.category-btn {
  width: 100%;
  background-color: #1e5ba8;
  color: white;
  padding: 0.875rem 1.5rem;
  border-radius: 0.5rem;
  font-weight: 600;
  border: none;
  cursor: pointer;
  transition: all 0.3s ease-in-out;
}

.category-btn:hover {
  background-color: #1a4d8f;
  transform: translateY(-2px);
}

.product-item {
  background-color: #f9fafb;
  padding: 1.5rem;
  border-radius: 0.75rem;
  text-align: center;
  transition: all 0.3s ease-in-out;
  border: 2px solid #e5e7eb;
  cursor: pointer;
}

.product-item:hover {
  background-color: white;
  box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
  transform: translateY(-4px);
  border-color: #1e5ba8;
}

.product-icon-wrapper {
  width: 4rem;
  height: 4rem;
  background: linear-gradient(135deg, #1e5ba8 0%, #3b82f6 100%);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 1rem;
}

.product-icon {
  width: 2rem;
  height: 2rem;
  color: white;
}

.product-name {
  font-size: 0.875rem;
  font-weight: 600;
  color: #374151;
}

.logistics-banner {
  background: linear-gradient(135deg, #1e5ba8 0%, #3b82f6 100%);
  border-radius: 1rem;
  padding: 3rem;
  color: white;
  box-shadow: 0 10px 30px rgba(30, 91, 168, 0.3);
}

.logistics-content {
  display: flex;
  gap: 2rem;
  align-items: flex-start;
}

.logistics-icon-wrapper {
  flex-shrink: 0;
}

.logistics-icon {
  width: 5rem;
  height: 5rem;
  color: white;
  opacity: 0.9;
}

.logistics-title {
  font-size: 2rem;
  font-weight: 700;
  margin-bottom: 1rem;
}

.logistics-description {
  font-size: 1.125rem;
  line-height: 1.6;
  margin-bottom: 1.5rem;
  opacity: 0.95;
}

.logistics-features {
  list-style: none;
  padding: 0;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 0.75rem;
}

.logistics-features li {
  font-size: 0.875rem;
}

.logistics-features li:before {
  content: "✓ ";
  font-weight: bold;
  margin-right: 0.5rem;
}

@media (max-width: 768px) {
  .logistics-content {
    flex-direction: column;
  }
  
  .logistics-features {
    grid-template-columns: 1fr;
  }
}

.personnel-card {
  background-color: white;
  padding: 2rem;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease-in-out;
  border: 1px solid #e5e7eb;
}

.personnel-card:hover {
  box-shadow: 0 12px 24px -5px rgba(0, 0, 0, 0.15);
  transform: translateY(-4px);
}

.personnel-icon {
  width: 4rem;
  height: 4rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: 1.5rem;
}

.personnel-icon-svg {
  width: 2rem;
  height: 2rem;
  color: white;
}

.personnel-title {
  font-size: 1.25rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 1rem;
}

.personnel-description {
  color: #6b7280;
  line-height: 1.6;
  font-size: 0.875rem;
}

.advantage-item {
  text-align: center;
}

.advantage-number {
  font-size: 3rem;
  font-weight: 700;
  color: #1e5ba8;
  opacity: 0.2;
  margin-bottom: 1rem;
  line-height: 1;
}

.advantage-item-title {
  font-size: 1.25rem;
  font-weight: 700;
  color: #111827;
  margin-bottom: 0.75rem;
}

.advantage-item-description {
  color: #6b7280;
  font-size: 0.875rem;
  line-height: 1.6;
}
</style>