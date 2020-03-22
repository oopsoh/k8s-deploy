kubectl 使用 https 协议与 kube-apiserver 进行安全通信，kube-apiserver 对 kubectl 请求包含的证书进行认证和授权。

kubectl 后续用于集群管理，所以这里创建具有最高权限的 admin 证书。


O: system:masters：kube-apiserver 收到使用该证书的客户端请求后，为请求添加组（Group）认证标识 system:masters；

预定义的 ClusterRoleBinding cluster-admin 将 Group system:masters 与 Role cluster-admin 绑定，该 Role 授予操作集群所需的最高权限；

该证书只会被 kubectl 当做 client 证书使用，所以 hosts 字段为空；