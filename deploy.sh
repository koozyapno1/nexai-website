#!/bin/bash
# Cloudflare Pages Deployment Script
# Set CLOUDFLARE_API_TOKEN env var and run this script

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
CF_ACCOUNT_ID="YOUR_ACCOUNT_ID"
CF_PROJECT_NAME="nexai-website"
CF_API_TOKEN="${CLOUDFLARE_API_TOKEN}"

# Upload and deploy to Cloudflare Pages
echo "Deploying to Cloudflare Pages..."

# Create project (if needed)
curl -X POST "https://api.cloudflare.com/client/v4/accounts/${CF_ACCOUNT_ID}/pages/projects" \
  -H "Authorization: Bearer ${CF_API_TOKEN}" \
  -H "Content-Type: application/json" \
  -d "{\"name\":\"${CF_PROJECT_NAME}\",\"production_branch\":\"main\"}"

# Upload files and trigger deployment
# For simplicity, use wrangler CLI:
# npx wrangler pages deploy "${REPO_DIR}" --project-name="${CF_PROJECT_NAME}"

echo "Done! Install wrangler CLI and run: npx wrangler pages deploy . --project-name=nexai-website"
