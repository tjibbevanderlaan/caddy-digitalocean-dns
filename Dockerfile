FROM caddy:2.5.2-builder-alpine AS builder

RUN caddy-builder \
    github.com/caddy-dns/cloudflare

FROM caddy:2.5.2-builder-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
