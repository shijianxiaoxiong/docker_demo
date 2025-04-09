## 容器数据卷

### 什么是容器数据卷

**docker的理念回顾**

数据？如果数据都在容器中，那么我们容器删除，数据就会丢失！

需求：数据可以持久化

MySQL，容器删除了，删库跑路！需求：MySQL数据可以存储在本地！

容器之间可以有一个数据共享的技术！Docker容器中产生的数据，同步到本地！

这就是卷技术！目录的挂载，将我们容器内的目录，挂载到Linux上面！


 ![image-20200516105258456](https://imgconvert.csdnimg.cn/aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL2NoZW5nY29kZXgvY2xvdWRpbWcvbWFzdGVyL2ltZy9pbWFnZS0yMDIwMDUxNjEwNTI1ODQ1Ni5wbmc?x-oss-process=image/format,png)

###  **总结一句话：容器的持久化和同步操作！容器间数据也是可以数据共享的！**



## 使用数据卷挂载

> 方式一 ：直接使用命令挂载 -v

~~~~shell
-v, --volume list                    Bind mount a volume

docker run -it -v 主机目录:容器内目录  -p 主机端口:容器内端口
➜ ~ docker run -it -v /home/ceshi:/home centos /bin/bash

[root@izwz97atifgyfhv60de8p9z /]# docker run -it -v /home/test:/home centos /bin
bff7fa83d31cea7d46986c60757b01a8a2f264289538e80466e94bb13d3ece4b
[root@izwz97atifgyfhv60de8p9z /]#
#通过 docker inspect 容器id 查看
 "Mounts": [
            {
                "Type": "bind",
                "Source": "/home/test",
                "Destination": "/home",
                "Mode": "",
                "RW": true,
                "Propagation": "rprivate"
            }

~~~~

测试文件是否同步：

![1592461651781](../images/1592461651781.png)





