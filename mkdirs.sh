#!/bin/sh
set -e

# Data directory
mkdir -p .data
sudo chown 1000:1000 -R .data

# StarRocks
mkdir -p .data/starrocks-fe-1
sudo chown 1000:1000 -R .data/starrocks-fe-1

mkdir -p .data/starrocks-fe-2
sudo chown 1000:1000 -R .data/starrocks-fe-2

mkdir -p .data/starrocks-fe-3
sudo chown 1000:1000 -R .data/starrocks-fe-3

mkdir -p .data/starrocks-fe-4
sudo chown 1000:1000 -R .data/starrocks-fe-4

mkdir -p .data/starrocks-cn-1
sudo chown 1000:1000 -R .data/starrocks-cn-1

mkdir -p .data/starrocks-cn-2
sudo chown 1000:1000 -R .data/starrocks-cn-2

mkdir -p .data/starrocks-cn-3
sudo chown 1000:1000 -R .data/starrocks-cn-3

mkdir -p .data/starrocks-cn-4
sudo chown 1000:1000 -R .data/starrocks-cn-4

mkdir -p .data/starrocks-cn-5
sudo chown 1000:1000 -R .data/starrocks-cn-5

mkdir -p .data/starrocks-cn-6
sudo chown 1000:1000 -R .data/starrocks-cn-6

# Postgres directory
mkdir -p .data/postgres
sudo chown 999:999 -R .data/postgres

mkdir -p .data/minio-1-1
sudo chown 1000:1000 -R .data/minio-1-1

mkdir -p .data/minio-1-2
sudo chown 1000:1000 -R .data/minio-1-2

mkdir -p .data/minio-1-3
sudo chown 1000:1000 -R .data/minio-1-3

mkdir -p .data/minio-1-4
sudo chown 1000:1000 -R .data/minio-1-4

mkdir -p .data/minio-2-1
sudo chown 1000:1000 -R .data/minio-2-1

mkdir -p .data/minio-2-2
sudo chown 1000:1000 -R .data/minio-2-2

mkdir -p .data/minio-2-3
sudo chown 1000:1000 -R .data/minio-2-3

mkdir -p .data/minio-2-4
sudo chown 1000:1000 -R .data/minio-2-4

mkdir -p .data/minio-3-1
sudo chown 1000:1000 -R .data/minio-3-1

mkdir -p .data/minio-3-2
sudo chown 1000:1000 -R .data/minio-3-2

mkdir -p .data/minio-3-3
sudo chown 1000:1000 -R .data/minio-3-3

mkdir -p .data/minio-3-4
sudo chown 1000:1000 -R .data/minio-3-4

mkdir -p .data/minio-4-1
sudo chown 1000:1000 -R .data/minio-4-1

mkdir -p .data/minio-4-2
sudo chown 1000:1000 -R .data/minio-4-2

mkdir -p .data/minio-4-3
sudo chown 1000:1000 -R .data/minio-4-3

mkdir -p .data/minio-4-4
sudo chown 1000:1000 -R .data/minio-4-4

mkdir -p .data/minio-5-1
sudo chown 1000:1000 -R .data/minio-5-1

mkdir -p .data/minio-5-2
sudo chown 1000:1000 -R .data/minio-5-2

mkdir -p .data/minio-5-3
sudo chown 1000:1000 -R .data/minio-5-3

mkdir -p .data/minio-5-4
sudo chown 1000:1000 -R .data/minio-5-4
