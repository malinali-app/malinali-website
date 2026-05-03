#!/usr/bin/env bash
# Hugo Website Setup Script
# This script helps you get started with the Malinali website

echo "🚀 Malinali Website Setup"
echo "========================="
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

echo "📂 Project structure verified"
echo ""

# Start development server
echo "🔧 Starting Hugo development server..."
echo "👉 Open http://localhost:1313 in your browser"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

hugo server --baseURL=http://localhost:1313/
