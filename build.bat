@echo off
REM Hugo Website Build Script for Windows
REM This script builds the website for production deployment

echo.
echo 🔨 Building Malinali Website
echo =============================
echo.

REM Check if Hugo is installed
where hugo >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo ❌ Hugo is not installed!
    echo.
    echo Please install Hugo first:
    echo   - Windows: choco install hugo-extended
    echo   - Or visit: https://gohugo.io/installation/
    echo.
    exit /b 1
)

for /f "tokens=*" %%i in ('hugo version') do set HUGO_VERSION=%%i
echo ✅ Hugo found: %HUGO_VERSION%
echo.

REM Check if we're in the right directory
if not exist "hugo.toml" (
    echo ❌ Error: hugo.toml not found!
    echo Please run this script from the malinali-website directory
    exit /b 1
)

REM Remove old build
if exist "public" (
    echo 🗑️  Cleaning old build...
    rmdir /s /q public
)

echo.
echo 🏗️  Building website...
echo.

REM Build the site
hugo --minify

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ✅ Build successful!
    echo.
    echo 📂 Output directory: .\public\
    echo.
    echo 🚀 Ready to deploy!
    echo.
    echo Next steps:
    echo   1. Test locally: hugo server --baseURL=http://localhost:1313/
    echo   2. Upload 'public' directory to your hosting provider
    echo   3. Or use Netlify/Vercel for automatic deployment
) else (
    echo.
    echo ❌ Build failed!
    exit /b 1
)
