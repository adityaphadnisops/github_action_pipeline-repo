#!/bin/bash
set -e

ENV=$1

if [ -z "$ENV" ]; then
  echo "Usage: ./deploy.sh <dev|staging>"
  exit 1
fi

echo "Fake deploying to $ENV environment"
echo "Deployment completed successfully!"
exit 0
