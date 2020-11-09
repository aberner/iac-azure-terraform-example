#Define application name
variable "app_name" {
  type = string
  description = "Your unique application name, used as a prefix for all resources"

}
#Define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
  default = "test"
}