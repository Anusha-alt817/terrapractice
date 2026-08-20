terraform {
  backend "s3" {
    bucket       = "terraform-state-anusha-2026-bucket"
    key          = "terraform-module/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}