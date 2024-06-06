#Generate vars and specifications(parameters)#
variable "access_key" {
  description = "Access key from AWS"
  type = string
  sensitive = true
}

variable "secret_key" {
  description = "Secret key from AWS"
  type = string
  sensitive = true
}
#Use terraform destroy for delete all the infraestructure created in this files#