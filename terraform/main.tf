module "networking" {

  source = "../modules/networking"

  environment = "dev"

  vpc_cidr = "10.0.0.0/16"

}

module "eks" {

  source = "../modules/eks"

  cluster_name = "platform-dev"

  vpc_id = module.networking.vpc_id

  subnet_ids = module.networking.private_subnet_ids

}

module "ingress" {

  source = "../modules/ingress"

}

module "monitoring" {

  source = "../modules/monitoring"

}

module "logging" {

  source = "../modules/logging"

}

module "argocd" {

  source = "../modules/argocd"

}

module "external_secrets" {

  source = "../modules/external-secrets"

}

module "kyverno" {

  source = "../modules/kyverno"

}