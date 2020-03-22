flannel 将分配给自己的 Pod 网段信息写入 /run/flannel/docker 文件，docker 后续使用这个文件中的环境变量设置 docker0 网桥，从而从这个地址段为本节点的所有 Pod 容器分配 IP。

flannel 使用 vxlan 技术为各节点创建一个可以互通的 Pod 网络，使用的端口为 UDP 8472

flanneld 当前版本 (v0.11.0) 不支持 etcd v3，故使用 etcd v2 API 写入配置 key 和网段数据；


写入的 Pod 网段 ${CLUSTER_CIDR} 地址段（如 /16）必须小于 SubnetLen，必须与 kube-controller-manager 的 --cluster-cidr 参数值一致；


# 查看集群 Pod 网段(/16)

/opt/k8s/bin/etcdctl \
--endpoints=https://192.168.0.150:2379,https://192.168.0.151:2379,https://192.168.0.152:2379 \
--ca-file=/etc/kubernetes/cert/ca.pem \
--cert-file=/etc/kubernetes/cert/flanneld.pem \
--key-file=/etc/kubernetes/cert/flanneld-key.pem \
  get /kubernetes/network/config

# 查看已分配的 Pod 子网段列表(/24):

/opt/k8s/bin/etcdctl \
--endpoints=https://192.168.0.150:2379,https://192.168.0.151:2379,https://192.168.0.152:2379 \
--ca-file=/etc/kubernetes/cert/ca.pem \
--cert-file=/etc/kubernetes/cert/flanneld.pem \
--key-file=/etc/kubernetes/cert/flanneld-key.pem \
  ls /kubernetes/network/subnets

# 查看某一 Pod 网段对应的节点 IP 和 flannel 接口地址

/opt/k8s/bin/etcdctl \
--endpoints=https://192.168.0.150:2379,https://192.168.0.151:2379,https://192.168.0.152:2379 \
--ca-file=/etc/kubernetes/cert/ca.pem \
--cert-file=/etc/kubernetes/cert/flanneld.pem \
--key-file=/etc/kubernetes/cert/flanneld-key.pem \
  get /kubernetes/network/subnets/172.30.80.0-21