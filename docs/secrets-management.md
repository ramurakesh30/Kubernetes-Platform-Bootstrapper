graph TD

SecretsManager --> ExternalSecrets

ExternalSecrets --> KubernetesSecret

KubernetesSecret --> Application