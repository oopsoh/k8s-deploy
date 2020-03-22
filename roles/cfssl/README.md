CN：Common Name：kube-apiserver 从证书中提取该字段作为请求的用户名 (User Name)，浏览器使用该字段验证网站是否合法；

O：Organization：kube-apiserver 从证书中提取该字段作为请求用户所属的组 (Group)；

kube-apiserver 将提取的 User、Group 作为 RBAC 授权的用户标识；

注意：

不同证书 csr 文件的 CN、C、ST、L、O、OU 组合必须不同，否则可能出现 PEER'S CERTIFICATE HAS AN INVALID SIGNATURE 错误；
后续创建证书的 csr 文件时，CN 都不相同（C、ST、L、O、OU 相同），以达到区分的目的；