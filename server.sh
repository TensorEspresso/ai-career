#!/bin/bash
# Serve the skill tree on the LAN. Usage: ./server.sh [port]
PORT="${1:-8647}"
cd "$(dirname "$0")"
exec python3 -m http.server "$PORT" --bind 0.0.0.0
