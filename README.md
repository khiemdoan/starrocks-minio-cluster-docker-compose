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

```sql
CREATE DATABASE IF NOT EXISTS warehouse;
```
