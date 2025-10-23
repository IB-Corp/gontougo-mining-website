import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Read the translations.json file
const translationsPath = path.join(__dirname, '../src/langs/translations.json');
const translationsData = JSON.parse(fs.readFileSync(translationsPath, 'utf-8'));

// Create structured translation objects
const frenchTranslations = {};
const englishTranslations = {};

// Helper function to create a safe key from text
function createKey(text, tag) {
  // Remove special characters and convert to camelCase
  let key = text
    .toLowerCase()
    .replace(/[éèêë]/g, 'e')
    .replace(/[àâä]/g, 'a')
    .replace(/[îï]/g, 'i')
    .replace(/[ôö]/g, 'o')
    .replace(/[ùûü]/g, 'u')
    .replace(/ç/g, 'c')
    .replace(/[^a-z0-9\s]/g, '')
    .trim()
    .split(/\s+/)
    .map((word, index) => index === 0 ? word : word.charAt(0).toUpperCase() + word.slice(1))
    .join('');
  
  return key || 'unknown';
}

// Helper to determine category from route
function getCategoryFromRoute(route) {
  if (route.includes('about')) return 'about';
  if (route.includes('contact')) return 'contact';
  if (route.includes('commerce')) return 'commerce';
  if (route.includes('light-vehicle')) return 'lightVehicleRental';
  if (route.includes('heavy-vehicle-rental')) return 'heavyVehicleRental';
  if (route.includes('heavy-vehicle-training')) return 'heavyVehicleTraining';
  if (route.includes('dewatering')) return 'dewateringTraining';
  if (route.includes('plumbing')) return 'plumbing';
  if (route.includes('woodworking')) return 'woodworking';
  if (route.includes('metal-construction')) return 'metalConstruction';
  if (route.includes('drilling')) return 'drilling';
  if (route.includes('refrigeration')) return 'refrigeration';
  if (route === 'http://localhost:5173/' || route.includes('home')) return 'home';
  return 'common';
}

// Process all translations
let keyCounter = {};
Object.entries(translationsData).forEach(([route, translations]) => {
  const category = getCategoryFromRoute(route);
  
  if (!frenchTranslations[category]) {
    frenchTranslations[category] = {};
    englishTranslations[category] = {};
  }
  
  translations.forEach(item => {
    let baseKey = createKey(item.original, item.tag);
    
    // Handle duplicate keys
    if (frenchTranslations[category][baseKey]) {
      keyCounter[baseKey] = (keyCounter[baseKey] || 1) + 1;
      baseKey = `${baseKey}${keyCounter[baseKey]}`;
    }
    
    frenchTranslations[category][baseKey] = item.original;
    englishTranslations[category][baseKey] = item.translated;
  });
});

// Add navigation specifically
if (!frenchTranslations.nav) {
  frenchTranslations.nav = {
    home: 'Accueil',
    about: 'À Propos',
    services: 'Services',
    commerce: 'Commerce',
    contact: 'Contact',
    lightVehicles: 'Location de Véhicules Légers',
    heavyVehicles: 'Location de Véhicules Lourds',
    heavyTraining: 'Formation en conduite d\'engins lourds',
    dewateringTraining: 'Formation DEWATERING / NATATION',
    plumbing: 'Plomberie DEWATERING & Tuyauterie & Polyfusion',
    woodworking: 'Menuiserie',
    metalConstruction: 'Construction de Charpente Métallique',
    drilling: 'Forage et Travaux spécialisés',
    refrigeration: 'Froid et Climatisation'
  };
  
  englishTranslations.nav = {
    home: 'Home',
    about: 'About',
    services: 'Services',
    commerce: 'Commerce',
    contact: 'Contact',
    lightVehicles: 'Light Vehicle Rental',
    heavyVehicles: 'Heavy Vehicle Rental',
    heavyTraining: 'Heavy Equipment Driving Training',
    dewateringTraining: 'DEWATERING / SWIMMING Training',
    plumbing: 'Plumbing DEWATERING & Piping & Polyfusion',
    woodworking: 'Carpentry',
    metalConstruction: 'Metal Frame Construction',
    drilling: 'Drilling and Specialized Works',
    refrigeration: 'Refrigeration and Air Conditioning'
  };
}

// Generate french.js
const frenchContent = `export default ${JSON.stringify(frenchTranslations, null, 2)}
`;

// Generate english.js
const englishContent = `export default ${JSON.stringify(englishTranslations, null, 2)}
`;

// Write files
const frenchPath = path.join(__dirname, '../src/langs/french.js');
const englishPath = path.join(__dirname, '../src/langs/english.js');

fs.writeFileSync(frenchPath, frenchContent, 'utf-8');
fs.writeFileSync(englishPath, englishContent, 'utf-8');

console.log('✅ Translation files generated successfully!');
console.log(`📁 French: ${frenchPath}`);
console.log(`📁 English: ${englishPath}`);
console.log(`\n📊 Statistics:`);
console.log(`   Categories: ${Object.keys(frenchTranslations).length}`);
console.log(`   Total French keys: ${Object.values(frenchTranslations).reduce((acc, cat) => acc + Object.keys(cat).length, 0)}`);
console.log(`   Total English keys: ${Object.values(englishTranslations).reduce((acc, cat) => acc + Object.keys(cat).length, 0)}`);
