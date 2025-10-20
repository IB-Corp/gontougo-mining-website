# i18n Setup Guide - Bilingual Website (French/English)

## ✅ What's Been Set Up

### 1. **Vue I18n Integration**
- Installed `vue-i18n@11`
- Created i18n configuration in `src/langs/translate.js`
- Integrated with Vue app in `src/main.js`

### 2. **Translation Files**
- `src/langs/french.js` - French translations (source)
- `src/langs/english.js` - English translations (auto-generated)

### 3. **Auto-Translation Script**
- `scripts/auto-translate.js` - Uses LibreTranslate API for free AI translation
- Run with: `pnpm run translate`

### 4. **Language Switcher Component**
- `src/components/LanguageSwitcher.vue` - Toggle between FR/EN
- Already added to Navbar
- Saves preference to localStorage

## 🚀 How to Use

### Step 1: Run the Translation Script
```bash
pnpm run translate
```

This will:
- Read all French text from `french.js`
- Automatically translate to English using LibreTranslate
- Save to `english.js`
- Takes ~30 seconds (due to API rate limits)

### Step 2: Use Translations in Components

Instead of hardcoded text:
```vue
<h1>Bienvenue</h1>
```

Use translation keys:
```vue
<h1>{{ $t('home.motto') }}</h1>
```

### Step 3: Add More Translations

Edit `src/langs/french.js`:
```javascript
export default {
  home: {
    newKey: 'Nouveau texte en français'
  }
}
```

Then run: `pnpm run translate`

## 📝 Translation Key Examples

```vue
<!-- In your templates -->
<h1>{{ $t('nav.home') }}</h1>
<p>{{ $t('home.description') }}</p>
<button>{{ $t('common.save') }}</button>
```

## 🎨 Language Switcher

The language switcher is already in the Navbar. Users can:
- Click to toggle between French 🇫🇷 and English 🇬🇧
- Preference is saved automatically
- Page updates instantly

## 🔧 Advanced: Using Composition API

```vue
<script setup>
import { useI18n } from 'vue-i18n'

const { t, locale } = useI18n()

// Use in JavaScript
console.log(t('home.motto'))

// Change language programmatically
locale.value = 'en'
</script>
```

## 🌐 LibreTranslate Options

### Public API (Current Setup)
- Free, but rate-limited
- URL: `https://libretranslate.com`
- Good for small projects

### Alternative Free Instance
Edit `scripts/auto-translate.js` line 15:
```javascript
const LIBRETRANSLATE_API = 'https://translate.argosopentech.com/translate'
```

### Self-Hosted (Unlimited)
For production or large projects:
```bash
docker run -ti --rm -p 5000:5000 libretranslate/libretranslate
```

Then update the script:
```javascript
const LIBRETRANSLATE_API = 'http://localhost:5000/translate'
```

## 📋 Next Steps

1. **Run the translation script**: `pnpm run translate`
2. **Update your components** to use `$t()` instead of hardcoded text
3. **Review English translations** in `src/langs/english.js` and adjust if needed
4. **Test language switching** by clicking the switcher in the navbar

## 🔄 Workflow for Adding New Content

1. Write content in French in `french.js`
2. Run `pnpm run translate`
3. Review English translations
4. Use translation keys in components

## 💡 Pro Tips

- Keep translation keys organized by page/component
- Use descriptive key names: `home.heroTitle` not `text1`
- Review AI translations - they're 95% accurate but may need tweaking
- Add context comments in `french.js` for better translations

## 🐛 Troubleshooting

**Translation fails?**
- Check internet connection
- Try alternative LibreTranslate instance
- Manual translation fallback: edit `english.js` directly

**Rate limited?**
- Wait a few minutes
- Use self-hosted LibreTranslate
- Translate in smaller batches

**Translations not showing?**
- Clear browser cache
- Check console for errors
- Verify translation keys exist in both files
