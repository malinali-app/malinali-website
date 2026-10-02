# Malinali Website

A beautiful bilingual (French/English) Hugo website for Malinali - an offline translation app for low-resource languages.

## Features

- ✨ **Modern, Responsive Design**: Beautiful UI that works on all devices
- 🌐 **Bilingual Support**: Full French and English language support
- 📱 **Mobile-Optimized**: Responsive design for all screen sizes
- 🎨 **Professional Branding**: Includes Malinali logo and professional styling
- 🔗 **Easy Navigation**: Language switcher and clear call-to-action buttons
- 📧 **Contact Information**: Displays hello@malinali.app
- 🔒 **GitHub Integration**: Links to the open-source repository
- 📱 **Google Play**: [Malinali on Google Play](https://play.google.com/store/apps/details?id=app.malinali.l10n&hl=fr)

## Project Structure

```
malinali-website/
├── content/
│   ├── fr/
│   │   └── _index.md          # French homepage metadata
│   └── en/
│       └── _index.md          # English homepage metadata
├── static/
│   └── images/
│       └── logo.jpg           # Malinali logo (optimized)
├── layouts/
│   └── index.html             # Custom homepage layout with embedded CSS
├── hugo.toml                  # Hugo configuration (bilingual setup)
└── README.md                  # This file
```

## Installation & Setup

### Prerequisites

- [Hugo](https://gohugo.io/) (Extended version recommended)
- Git (for version control)

### Install Hugo

**On Windows (using Chocolatey):**
```powershell
choco install hugo-extended
```

**On macOS (using Homebrew):**
```bash
brew install hugo
```

**On Linux:**
```bash
sudo apt-get install hugo
```

Or visit [gohugo.io/installation](https://gohugo.io/installation/) for more options.

### Running the Website Locally

```bash
# Navigate to the website directory
cd malinali-website

# Start the Hugo development server
hugo server

# Open your browser to http://localhost:1313
```

The website will hot-reload as you make changes.

### Building for Production

```bash
# Generate the static site
hugo

# Output will be in the 'public/' directory
```

## Configuration

The website is configured in `hugo.toml`:

- **Base URL**: Set to `https://malinali.app/` (update if deploying elsewhere)
- **Default Language**: French (`fr`)
- **Supported Languages**: French and English
- **Email**: `hello@malinali.app`
- **GitHub**: `https://github.com/malinali-app/malinali-app`
- **Google Play**: `https://play.google.com/store/apps/details?id=app.malinali.l10n&hl=fr`

### Customization

To change email or social links, edit `hugo.toml`:

```toml
[params]
description = "Your description here"
email = "your-email@example.com"
github = "https://github.com/your-repo"
playstore = "https://play.google.com/store/apps/details?id=app.malinali.l10n&hl=fr"
```

## Content

The website has two language versions:

### French Version (`/`)
- Welcome message in French
- All content translated to French
- French-specific CTAs

### English Version (`/en/`)
- Welcome message in English
- All content in English
- English-specific CTAs

## Deployment

### GitHub Pages

1. Push your changes to GitHub:
```bash
git add .
git commit -m "Initial Malinali website"
git push origin main
```

2. Configure GitHub Pages in your repository settings to deploy from the `public/` directory

3. Hugo will automatically build when you push

### Other Hosting Options

- **Netlify**: Drag and drop `public/` folder or connect GitHub for automatic builds
- **Vercel**: Connect your GitHub repo for automatic deployments
- **Traditional Hosting**: Upload contents of `public/` directory via FTP/SFTP

## Customization Guide

### Changing Colors

Edit the CSS in `layouts/index.html` and update the color values:

```css
--primary-blue: #0066cc;
--dark-blue: #0052a3;
```

### Adding More Pages

1. Create a new markdown file in `content/fr/` (and `content/en/` for English)
2. Create a layout in `layouts/` if needed
3. Hugo will automatically build the new page

### Modifying the Logo

Replace `static/images/logo.jpg` with your own logo file and update references if needed.

## Features Highlighted on Website

- 🌐 **Multilingual Support**: For low-resource languages
- 📱 **Cross-Platform**: iOS, Android, Web, Linux, macOS, Windows
- 🤖 **Local MarianMT**: 110+ bilateral neural models (~40 languages), on-device; African Helsinki OPUS pairs with BLEU hints
- 📦 **Use your own model**: MarianMT only — paste a Hugging Face repo id ([Marian](https://marian-nmt.github.io/) ecosystem)
- 🎤 **Vosk transcription**: Offline speech recognition beyond French
- 🔒 **Offline-First**: All data stored locally — no third-party servers
- ⚡ **Lightweight**: Optimized for low-end devices and field work
- 🔐 **Privacy-First**: Open source and FOSS

## Troubleshooting

### Hugo command not found
Make sure Hugo is installed and in your system PATH. Verify with `hugo version`.

### Changes not appearing
- Hard refresh your browser (Ctrl+Shift+R or Cmd+Shift+R)
- Check the Hugo server console for build errors
- Ensure files are saved

### Language switcher not working
- Check that both language files exist in `content/fr/_index.md` and `content/en/_index.md`
- Verify `hugo.toml` has both languages configured

## License

This website showcases Malinali, which is licensed under GPL-2.0. See the main repository for details.

## Support

For issues or questions about the website:
- 📧 Email: hello@malinali.app
- 🔗 GitHub: https://github.com/malinali-app/malinali-app
- 📱 Google Play: https://play.google.com/store/apps/details?id=app.malinali.l10n&hl=fr

---

**Last Updated**: October 2, 2026
