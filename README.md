# k8s1

1. Instale um cluster kubernetes usando um dos scripts abaixo:
* em um servidor:
```
curl -s https://raw.githubusercontent.com/lhc/k8s1/refs/heads/main/k3s-install.sh | bash -x
```
* ou no seu computador:
```
curl -s https://raw.githubusercontent.com/lhc/k8s1/refs/heads/main/kind-install.sh | bash -x
```
2. Instale e configure o argocd (ele vai aplicar tudo em `./applicationsets`):
```
curl -s https://raw.githubusercontent.com/lhc/k8s1/refs/heads/main/argocd-install.sh | bash -x
```
