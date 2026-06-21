resource "helm_release" "loki" {

  name = "loki"

  repository = "https://grafana.github.io/helm-charts"

  chart = "loki"

  namespace = var.namespace

  create_namespace = true

  set {

    name = "singleBinary.replicas"

    value = "1"

  }

}

resource "helm_release" "promtail" {

  name = "promtail"

  repository = "https://grafana.github.io/helm-charts"

  chart = "promtail"

  namespace = var.namespace

  create_namespace = true

}