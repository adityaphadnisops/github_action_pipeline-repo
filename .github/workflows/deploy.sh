#!/bin/bash
set -e  # Agar koi command fail ho toh script ruk jaye

ENV=$1

# Check if environment is provided
if [ -z "$ENV" ]; then
  echo "Usage: ./deploy.sh <dev|staging>"
  exit 1
fi

# Check if build folder exists
if [ ! -d "./build" ]; then
  echo "Error: ./build folder not found. Run 'npm run build' first."
  exit 1
fi

if [ "$ENV" == "dev" ]; then
  echo "Deploying to Dev S3 bucket..."
  aws s3 sync ./build/ s3://my-dev-bucket/ --delete
elif [ "$ENV" == "staging" ]; then
  echo "Deploying to Staging S3 bucket..."
  aws s3 sync ./build/ s3://my-staging-bucket/ --delete
else
  echo "Unknown environment: $ENV"
  exit 1
fi

echo "Deployment to $ENV completed successfully!"
