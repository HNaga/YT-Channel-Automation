docker stop n8n
docker rm n8n

docker run -d --name n8n \
  --network shared-net \
  -p 5678:5678 \
  -v n8n_data:/home/node/.n8n \
  -e NODE_ENV=production \
  -e N8N_HOST=careful-humble-roughy.ngrok-free.app \
  -e N8N_PORT=5678 \
  -e N8N_PROTOCOL=https \
  -e WEBHOOK_URL=https://careful-humble-roughy.ngrok-free.app \
  -e WEBHOOK_TUNNEL_URL=https://careful-humble-roughy.ngrok-free.app \
  -e N8N_EDITOR_BASE_URL=https://careful-humble-roughy.ngrok-free.app \
  n8nio/n8n:latest
