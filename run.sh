#!/bin/sh

set -e

if [[ $ENV == "dev" ]]; then
  npm run dev
else
  npm run build && node .output/server/index.mjs
fi
