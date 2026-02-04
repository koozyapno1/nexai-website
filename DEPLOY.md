# Cloudflare Pages Deployment

## Quick Deploy (Web Dashboard - Easiest)
1. Go to: https://pages.cloudflare.com
2. Sign in with your Cloudflare account
3. Click "Create a project"
4. Select: koozyapno1/nexai-website
5. Click "Deploy"

Your site: https://nexai-website.pages.dev

## API Deployment (requires token with account access)
```bash
npx wrangler pages deploy . --project-name=nexai-website
```

## Current Token Status
Token saved but lacks account-level permissions for API deployment.
Please use the web dashboard method above.
