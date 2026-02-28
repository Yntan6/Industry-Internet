#### 关机命令
- `sync` 存储到硬盘
- `shutdown`
  - `shutdown -h now`立马关机
  - `shutdown -h 20:25`会在系统时间的20：25关机
  - `shutdown –h +10` 十分钟后关机
  - `shutdown –r now` 系统立马**重启**
  - `shutdown –r +10` 系统十分钟后**重启**
  


####  创建目录
- `mkdir -p dirName`
  - `mkdir` 的全拼 `make directory` 用于创建目录
  
- 实例：在工作目录下的 runoob2 目录中，建立一个名为 test 的子目录
  
  `mkdir -p runoob2/test`







































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



### docker
- `systemctl status docker` 查看docker是否运行
  - 其中`Active：inactive(dead)`表示没有开启docker
- `systemctl start docker` 启动docker
- `systemctl stop docker` 停止docker
- `systemctl enable docker` 将docker设置为开机自启


















