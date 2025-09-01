# GitHub Pages Deployment Guide

This guide will help you deploy your portfolio website to GitHub Pages using GitHub Actions.

## 📋 Prerequisites

1. Your code must be in a GitHub repository
2. You must have push access to the repository
3. The repository must be public (or you need GitHub Pro for private repos)

## 🚀 Step-by-Step Deployment Setup

### Step 1: Enable GitHub Pages

1. Go to your GitHub repository: `https://github.com/Bamamou/WebDevPortfolio`
2. Click the **Settings** tab
3. Scroll down to **Pages** in the left sidebar
4. Under **Source**, select **GitHub Actions**
5. Click **Save**

### Step 2: Push Your Code

Make sure all your files are committed and pushed to GitHub:

```bash
git add .
git commit -m "Setup GitHub Pages deployment"
git push origin master
```

### Step 3: Verify Deployment

1. Go to the **Actions** tab in your repository
2. You should see a workflow called "Deploy static content to Pages"
3. Click on it to see the deployment progress
4. Once completed (green checkmark), your site will be live at:
   `https://bamamou.github.io/WebDevPortfolio`

## 🔧 How the Deployment Works

The GitHub Actions workflow (`.github/workflows/deploy.yml`) will:

1. **Trigger**: Runs automatically when you push to the `master` branch
2. **Checkout**: Downloads your repository code
3. **Setup Pages**: Prepares the GitHub Pages environment
4. **Upload**: Packages your static files
5. **Deploy**: Publishes your site to GitHub Pages

## 📁 File Structure for Deployment

Your repository should have this structure:
```
WebDevPortfolio/
├── .github/
│   └── workflows/
│       └── deploy.yml          # Deployment workflow
├── resources/                  # Your images and assets
├── index.html                  # Main page (required)
├── style.css                   # Your styles
├── README.md                   # Documentation
└── DEPLOYMENT.md               # This file
```

## 🔍 Troubleshooting

### Common Issues:

1. **"Pages not enabled" error**:
   - Go to repository Settings → Pages
   - Select "GitHub Actions" as source

2. **"Permission denied" error**:
   - Make sure you have push access to the repository
   - Check your Git credentials

3. **404 error on deployed site**:
   - Ensure your main file is named `index.html`
   - Check that all file paths are correct

4. **Workflow not running**:
   - Make sure the workflow file is in `.github/workflows/`
   - Check that you're pushing to the `master` branch

### Manual Deployment Test:

You can manually trigger the deployment:
1. Go to **Actions** tab
2. Click "Deploy static content to Pages"
3. Click "Run workflow"
4. Select the `master` branch
5. Click "Run workflow"

## ✅ Success Indicators

Your deployment is successful when:
- ✅ GitHub Actions workflow completes without errors
- ✅ You can access your site at `https://bamamou.github.io/WebDevPortfolio`
- ✅ All images and styles load correctly
- ✅ Navigation and links work properly

## 🔄 Automatic Updates

After initial setup, your site will automatically update whenever you:
1. Make changes to your code
2. Commit the changes: `git commit -m "Your changes"`
3. Push to GitHub: `git push origin master`

The deployment typically takes 1-3 minutes to complete.

## 📞 Need Help?

If you encounter issues:
1. Check the Actions tab for detailed error logs
2. Ensure all file paths use forward slashes (`/`)
3. Verify that all images exist in the `resources/` folder
4. Make sure there are no syntax errors in HTML/CSS

Your portfolio will be live at: **https://bamamou.github.io/WebDevPortfolio**
