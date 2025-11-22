#!/bin/bash

# Load environment variables
ENV_FILE=".env"

if [ ! -f "$ENV_FILE" ]; then
  echo "❌ Env file '$ENV_FILE' not found."
  exit 1
fi

export $(grep -v '^#' "$ENV_FILE" | xargs)

# Local Docker Postgres container
LOCAL_CONTAINER="postgres17.5"

# Docker network shared by containers (default is 'bridge')
DOCKER_NETWORK="bridge"

# Dump file details
DUMP_FILE="dump.sql"
LOCAL_DUMP_PATH="./$DUMP_FILE"
CONTAINER_DUMP_PATH="/tmp/$DUMP_FILE"

# ===================================


echo "▶ Copying dump into container '$LOCAL_CONTAINER'..."
docker cp "$LOCAL_DUMP_PATH" "$LOCAL_CONTAINER:$CONTAINER_DUMP_PATH"

echo "▶ Cloning into staging DB: $DATABASE_URI"
docker exec -u postgres "$LOCAL_CONTAINER" bash -c \
  "psql \"$STAGING_DB\" -f \"$CONTAINER_DUMP_PATH\""

if [ $? -eq 0 ]; then
  echo "✅ Restore completed successfully."
else
  echo "❌ Restore failed."
  exit 1
fi

# Optional: Uncomment to clean up local dump
# rm "$LOCAL_DUMP_PATH"

echo "▶ Syncing s3 bucket..."

export MEDIA_DIR="./public/media"
export AWS_ACCESS_KEY_ID=$S3_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$S3_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION="$S3_REGION"
export AWS_REGION="$S3_REGION"
export AWS_ADDRESSING_STYLE=path

aws s3 --endpoint-url "$S3_ENDPOINT" sync "$MEDIA_DIR" "s3://$S3_BUCKET/media"

if [ $? -eq 0 ]; then
  echo "✅ S3 bucket synced successfully."
else
  echo "❌ S3 bucket sync failed."
  exit 1
fi


