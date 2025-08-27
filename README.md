# StarRocks Minio Cluster inside Docker Compose

Simple StarRocks and MinIO cluster inside Docker Compose.

This example is based on the [StarRocks documentation](https://docs.starrocks.io/docs/quick_start/shared-data/), and [StarRocks repository](https://github.com/StarRocks/demo/tree/master/documentation-samples)

## Disclaimer

This repository is created by [Khiem Doan](https://github.com/khiemdoan) for educational purposes only. It is not an official StarRocks or MinIO project.

This is a simple setup for development and testing purposes. It is not intended for production use.

I do not take any responsibility for any issues that may arise from using this setup in production.

## Components

```mermaid
architecture-beta
    group starrocks(database)[StarRocks]
    group storage(disk)[Storage]

    service haproxy_starrocks(server)[HAProxy] in starrocks
    service starrocks_frontend_1(database)[Frontend 1] in starrocks
    service starrocks_frontend_2(database)[Frontend 2] in starrocks
    service starrocks_frontend_3(database)[Frontend 3] in starrocks
    service starrocks_frontend_4(database)[Frontend 4] in starrocks
    service starrocks_backend_1(database)[Backend 1] in starrocks
    service starrocks_backend_2(database)[Backend 2] in starrocks
    service starrocks_backend_3(database)[Backend 3] in starrocks
    service starrocks_backend_4(database)[Backend 4] in starrocks
    service starrocks_backend_5(database)[Backend 5] in starrocks
    service starrocks_backend_6(database)[Backend 6] in starrocks

    junction junctionCenter in starrocks

    service haproxy_minio(server)[HAProxy] in storage
    service minio1(disk)[MinIO 1] in storage
    service minio2(disk)[MinIO 2] in storage
    service minio3(disk)[MinIO 3] in storage
    service minio4(disk)[MinIO 4] in storage
    service minio5(disk)[MinIO 5] in storage

    haproxy_starrocks:B --> T:starrocks_frontend_1
    haproxy_starrocks:B --> T:starrocks_frontend_2
    haproxy_starrocks:B --> T:starrocks_frontend_3
    haproxy_starrocks:B --> T:starrocks_frontend_4

    starrocks_frontend_1:B -- T:junctionCenter
    starrocks_frontend_2:B -- T:junctionCenter
    starrocks_frontend_3:B -- T:junctionCenter
    starrocks_frontend_4:B -- T:junctionCenter
    junctionCenter:B --> T:starrocks_backend_1
    junctionCenter:B --> T:starrocks_backend_2
    junctionCenter:B --> T:starrocks_backend_3
    junctionCenter:B --> T:starrocks_backend_4
    junctionCenter:B --> T:starrocks_backend_5
    junctionCenter:B --> T:starrocks_backend_6

    starrocks_backend_1:B --> T:haproxy_minio
    starrocks_backend_2:B --> T:haproxy_minio
    starrocks_backend_3:B --> T:haproxy_minio
    starrocks_backend_4:B --> T:haproxy_minio
    starrocks_backend_5:B --> T:haproxy_minio
    starrocks_backend_6:B --> T:haproxy_minio

    haproxy_minio:B --> T:minio1
    haproxy_minio:B --> T:minio2
    haproxy_minio:B --> T:minio3
    haproxy_minio:B --> T:minio4
    haproxy_minio:B --> T:minio5
```

- StarRocks Frontend: 4 nodes (with HAProxy as load balancer)
- StarRocks Backend: 6 nodes
- MinIO: 5 nodes (with HAProxy as load balancer)



## Running

1. Run `mkdirs.sh` to create necessary directories.
1. Create a `.env` file in the follow `.env.example` file.
1. Start compose

    ```bash
    docker compose up -d
    ```

1. After the containers are up, you should change password for the `root` user in StarRocks.

    ```sh
    docker exec -it starrocks-leader bash
    mysql -P9030 -h 127.0.0.1 -u root --prompt="StarRocks > " -p
    # without password
    ```

1. Then run the following SQL command to change the password, for example:

    ```sql
    SET PASSWORD = PASSWORD('$w0rdf1sh');
    ```

1. Add compute nodes

    ```sql
    ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-1:9050";
    ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-2:9050";
    ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-3:9050";
    ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-4:9050";
    ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-5:9050";
    ALTER SYSTEM ADD COMPUTE NODE "starrocks-cn-6:9050";
    ```

## Create database

You can create a database using the following SQL command:

```sql
CREATE DATABASE IF NOT EXISTS warehouse;
```

## Accessing services

- MySQL: `localhost:9030`
- StarRocks: [http://localhost:8030](http://localhost:8030)
- MinIO: [http://localhost:9000](http://localhost:9000)

