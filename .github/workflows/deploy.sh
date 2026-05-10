#!/bin/bash
set -e

ENV=$1

# Check if environment is provided
if [ -z "$ENV" ]; then
  echo "Usage: ./deploy.sh <dev|staging>"
  exit 1
fi

echo "==================================="
echo "Fake deploying to $ENV environment"
echo "==================================="
echo "This is a test run – no actual deployment happening."
echo "To enable real deployment, replace this script with actual commands."

echo "Fake deployment to $ENV completed successfully!"
exit 0
