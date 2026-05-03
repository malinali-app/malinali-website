# 🌍 Malinali Website Architecture

## File Tree

```
malinali-website/
│
├─ 📄 Configuration Files
│  ├─ hugo.toml                    ← Main Hugo config (bilingual setup)
│  └─ .gitignore                   ← Git ignore rules
│
├─ 📝 Documentation
│  ├─ README.md                    ← Full technical documentation
│  ├─ QUICKSTART.md                ← Quick start guide ⭐ START HERE
│  └─ SETUP_COMPLETE.md            ← Setup summary (this explains everything)
│
├─ 🚀 Scripts
│  ├─ Windows
│  │  ├─ start-dev.ps1             ← Run dev server (Windows)
│  │  └─ build.bat                 ← Build for production (Windows)
│  └─ Unix (Mac/Linux)
│     ├─ start-dev.sh              ← Run dev server (Mac/Linux)
│     └─ build.sh                  ← Build for production (Mac/Linux)
│
├─ 📁 content/                     ← Page content (markdown metadata)
│  ├─ fr/
│  │  └─ _index.md                 ← French homepage data
│  └─ en/
│     └─ _index.md                 ← English homepage data
│
├─ 📁 layouts/                     ← HTML templates
│  └─ index.html                   ← Homepage (12.7 KB, with embedded CSS & bilingual logic)
│
├─ 📁 static/                      ← Static assets
│  └─ images/
│     └─ logo.jpg                  ← Malinali logo (267 KB, optimized)
│
├─ 📁 themes/                      ← Hugo themes (if using)
│  └─ ananke/                      ← Base theme (optional)
│
└─ 🏗️ public/                       ← Generated site (after build) [AUTO-GENERATED]
   ├─ index.html                   ← French homepage
   ├─ en/
   │  └─ index.html                ← English homepage
   ├─ images/
   │  └─ logo.jpg                  ← Logo copy
   └─ ... (other assets)
```

## Hugo Configuration Structure

```toml
# hugo.toml
├─ baseURL           = 'https://malinali.app/'
├─ title             = 'Malinali'
├─ theme             = 'ananke'
├─ defaultContentLanguage = 'fr'
│
├─ [languages]
│  ├─ [languages.fr]
│  │  ├─ languageCode = 'fr-fr'
│  │  ├─ languageName = 'Français'
│  │  └─ weight = 1        ← Default language
│  │
│  └─ [languages.en]
│     ├─ languageCode = 'en-us'
│     ├─ languageName = 'English'
│     └─ weight = 2
│
└─ [params]
   ├─ description = "Malinali - Bridging low-resource natural languages..."
   ├─ email = "hello@malinali.app"
   └─ github = "https://github.com/malinali-app/malinali-app"
```

## Website Layout Structure

```
┌─────────────────────────────────────────────┐
│              Navigation Bar                 │
│  🌍 Malinali              Français | English│
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│           Hero Section (2 columns)          │
│  ┌──────────────────┐  ┌────────────────┐  │
│  │ Headline +       │  │                │  │
│  │ Description      │  │  Logo Image    │  │
│  │ CTA Buttons      │  │                │  │
│  │ Note about app   │  │                │  │
│  └──────────────────┘  └────────────────┘  │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│         Features Grid (3 columns)           │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐    │
│  │ 🌐      │  │ 📱      │  │ 🔒      │    │
│  │Multilingual│Cross-Platform│Offline-First  │
│  └─────────┘  └─────────┘  └─────────┘    │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐    │
│  │ ⚡      │  │ 🤝      │  │ 🔐      │    │
│  │Lightweight│Contributions │Privacy-First  │
│  └─────────┘  └─────────┘  └─────────┘    │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│        Call-to-Action Section               │
│  "Ready to Discover New Languages?"         │
│  [View Source Code Button]                  │
└─────────────────────────────────────────────┘

┌─────────────────────────────────────────────┐
│              Footer                         │
│  © 2026 Malinali                            │
│  GitHub | hello@malinali.app                │
└─────────────────────────────────────────────┘
```

## URL Structure

```
https://malinali.app/
├─ /                    ← French homepage (default)
│  └─ [All content in French]
│
├─ /en/                 ← English homepage
│  └─ [All content in English]
│
├─ /images/logo.jpg     ← Logo asset
│
└─ /public/             ← (Local) Build output
   ├─ index.html        ← French version
   ├─ en/index.html     ← English version
   └─ images/logo.jpg   ← Logo copy
```

## Feature Comparison

| Feature | Available |
|---------|-----------|
| Bilingual (FR/EN) | ✅ Yes |
| Mobile Responsive | ✅ Yes |
| Logo Integration | ✅ Yes |
| Email Display | ✅ Yes (hello@malinali.app) |
| GitHub Links | ✅ Yes |
| Offline Functionality | ✅ Static site (no JS required) |
| Fast Performance | ✅ Yes (optimized) |
| SEO Ready | ✅ Yes |
| Accessible | ✅ Semantic HTML |
| Professional Design | ✅ Modern UI |

## Build & Deployment Flow

```
┌─────────────────────────────────────┐
│   Edit Content/Layout               │
│   (*.md, layouts/index.html)         │
└────────────┬────────────────────────┘
             │
             ▼
┌─────────────────────────────────────┐
│   Run Hugo (build.ps1 / build.sh)   │
│   hugo --minify                     │
└────────────┬────────────────────────┘
             │
             ▼
┌─────────────────────────────────────┐
│   Hugo Generates static HTML        │
│   Output: public/ directory         │
└────────────┬────────────────────────┘
             │
             ▼
┌─────────────────────────────────────┐
│   Deploy to Hosting Platform        │
│   - GitHub Pages                    │
│   - Netlify                         │
│   - Vercel                          │
│   - Traditional FTP                 │
└─────────────────────────────────────┘
             │
             ▼
┌─────────────────────────────────────┐
│   Website Live at https://malinali.app/
└─────────────────────────────────────┘
```

## Content Translation Matrix

| Section | French | English |
|---------|--------|---------|
| Homepage Title | "Malinali" | "Malinali" |
| Tagline | "Combler le fossé des langues..." | "Bridging low-resource natural languages..." |
| Hero CTA Primary | "Code Source (GitHub)" | "Source Code (GitHub)" |
| Hero CTA Secondary | "Nous Contacter" | "Contact Us" |
| Feature 1 | "Multilingue" | "Multilingual" |
| Feature 2 | "Multiplateforme" | "Cross-Platform" |
| Feature 3 | "Hors Ligne" | "Offline-First" |
| Feature 4 | "Léger et Rapide" | "Lightweight & Fast" |
| Feature 5 | "Contributions Utilisateur" | "User Contributions" |
| Feature 6 | "Vie Privée" | "Privacy First" |
| CTA Section | "Prêt à Découvrir..." | "Ready to Discover..." |
| Footer | "Tous droits réservés" | "All rights reserved" |

## Color Scheme

```
Primary Blue:    #0066cc   ← Main brand color
Dark Blue:       #0052a3   ← Hover/accent state
Background:      #f5f7fa   ← Light neutral
Gradient:        135deg    ← Blue to light blue
Text Dark:       #1a1a1a   ← Headlines
Text Medium:     #555      ← Body text
Text Light:      #666      ← Secondary text
White:           #ffffff   ← Cards/buttons
Borders:         #e0e0e0   ← Subtle dividers
```

## Responsive Breakpoints

```
├─ Mobile: 0px - 768px
│  ├─ Hero: Single column (vertical)
│  ├─ Buttons: Full width stacked
│  └─ Features: 1 column grid
│
└─ Desktop: 768px+
   ├─ Hero: 2 columns (side-by-side)
   ├─ Buttons: Horizontal layout
   └─ Features: 3 columns grid
```

## Key Features Recap

✨ **What Makes This Website Great:**

1. **Bilingual from the Start**
   - French: `/` (default)
   - English: `/en/`
   - Easy language switching

2. **Professional Design**
   - Modern, clean aesthetic
   - Smooth animations
   - Gradient backgrounds
   - Professional color scheme

3. **Mobile-First**
   - Responsive on all devices
   - Touch-friendly buttons
   - Readable on small screens

4. **Complete Information**
   - Project description
   - Feature highlights
   - Contact information (hello@malinali.app)
   - GitHub repository link
   - Logo prominently displayed

5. **Production-Ready**
   - Optimized assets
   - Minified HTML/CSS
   - SEO-friendly
   - Fast loading

6. **Easy to Deploy**
   - One-command build
   - Multiple hosting options
   - Git integration ready

---

**Website Status**: ✅ Complete and Ready!
**Last Updated**: May 3, 2026
