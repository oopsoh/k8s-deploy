# 项目使用ansible脚本部署kubernetes集群

# 使用nexus oss代理离线环境系统依赖包

# 参考文档[https://github.com/opsnull/follow-me-install-kubernetes-cluste]

# 在运行ansible脚本之前需要一些手动的操作

1. 配置主机名，如果在安装操作系统的时候已经配置，可以省略
2. 配置主机之间的ssh无密码登录，包括hosts文件
3. 在windows运维机器上面运行nexus服务
4. 在第一台linux机器上，如master1上面配置nexus的epel源，修改ansible.repo文件中的IP为windows地址，拷贝文件ansible.repo到/etc/yum.repo.d/文件夹下面
5. yum install ansible


curl -v --user 'admin:admin123' --upload-file ./grafana-5.2.1-1.x86_64.rpm http://192.168.137.124:18081/repository/k8s-local/7/Packages/grafana-5.2.1-1.x86_64.rpm

kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | (grep admin-user || echo "$_") | awk '{print $1}') | grep token: | awk '{print $2}'


kubectl config set-credentials admin --token=


