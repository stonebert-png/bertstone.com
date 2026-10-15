#!/usr/bin/env bash
# Deploy bertstone.com static site to Cloudflare Pages.
# Usage: ./deploy.sh            (uses CLOUDFLARE_API_TOKEN env, or wrangler login session)
set -euo pipefail
cd "$(dirname "$0")"

PROJECT="bertstone-site"
BUCKET="dist"

echo "== Verifying build dir =="
test -f "$BUCKET/index.html" || { echo "ERROR: missing $BUCKET/index.html (run prepare first)"; exit 1; }
ls -la "$BUCKET"

echo "== Deploying to Cloudflare Pages ($PROJECT) =="
# If logged in via `wrangler login`, the token is handled by wrangler.
# Otherwise export CLOUDFLARE_API_TOKEN beforehand.
if [[ -n "${CLOUDFLARE_API_TOKEN:-}" ]]; then
  echo "using CLOUDFLARE_API_TOKEN from env"
else
  echo "no CLOUDFLARE_API_TOKEN set; wrangler will use its saved login session"
fi

npx wrangler pages deploy "$BUCKET" --project-name "$PROJECT"

echo "== Done. Preview URL printed above. =="