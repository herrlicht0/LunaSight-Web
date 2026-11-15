#!/bin/bash
set -e
cd "$(dirname "$0")"
python3 -m http.server 8000 --bind 127.0.0.1 &
server_pid=$!
trap 'kill "$server_pid" 2>/dev/null || true' EXIT
sleep 1
if ! kill -0 "$server_pid" 2>/dev/null; then
  wait "$server_pid"
  exit 1
fi
xdg-open http://127.0.0.1:8000/ || printf 'Open http://127.0.0.1:8000/ in your browser.\n'
wait "$server_pid"
