# Hugo Website Setup Script for Windows
# Run this from the malinali-website directory

Write-Host "🚀 Malinali Website Setup" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host ""

# Check if Hugo is installed
if (-not (Get-Command hugo -ErrorAction SilentlyContinue)) {
    Write-Host "❌ Hugo is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Hugo first:" -ForegroundColor Yellow
    Write-Host "  - Windows: choco install hugo-extended" -ForegroundColor Gray
    Write-Host "  - Or visit: https://gohugo.io/installation/" -ForegroundColor Gray
    exit 1
}

Write-Host "✅ Hugo found: $(hugo version)" -ForegroundColor Green
Write-Host ""

# Check if we're in the right directory
if (-not (Test-Path "hugo.toml")) {
    Write-Host "❌ Error: hugo.toml not found!" -ForegroundColor Red
    Write-Host "Please run this script from the malinali-website directory" -ForegroundColor Yellow
    exit 1
}

Write-Host "📂 Project structure verified" -ForegroundColor Green
Write-Host ""

# Start development server
Write-Host "🔧 Starting Hugo development server..." -ForegroundColor Cyan
Write-Host "👉 Open http://localhost:1313 in your browser" -ForegroundColor Yellow
Write-Host ""
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host ""

& hugo server --baseURL=http://localhost:1313/
