#!/usr/bin/env bash
# Hugo Website Build Script
# This script builds the website for production deployment

echo "🔨 Building Malinali Website"
echo "============================="
echo ""

# Check if Hugo is installed
if ! command -v hugo &> /dev/null; then
    echo "❌ Hugo is not installed!"
    echo ""
    echo "Please install Hugo first:"
    echo "  - macOS: brew install hugo"
    echo "  - Windows: choco install hugo-extended"
    echo "  - Linux: sudo apt-get install hugo"
    echo "  - Or visit: https://gohugo.io/installation/"
    exit 1
fi

echo "✅ Hugo found: $(hugo version)"
echo ""

# Check if we're in the right directory
if [ ! -f "hugo.toml" ]; then
    echo "❌ Error: hugo.toml not found!"
    echo "Please run this script from the malinali-website directory"
    exit 1
fi

# Remove old build
if [ -d "public" ]; then
    echo "🗑️  Cleaning old build..."
    rm -rf public
fi

echo ""
echo "🏗️  Building website..."
echo ""

# Build the site
hugo --minify

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo ""
    echo "📂 Output directory: ./public/"
    echo ""
    echo "📊 Build statistics:"
    find public -type f | wc -l | xargs echo "   Total files:"
    du -sh public | awk '{print "   Total size: " $1}'
    echo ""
    echo "🚀 Ready to deploy!"
    echo ""
    echo "Next steps:"
    echo "  1. Test locally: hugo server --baseURL=http://localhost:1313/"
    echo "  2. Upload 'public/' directory to your hosting provider"
    echo "  3. Or use Netlify/Vercel for automatic deployment"
else
    echo ""
    echo "❌ Build failed!"
    exit 1
fi
