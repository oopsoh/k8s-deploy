etcd 是基于 Raft 的分布式 KV 存储系统，由 CoreOS 开发，常用于服务发现、共享配置以及并发控制（如 leader 选举、分布式锁等）

flanneld 与 etcd v3.4.x 不兼容，如果要安装 flanneld ，则需要将 etcd 降级到 v3.3.x 版本；


3.4.3 版本的 etcd/etcdctl 默认启用了 V3 API，所以执行 etcdctl 命令时不需要再指定环境变量 ETCDCTL_API=3；

从 K8S 1.13 开始，不再支持 v2 版本的 etcd；

checkBindURLs(cfg.LPUrls）：校验peer-urls schem相关信息,且在3.1版本之后不允许使用域名作为url来进行绑定操作。
checkBindURLs(cfg.LCUrls) : 校验client-urls schem相关信息,且在3.1版本之后不允许使用域名作为url来进行绑定操作。

# 查看日志

journalctl -u etcd


# 验证服务状态

/opt/k8s/bin/etcdctl \
--endpoints=https://192.168.0.150:2379,https://192.168.0.151:2379,https://192.168.0.152:2379 \
--ca-file=/etc/kubernetes/cert/ca.pem \
--cert-file=/etc/kubernetes/cert/etcd.pem \
--key-file=/etc/kubernetes/cert/etcd-key.pem \
cluster-health

# 查看当前的 leader

/opt/k8s/bin/etcdctl \
--endpoints=https://192.168.0.150:2379,https://192.168.0.151:2379,https://192.168.0.152:2379 \
--ca-file=/etc/kubernetes/cert/ca.pem \
--cert-file=/etc/kubernetes/cert/etcd.pem \
--key-file=/etc/kubernetes/cert/etcd-key.pem \
member list

# 备份

/opt/k8s/bin/etcdctl \
--ca-file=/etc/kubernetes/cert/ca.pem \
--cert-file=/etc/kubernetes/cert/etcd.pem \
--key-file=/etc/kubernetes/cert/etcd-key.pem \
backup --data-dir /var/lib/etcd --backup-dir /tmp/etcd
