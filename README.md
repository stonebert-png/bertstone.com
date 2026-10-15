# bertstone.com

Source for [bertstone.com](https://bertstone.com/) - the personal site and blog of Bert Stone, Director of IT Operations and Managed Services.

A static portfolio and blog: plain HTML and CSS, no framework, deployed to Cloudflare Pages.

## What's here

- `dist/` - the built site (index.html, resume PDF, photos, `_redirects`)
- `deploy.sh` - deploys `dist/` to Cloudflare Pages
- `wrangler.toml` - Cloudflare Pages project config

## Deploy

```bash
CLOUDFLARE_API_TOKEN=<token> ./deploy.sh
```

The token is read from the environment at deploy time; it is never stored in this repo.

## Content

The site is a portfolio for Bert's IT operations and managed services work: a hero stats band, proof-bearing work cards, an origin story (recording engineer to IT ops), a "Now" section, and a blog. Blog drafts and the LinkedIn post archive live in Bert's Obsidian vault, not here.

## License

Content and code are Bert Stone's. Reach out via the site.
