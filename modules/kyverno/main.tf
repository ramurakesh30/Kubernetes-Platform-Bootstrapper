resource "helm_release" "kyverno" {

  name = "kyverno"

  repository = "https://kyverno.github.io/kyverno"

  chart = "kyverno"

  namespace = var.namespace

  create_namespace = true

}