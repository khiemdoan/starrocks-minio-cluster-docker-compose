# StarRocks Minio Cluter inside Docker Compose

Simple StarRocks and MinIO cluster inside Docker Compose.

```sh
docker exec -it starrocks-leader bash
mysql -P9030 -h 127.0.0.1 -u root --prompt="StarRocks > " -p
# without password
```

```sql
SET PASSWORD = PASSWORD('$w0rdf1sh');
```

## Add compute nodes

```sql
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-1:9050";
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-2:9050";
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-3:9050";
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-4:9050";
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-5:9050";
ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-6:9050";
```

```sql
CREATE DATABASE IF NOT EXISTS warehouse;
```
