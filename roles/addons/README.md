
ABAC policy file
https://v1-15.docs.kubernetes.io/docs/reference/access-authn-authz/abac/

Access Control
https://github.com/kubernetes/dashboard/blob/master/docs/user/access-control/README.md

install
https://github.com/opsnull/follow-me-install-kubernetes-cluster/blob/master/08-3.dashboard%E6%8F%92%E4%BB%B6.md

metrics-server
https://github.com/kubernetes-sigs/metrics-server
https://kubernetes.io/docs/tasks/debug-application-cluster/resource-metrics-pipeline/
https://kubernetes.io/docs/tasks/access-kubernetes-api/configure-aggregation-layer/
https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet-authentication-authorization/
https://liumiaocn.blog.csdn.net/article/details/104130029


k8s 1.15.11版本是最后一个支持basic auth的版本，所以选这个版本

1.16版本之后 apiserver basic-auth-file的参数

kubernetes-dashboard都在自己的namespaces中，创建了Role、Rolebinding、ClusterRoleBinding

[root@master1 .kube]# kubectl describe clusterrolebinding kubernetes-dashboard --all-namespaces
Name:         kubernetes-dashboard
Labels:       <none>
Annotations:  kubectl.kubernetes.io/last-applied-configuration:
                {"apiVersion":"rbac.authorization.k8s.io/v1","kind":"ClusterRoleBinding","metadata":{"annotations":{},"name":"kubernetes-dashboard"},"role...
Role:
  Kind:  ClusterRole
  Name:  kubernetes-dashboard
Subjects:
  Kind            Name                  Namespace
  ----            ----                  ---------
  ServiceAccount  kubernetes-dashboard  kubernetes-dashboard


apiVersion: rbac.authorization.k8s.io/v1
kind: ClusterRoleBinding
metadata:
  name: kubernetes-dashboard
  namespace: kubernetes-dashboard
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
  - kind: ServiceAccount
    name: kubernetes-dashboard
    namespace: kubernetes-dashboard

如果service account kubernetes-dashboard直接绑定ClusterRole cluster-admin 则kubernetes-dashboard 这个sa具有最高权限，这样的话配合dashboard的参数enable-skip-login	false	When enabled, the skip button on the login page will be shown.  则可以直接跳过登录查看

所以我们不使用kubernetes-dashboard 这个sa来创建 登录dashboard页面的kubeconfig文件，我们新建一个dashboard-login-admin这样的service account，赋予cluster-admin的权限

## keycloak

generate a self-signed cert using the keytool
> keytool -genkey -alias keycloak -keyalg RSA -keystore keycloak.jks -validity 10950

convert .jks to .p12
> keytool -importkeystore -srckeystore keycloak.jks -destkeystore keycloak.p12 -deststoretype PKCS12

generate .crt from .p12 keystore
> openssl pkcs12 -in keycloak.p12 -nokeys -out tls.crt

generate .key from .p12 keystore
> openssl pkcs12 -in keycloak.p12 -nocerts -nodes -out tls.key

Then use the tls.crt and tls.key for volume mount /etc/x509/https

