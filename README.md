# Docker container for Hbase

## Background

Simple Docker container for HBase with embedded zookeeper. Suitable for development work. Starts as pseudo-distributed. 

## Building from sources

```
docker build --rm=true -t mydogboris/hbase:1.2.4 .
```

## Or, download prebuilt container from Docker Hub 
```
docker pull mydogboris/hbase:1.2.4
```

## Run the image (no persistent volume)
```
docker run \
--detach \
--name=my-hbase \
-p 2181:2181 -p 60000:60000 -p 60010:60010 -p 60020:60020 -p 60030:60030 -p 8080:8080 \
-h hbase \
mydogboris/hbase:1.2.4
```

## Run the image (with persistent volume)
```
docker run \
--detach \
--name=my-hbase \
--volume=$HOME/data:/home/data \
-p 2181:2181 -p 60000:60000 -p 60010:60010 -p 60020:60020 -p 60030:60030 -p 8080:8080 \
-h hbase \
mydogboris/hbase:1.2.4
```

Open [http://localhost:60010] for the Admin GUI.

Zookeeper is at port 2181.

Other ports:

* HBase Master: 60000
* HBase RegionServer: 60020
* HBase RegionServer Backup: 60030
* HBase Rest API: 8080

## Rest API 

```
docker exec -it <CONTAINER> bash
```
In container:
```
hbase-daemon.sh start rest
```

Open [http://localhost:8080] to see a list of tables.


## Version strings

* 1.2.4
* latest