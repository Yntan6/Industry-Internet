#### 关机命令
- `sync` 存储到硬盘
- `shutdown`
  - `shutdown -h now`立马关机
  - `shutdown -h 20:25`会在系统时间的20：25关机
  - `shutdown –h +10` 十分钟后关机
  - `shutdown –r now` 系统立马**重启**
  - `shutdown –r +10` 系统十分钟后**重启**
  


#### 创建目录(文件夹)
- `mkdir -p dirName`
  - `mkdir` 的全拼 `make directory` 用于创建目录
  
- 实例：在工作目录下的 runoob2 目录中，建立一个名为 test 的子目录
  
  `mkdir -p runoob2/test`

#### 查看文件和连接文件
- `cat [选项] [文件]` 
  - `cat` 的全拼 `concatenate` 主要作用是用于查看和连接文件
    - `[选项]`说明：
      ```
      -n：显示行号，会在输出的每一行前加上行号
      -b：显示行号，但只对非空行进行编号
      -s：压缩连续的空行，只显示一个空行
      -E：在每一行的末尾显示 $ 符号
      -T：将 Tab 字符显示为 ^I
      -v：显示一些非打印字符
      ``` 
- 实例：
  - 无
- `cat file1 file2 > file3`连接文件：将 file1 和 file2 的内容合并到 file3 中


#### 显示目录所在路径(pwd)



#### 更改文件权限，更改文件所有者
- `chown [选项] [所有者] [文件]` 
  - `chown` 设置文件所有者和文件关联组的命令，是 `change owner` 的缩写
  - `[选项]`说明：
    ```
    -R, --recursive: 递归更改目录及其子目录中所有文件的所有者
    -v, --verbose: 显示详细操作信息
    -c, --changes: 只显示实际发生更改的文件
    -f, --silent, --quiet: 抑制错误信息
    --reference=文件: 使用参考文件的所有者和组设置
    -h, --no-dereference: 影响符号链接本身，而不是链接指向的文件
    --from=当前所有者: 只有当前所有者匹配时才更改
      ```
  - 实例：
    - 
      ```更改所有者
      chown username filename
      chown john file.txt
      ```   
    - `sudo chown -R 799:799 ~/.mytb-data`
      - `-R` 递归选项
      - `799:799` 用户 ID（UID）​ 和组 ID（GID），注意使用的是数字是*容器内用户*（在宿主机上可能没有对应的用户名）
        - 第一个 799：用户 ID（UID），表示文件将属于用户 ID 为 799 的用户
        - 第二个 799：组 ID（GID），表示文件将属于组 ID 为 799 的组



#### 查看网络
- `ip addr` 查看系统网络，是 `ip address` 的缩写







#### RPM管理套件(redhat package manager)

- `rpm [选项] [软件包名]`
  - `-q` 显示指定软件包是否已安装
  - `-i` 安装指定包
  - `-p` 显示指定的软件包信息
  - `-pqi` 查询包的信息，或者`-qpi` 也是一样的作用
  - `-ihv` 安装包，并通过进度条显示安装详细
  - `-R` 显示软件包的依赖关系





#### 系统服务管理器(systemctl)
- `systemctl [选项] [命令] [单元名称]`
  - `[选项]`说明：
    ```
    -t, --type	指定单元类型（service, socket, device 等）
    -a, --all	显示所有单元，包括不活跃的
    --state	按状态过滤单元
    -l, --full	显示完整的单元信息
    -H, --host	操作远程主机
    ```
  - 实例:
    - `systemctl stop firewalld`
  ```
  systemctl start [服务名]# 启动服务
  systemctl stop [服务名]# 停止服务
  systemctl restart [服务名]# 重启服务
  ```

#### 服务管理工具(service)
- `service [服务名] [操作指令]`
- `操作指令` 说明:
  ```
  start	启动指定的服务
  stop	停止指定的服务
  restart	重启指定的服务
  reload	重新加载配置文件(不重启服务)
  status	查看服务运行状态
  --status-all	列出所有服务的状态
  ```
- `service network restart`重启网络服务














---

#### 查看安装版本，有无安装成功
```
[选项] version
```
- 选项：对于程序或工具，例如yum、vim、docker等
- 版本的英文单词

或者：

```
[选项] --version
```
- 选项：对于程序或工具，例如yum、vim、docker等
- 版本的英文单词


---

### 一、基本语法（文件移动mv）
```bash
mv [选项] 源文件/目录 目标文件/目录
```
- 源：要操作的文件/目录路径
- 目标：操作后的文件/目录路径
- 选项：可选，用于扩展命令功能

### 二、核心参数（新手必学）
| 参数 | 作用 | 示例 |
|------|------|------|
| `-i` | 交互式操作，覆盖目标文件前**提示确认**（避免误操作） | `mv -i file.txt /tmp/` |
| `-f` | 强制覆盖，不提示，直接覆盖已存在的目标文件 | `mv -f file.txt /tmp/` |
| `-v` | 显示详细操作信息（能看到移动/重命名的过程） | `mv -v file.txt /tmp/` |
| `-n` | 不覆盖已存在的文件（和 `-f` 相反，更安全） | `mv -n file.txt /tmp/` |

### 三、实际使用示例（新手易理解）
#### 场景1：重命名文件/目录（最常用）
当**源和目标在同一目录**时，`mv` 就是“重命名”功能：
```bash
# 重命名文件
mv old.txt new.txt  # 把当前目录的old.txt改名为new.txt

# 重命名目录（和文件语法完全一致）
mv old_dir new_dir  # 把old_dir目录改名为new_dir
```

#### 场景2：移动文件/目录到指定位置
当**目标是一个已存在的目录**时，`mv` 就是“移动”功能：
```bash
# 移动单个文件到/tmp目录
mv file.txt /tmp/

# 移动多个文件到/tmp目录
mv file1.txt file2.txt /tmp/

# 移动目录到/tmp目录（无需特殊处理，和文件用法一样）
mv my_dir /tmp/

# 配合通配符批量移动（比如所有txt文件）
mv *.txt /tmp/
```

#### 场景3：安全移动（覆盖前确认）
新手推荐用 `-i` 参数，避免误覆盖重要文件：
```bash
mv -i file.txt /tmp/
# 如果/tmp/已存在file.txt，会提示：
# mv: overwrite '/tmp/file.txt'? (输入y确认，n取消)
```

#### 场景4：显示操作详情
用 `-v` 参数可以清晰看到命令执行结果：
```bash
mv -v file.txt /tmp/
# 输出：file.txt -> /tmp/file.txt
```

---



# docker
### 系统层面的：
- `systemctl status docker` 查看docker是否运行
  - 其中`Active：inactive(dead)`表示没有开启docker
- `systemctl start docker` 启动docker
- `systemctl stop docker` 停止docker
- `systemctl enable docker` 将docker设置为开机自启

### docker内的：
- `docker ps` 列出容器
- `docker images` 列出本地镜像
- `docker pull` 拉取镜像到本地
- `docker info` 查看镜像源
- `docker network create -d bridge test-net`创建docker网络
  - `network` 管理网络
  - `create` 创建网络
  - `-d` 指定网络驱动类型，是 `--driver` 的缩写
  - `bridge` 驱动类型中的桥接网络
  - `test-net` 自定义的网络名称
- `dockers network ls` 列出docker网络
- `docker network create -d bridge --subnet 192.168.100.0/24 --gateway 192.168.100.1 mytb-net`
  - `--subnet 192.168.100/24` 自定义子网网段
  - `--geteway 192.168.100.1` 指定子网的网关地址
  - `mytb-net` 自定义网络的名称
- `docker load -i hello-world_latest.tar`
  - `load` 从本地文件加载镜像，与pull不同
  - `-i` 指定要加载的镜像归档文件，输入文件选项（input的缩写）
  - `hello-world_latest.tar` 镜像归档文件名
  - 必须满足以下条件之一：
    ```
    使用绝对路径：docker load -i /完整/路径/文件名.tar
    使用相对路径：docker load -i 相对路径/文件名.tar
    先cd到文件所在目录：然后 docker load -i 文件名.tar
    ```
    ```
    # 当前在 /home/user
    [root@localhost user]# cd /usr/etc/other
    [root@localhost other]# docker load -i hello-world_latest.tar
    # 成功！因为当前目录就是文件所在目录
    ```









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





#### 复制文件(cp)
`cp [文件来源] [目标档]`
实例：
```

```




#### 装载U盘

当插上U盘会有`[sdb] No Caching mode page found` ... `[sdb] Assuming drive cache:write through` ... 等提示，此时按键盘上的**Ctrl+C**就可退出状态

- `lsblk` 列出所有存储设备，U盘通常以**/dev/sdX**形式存在(X为字母，如sdb、sdc等)**
- `mkdir /mnt/usb` 创建挂载点目录，一般使用/mnt/*(系统临时过载目录)
- `mount -t vfat /dev/sdb1 /mnt/usb -o rw,uid=1000,gid=1000` 挂载U盘到目录(此条目录仅对FAT32格式有效)
  - `mount` 挂载命令，把一个设备/分区，挂到一个文件夹里
  - `-t vfat` 指定文件系统类型 vaft 就是fat32 文件系统
  - `/dev/sdb1` 要挂载的U盘分区设备名(根据实际情况相关)
  - `/mnt/usb` 挂载点(目标文件夹)
  - `-o rw,uid=1000,gid=1000` `-o`后面是多个挂载选项，使用`，`号分隔
    - `rw` read-write 可读写模式
    - `uid=1000` 设置挂载后文件的**所有者用户ID**
    - ` gid=1000` 设置挂载后文件的**所属组ID**
- 上一条命令可以简化为：`mount /dev/sdb1 /mnt/usb`

卸载U盘：`umount /mnt/usb`







































