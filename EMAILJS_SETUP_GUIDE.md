# EmailJS Setup Guide for Netlify

## Current Issue
Your contact form sends emails successfully but without the form data (name, email, subject, message). This is typically due to:
1. Environment variables not being set in Netlify
2. EmailJS template configuration mismatch
3. Build process not running correctly

## Step 1: Verify Netlify Environment Variables

1. Go to your Netlify dashboard
2. Click on your site
3. Go to **Site settings** → **Environment variables**
4. Make sure you have these three variables set:
   - `EMAILJS_SERVICE_ID` = (your EmailJS service ID)
   - `EMAILJS_TEMPLATE_ID` = (your EmailJS template ID)  
   - `EMAILJS_PUBLIC_KEY` = (your EmailJS public key)

## Step 2: Check EmailJS Template Configuration

1. Go to [EmailJS Dashboard](https://www.emailjs.com)
2. Click on **Email Templates**
3. Edit your template
4. Make sure your template includes these variables:
   ```
   {{from_name}} - for the sender's name
   {{from_email}} - for the sender's email
   {{subject}} - for the email subject
   {{message}} - for the email message
   ```

## Step 3: Example EmailJS Template

Your EmailJS template should look something like this:

**Subject Line:**
```
{{subject}}
```

**Template Content:**
```
Hello,

You have received a new message from your portfolio website:

Name: {{from_name}}
Email: {{from_email}}
Subject: {{subject}}

Message:
{{message}}

Best regards,
Portfolio Contact Form
```

## Step 4: Test the Setup

1. After setting the environment variables in Netlify, trigger a new deployment
2. The build script will replace the placeholders with actual values
3. Test the contact form
4. Check the browser console for debugging information

## Step 5: Debugging Tips

1. **Check browser console** - Look for form data logs
2. **Check Netlify build logs** - Verify the build script ran successfully
3. **Test EmailJS directly** - Use EmailJS dashboard to send a test email
4. **Verify template variables** - Make sure field names match exactly

## Alternative: Direct Email Fallback

If EmailJS continues to have issues, the form now includes a fallback that directs users to email you directly at: bamamounicolas@gmail.com

## Quick Test

After deployment, if you see this message when submitting the form:
> "Configuration error: Please check environment variables setup"

It means the environment variables weren't properly replaced during build.

## Need Help?

1. Check your EmailJS dashboard for any error messages
2. Verify your service ID, template ID, and public key are correct
3. Make sure the template variables match the form field names exactly
4. Contact EmailJS support if the issue persists