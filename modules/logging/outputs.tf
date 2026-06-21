output "loki_release" {

  value = helm_release.loki.name

}

output "promtail_release" {

  value = helm_release.promtail.name

}