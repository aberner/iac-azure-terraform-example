#Define application name
variable "app_name" {
  type = string
  description = "Application name"
  default = "phil123"
}
#Define application environment
variable "app_environment" {
  type = string
  description = "Application environment"
  default = "phil321"
}