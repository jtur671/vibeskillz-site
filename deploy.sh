#!/bin/bash
set -e
TOKEN=$(op item get ae6htil5672hsmiei4lgo4ufnm --reveal --fields notesPlain 2>/dev/null)
CLOUDFLARE_API_TOKEN=$TOKEN npx wrangler pages deploy . \
  --project-name vibeskillz-site \
  --branch main \
  --commit-dirty=true
echo "✓ deployed → https://vibeskillz.com"
