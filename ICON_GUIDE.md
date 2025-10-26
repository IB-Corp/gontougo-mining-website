# Icon Guide - Using Image Files for Service Icons

## ✅ Updated to Use Image Files!

Your icons now use **image files** (PNG/SVG) instead of SVG paths. This gives you unlimited choices!

## Current Setup

Icons are stored in: `public/images/icons/`

The system looks for these files:
- `mining.png` (or .svg)
- `training.png`
- `transport.png`
- `construction.png`
- `plumbing.png`
- `woodworking.png`
- `commerce.png`
- `refrigeration.png`
- `drilling.png`
- `default.png` (fallback)

## How to Add/Change Icons

### Step 1: Find Icon Images

**Free Icon Websites:**

1. **Flaticon** (Best - Millions of icons!)
   - Website: https://www.flaticon.com/
   - Format: PNG, SVG
   - Free with attribution (or paid for no attribution)
   - Example searches: "excavator", "training", "truck"

2. **Icons8** (Great variety)
   - Website: https://icons8.com/
   - Format: PNG, SVG
   - Free with link (or paid)
   - Can customize colors before download

3. **Freepik** (Professional quality)
   - Website: https://www.freepik.com/
   - Format: PNG, SVG, AI
   - Free with attribution

4. **The Noun Project** (Simple, clean)
   - Website: https://thenounproject.com/
   - Format: SVG, PNG
   - Free with credit line

5. **IconFinder** (Huge collection)
   - Website: https://www.iconfinder.com/
   - Free and premium icons
   - Good filtering options

### Step 2: Download Icons

1. Search for your service (e.g., "excavator icon")
2. Download as **PNG (512x512 or higher)** or **SVG**
3. Choose icons with **transparent backgrounds**
4. Rename the file to match your category:
   - `mining.png`
   - `training.png`
   - etc.

### Step 3: Add to Your Project

1. Save downloaded icons to: `public/images/icons/`
2. Make sure the filename matches the category name
3. Refresh your browser - Done! ✅

## Recommended Icon Styles

For a professional look, use **flat design** or **line icons** consistently:

### Option A: Flat Icons (Colorful)
- Download colored icons
- Remove the color classes from `getServiceColor()`
- Icons will show their original colors

### Option B: Monochrome Icons (Current Setup)
- Download black/dark icons with transparent backgrounds
- The CSS will apply your brand colors
- Icons turn white on hover

## Icon Specifications

**Recommended Size:**
- Minimum: 256x256 pixels
- Ideal: 512x512 pixels
- Format: PNG with transparent background OR SVG

**Style Guidelines:**
- Use consistent style (all flat OR all line icons)
- Transparent background
- Square canvas (1:1 ratio)
- Dark color for better contrast

## Example Icon Searches

Copy these search terms into Flaticon:

| Service | Search Terms |
|---------|-------------|
| Mining | "excavator icon", "bulldozer icon", "mining truck" |
| Training | "training icon", "education icon", "certificate" |
| Transport | "truck icon", "vehicle icon", "transport" |
| Construction | "construction icon", "building icon", "crane" |
| Plumbing | "plumbing icon", "pipe icon", "wrench" |
| Woodworking | "carpentry icon", "saw icon", "woodwork" |
| Commerce | "shopping icon", "commerce icon", "retail" |
| Refrigeration | "refrigeration icon", "cold icon", "AC" |
| Drilling | "drill icon", "drilling icon", "bore" |

## Quick Setup Guide

### For New Service Category:

1. **Add image file:**
   ```
   public/images/icons/your-category.png
   ```

2. **Update the function in Home.vue:**
   ```javascript
   const getServiceIcon = (category) => {
     const icons = {
       // ... existing icons
       'your-category': '/images/icons/your-category.png'
     }
     return icons[category] || '/images/icons/default.png'
   }
   ```

3. **Done!** The icon will automatically appear

## Troubleshooting

**Icon not showing?**
- Check the filename matches exactly (case-sensitive)
- Check the file is in `public/images/icons/`
- Clear browser cache (Ctrl + Shift + R)
- Check browser console for errors

**Icon looks blurry?**
- Use higher resolution (512x512 or larger)
- Use SVG format instead of PNG for perfect scaling

**Icon wrong color?**
- Use black/dark icons with transparent background
- Or remove the CSS filters and use colored icons

## Pro Tips

1. **Use SVG when possible** - Perfect scaling, small file size
2. **Keep file sizes small** - Optimize with TinyPNG or SVGOMG
3. **Consistent style** - All icons should look like they belong together
4. **Test hover effects** - Make sure white color works on colored background

## Color Customization

Your current setup automatically applies colors. To change:

1. **Keep current colored system:**
   - Use monochrome (black) icons
   - Colors defined in `getServiceColor()`

2. **Use icon's original colors:**
   - Remove the `group-hover:brightness-0 group-hover:invert` classes
   - Download colorful icons
   - They'll keep their original colors

## Need Help?

- Icon not working? Check the browser console (F12)
- Wrong size? Adjust `w-12 h-12` classes in the template
- Want animated icons? Use SVG with CSS animations

## Where Your Icons Are Used

Icons appear in:
- ✅ Home page service grid (dynamic from database)
- ✅ Home page static services (fallback)
- 🔄 You can use the same system in other pages!

