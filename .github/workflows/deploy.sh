#!/bin/bash
set -e

ENV=$1

# Check if environment is provided
if [ -z "$ENV" ]; then
  echo "Usage: ./deploy.sh <dev|staging>"
  exit 1
fi

echo "Fake deploying to $ENV environment"
echo "This is a test run – no actual deployment happening."

# Agar real deployment karna ho, neeche aws commands add karna
# if [ "$ENV" == "dev" ]; then
#   aws s3 sync ./build/ s3://my-dev-bucket/ --delete
# elif [ "$ENV" == "staging" ]; then
#   aws s3 sync ./build/ s3://my-staging-bucket/ --delete
# fi

echo "Fake deployment to $ENV completed successfully!"
