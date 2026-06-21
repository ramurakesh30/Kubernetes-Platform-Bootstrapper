resource "helm_release" "argocd" {

  name = "argocd"

  repository = "https://argoproj.github.io/argo-helm"

  chart = "argo-cd"

  namespace = var.namespace

  create_namespace = true

   set {

    name = "server.service.type"

    value = "LoadBalancer"

  }

  set {

    name = "configs.params.server.insecure"

    value = "true"

  }

}