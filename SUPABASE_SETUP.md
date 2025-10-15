# Supabase Setup Instructions for GMS Website

## 🚀 Quick Start

### 1. Create Supabase Account
1. Go to [supabase.com](https://supabase.com)
2. Sign up for a free account
3. Create a new project called "gms-website"

### 2. Set up Database
1. In your Supabase dashboard, go to the **SQL Editor**
2. Copy and paste the entire content of `database/schema.sql`
3. Click **Run** to create all tables and sample data

### 3. Get Your Credentials
1. In Supabase dashboard, go to **Settings** → **API**
2. Copy the **Project URL** and **anon public** key
3. Update your `.env` file:

```env
VITE_SUPABASE_URL=https://your-project-id.supabase.co
VITE_SUPABASE_ANON_KEY=your-anon-key-here
```

### 4. Test the Connection
1. Start your dev server: `pnpm run dev`
2. Open your website - you should see dynamic services loaded from Supabase
3. Check the browser console for any connection errors

## 📊 Database Structure

### Services Table
- **id**: Primary key
- **name**: Service name (e.g., "Location d'Engins Miniers")  
- **description**: Detailed description
- **category**: mining, training, transport, construction, plumbing, commerce
- **features**: Array of key features
- **price_range**: Optional pricing info
- **active**: Whether to display the service

### Vehicles Table
- **id**: Primary key
- **name**: Vehicle/equipment name
- **description**: Detailed description
- **image_url**: Photo URL (use Supabase Storage)
- **daily_rate**: Daily rental rate in CFA
- **category**: bulldozer, excavator, truck, compactor, etc.
- **specifications**: JSON object with technical specs
- **available**: Whether available for rent

### Team Members Table
- **id**: Primary key
- **name**: Full name
- **position**: Job title
- **bio**: Short biography
- **photo_url**: Profile photo URL
- **email**: Contact email
- **phone**: Phone number
- **active**: Whether to display on website

### Projects Table
- **id**: Primary key
- **title**: Project name
- **description**: Project details
- **images**: Array of image URLs
- **client**: Client company name
- **completion_date**: When project was completed
- **category**: mining, construction, training, etc.
- **featured**: Whether to highlight on homepage

## 🖼️ Adding Images

### Using Supabase Storage
1. Go to **Storage** in Supabase dashboard
2. Create a bucket called "gms-images"
3. Set it to **public** for website images
4. Upload your images (vehicles, team photos, project images)
5. Use the public URLs in your database records

### Image URL Format
```
https://your-project-id.supabase.co/storage/v1/object/public/gms-images/vehicle-bulldozer-cat-d6t.jpg
```

## 🔧 Adding New Content

### Adding a New Service
```sql
INSERT INTO services (name, description, category, features) VALUES (
  'Nouveau Service',
  'Description détaillée du service',
  'mining',
  ARRAY['Caractéristique 1', 'Caractéristique 2']
);
```

### Adding a New Vehicle
```sql
INSERT INTO vehicles (name, description, category, daily_rate, image_url, specifications) VALUES (
  'Nouvelle Machine',
  'Description de la machine',
  'excavator', 
  500000,
  'https://your-project-id.supabase.co/storage/v1/object/public/gms-images/machine.jpg',
  '{"puissance": "200 HP", "poids": "15 tonnes"}'::jsonb
);
```

## 🌍 Deployment to Cloudflare Pages

1. Your `.env` file won't be deployed to Cloudflare
2. In Cloudflare Pages dashboard, go to **Settings** → **Environment Variables**
3. Add your Supabase credentials:
   - `VITE_SUPABASE_URL`: Your project URL
   - `VITE_SUPABASE_ANON_KEY`: Your anon key

## 🛠️ Development Tips

### Testing API Calls
Check browser console for Supabase connection logs:
```javascript
console.log('Services loaded:', services.value)
console.log('Loading state:', servicesLoading.value)
console.log('Error state:', servicesError.value)
```

### Adding Real-time Updates
Supabase supports real-time subscriptions:
```javascript
// In your composable
supabase
  .channel('services')
  .on('postgres_changes', 
    { event: '*', schema: 'public', table: 'services' },
    payload => {
      console.log('Change received!', payload)
      fetchServices() // Refresh data
    }
  )
  .subscribe()
```

## 🎯 Next Steps

1. ✅ Set up Supabase account and database
2. ✅ Update environment variables  
3. ✅ Test the dynamic services on homepage
4. 📝 Add your real company data
5. 🖼️ Upload vehicle and team photos
6. 🚀 Deploy to Cloudflare Pages

## 📞 Need Help?

If you encounter any issues:
1. Check the browser console for error messages
2. Verify your Supabase credentials in `.env`
3. Make sure Row Level Security policies allow public read access
4. Test API calls in Supabase dashboard API docs