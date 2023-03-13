variable "region" {
   description = "Aws Default region"
   type = string
   default = "us-east-1"
}
variable "az" {
  description = "availability zone"
  type = map(string)
  default = {
    "1a" = "us-east-1a"
    "1b" = "us-east-1b"     
  }

}