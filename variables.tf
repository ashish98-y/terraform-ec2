variable "AWS_REGION" {
  type    = "string"
  default = "us-east-2"
}
variable "amiId" {
  type = map(string)
  default = {
    us-east-2 = "ami-0d5d9d301c853a04a"
  }
}
