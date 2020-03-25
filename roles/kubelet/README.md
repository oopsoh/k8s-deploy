
flannel运行方式：

1. 二进制安装，flannel是独立工作的，使用etcd存储网段。
2. 以pod运行，flannel集成到k8s集群里面，直接从集群获取网段数据。


第一种：
docker通过指定flannel在节点生成的网段配置，确定docker网桥的地址，然后以docker自己的方式给容器分配ip.

第二种：
这种方式flannel也会在节点生成网段配置，但是docker却不能使用，因为需要重启docker, flannel总是在docker启动以后才开始运行，有很多不确定性。
所以需要使用cni的网络。
