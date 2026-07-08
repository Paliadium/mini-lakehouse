#!/bin/bash
echo "Checking MinIO..."
curl -s -o /dev/null -w "MinIO: %{http_code}\n" http://localhost:9000/minio/health/live

echo "Checking PostgreSQL..."
docker exec postgres-iceberg pg_isready -U admin -d iceberg_meta

echo "Checking Trino..."
curl -s -o /dev/null -w "Trino: %{http_code}\n" http://localhost:8080/v1/info

echo "All services checked!"