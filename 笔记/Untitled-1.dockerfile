`docker run -it -p 9090:9090 -p 1883:1883 -p 5683-5688:5683-5688/udp -v ~/.mytb-data:/data -v ~/.mytb-logs:/var/log/thingsboard --name mytb --restart always thingsboard/tb-postgres`
或者
```
docker run -it -p 9090:9090 -p 1883:1883 -p 5683-5688:5683-5688/udp \
  -v ~/.mytb-data:/data \
  -v ~/.mytb-logs:/var/log/thingsboard \
  --name mytb \
  --restart always \
  thingsboard/tb-postgres
```

这里的`\`是继续读取下一行的意思




---
docker network create -d bridge --subnet 192.168.100.0/24 --gateway 192.168.100.1 mytb-net

你解释一下，每个元素的含义
---
| 命令元素 | 具体含义 |
|----------|----------|
| `docker` | Docker 核心命令行客户端，用于和 Docker 守护进程（daemon）交互，执行各类 Docker 操作（如创建容器、管理网络等）。 |
| `network` | Docker 的子命令，专门用于**管理 Docker 网络**（包括创建、删除、查看、连接网络等操作）。 |
| `create` | `network` 子命令下的具体操作，意为**创建一个新的 Docker 网络**。 |
| `-d bridge` | `-d` 是 `--driver` 的简写，用于指定网络驱动类型；<br>`bridge` 是 Docker 默认的网络驱动（桥接模式），适用于**单机内容器之间的通信**，也是最常用的网络模式。 |
| `--subnet 192.168.100.0/24` | `--subnet` 用于指定自定义网络的**子网网段**；<br>`192.168.100.0/24` 表示该网络的 IP 地址范围是 `192.168.100.1` 到 `192.168.100.254`（`/24` 是 CIDR 表示法，对应子网掩码 `255.255.255.0`），连接到这个网络的容器会从该网段分配 IP。 |
| `--gateway 192.168.100.1` | `--gateway` 用于指定该子网的**网关地址**；<br>`192.168.100.1` 是这个自定义网络的网关，容器通过这个网关访问外部网络（如宿主机、外网），也是网段内的第一个可用 IP。 |
| `mytb-net` | 你为这个自定义网络设置的**名称**，后续可以通过这个名称引用该网络（比如启动容器时用 `--network mytb-net` 让容器连接到这个网络）。 |

### 总结
1. 这条命令的核心是创建一个名为 `mytb-net` 的桥接模式 Docker 网络；
2. 自定义了子网 `192.168.100.0/24`（IP 范围 192.168.100.1-254）和网关 `192.168.100.1`；
3. 桥接模式（bridge）是单机容器通信的默认方式，自定义子网/网关可以避免 Docker 自动分配的 IP 冲突，便于管理。








docker network create -d bridge --subnet 192.168.100.0/24 --gateway 192.168.100.1 mytb-net



docker run -it -p 9090:9090 -p 1883:1883 -p 5683-5688:5683-5688/udp \
  -v ~/.mytb-data:/data \
  -v ~/.mytb-logs:/var/log/thingsboard \
  --name mytb swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/thingsboard/tb-postgres



HTTP/1.1 200
Vary:Origin
Vary:Access-Centrol-Request-Method
Vary:Access-Centrol-Request-Headers
Last-Modified:tue, 31 dec 2024 08:53:41 GMT
Accept-Ranges:bytes
Content-Type:text/html;charse-UTF-8
Content-Language:en
Data:Web,04 Mar 2026 04:05:21 GMT
