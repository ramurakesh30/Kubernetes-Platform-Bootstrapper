```mermaid
graph TD

Developer --> GitPush

GitPush --> GitHub

GitHub --> ArgoCD

ArgoCD --> Kubernetes

Kubernetes --> Nginx
```
