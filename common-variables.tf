#Define application name
variable "app_name" {
  type = string
  description = "Application name"
  default = "arb-test-terraform-setup-app"
}
#Define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
  default = "arb-test-terraform-setup-demo"
}