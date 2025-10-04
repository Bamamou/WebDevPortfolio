#!/bin/bash

# Build script for Netlify
# This script replaces environment variables in the HTML file during build

echo "Starting build process..."

# Replace environment variables in index.html
sed -i "s/EMAILJS_SERVICE_ID_PLACEHOLDER/$EMAILJS_SERVICE_ID/g" index.html
sed -i "s/EMAILJS_TEMPLATE_ID_PLACEHOLDER/$EMAILJS_TEMPLATE_ID/g" index.html  
sed -i "s/EMAILJS_PUBLIC_KEY_PLACEHOLDER/$EMAILJS_PUBLIC_KEY/g" index.html

echo "Environment variables replaced successfully!"
echo "Build completed!"