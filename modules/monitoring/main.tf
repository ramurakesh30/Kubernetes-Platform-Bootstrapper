resource "helm_release" "kube_prometheus_stack" {

  name = "kube-prometheus-stack"

  repository = "https://prometheus-community.github.io/helm-charts"

  chart = "kube-prometheus-stack"

  namespace = var.namespace

  create_namespace = true

  set {

    name = "grafana.enabled"

   value =  "true"

  }

  set {

    name = "alertmanager.enabled"

    value = "true"

  }

  set {

    name = "prometheus.prometheusSpec.retention"

    value = "15d"

  }

}