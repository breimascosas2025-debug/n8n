FROM n8nio/n8n:latest
USER root
# Healthcheck para Render
HEALTHCHECK --interval=30s --timeout=10s --start-period=30s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:5678/healthz || exit 1
USER node