variable "web_server_port" {
  type = map(number)

  default = {
    dev = 4001
    qa  = 5001
  }
}
variable "api_server_port" {
  type = map(number)

  default = {
    dev = 4002
    qa  = 5002
  }
}
variable "bd_server_port" {
  type = map(number)

  default = {
    dev = 4003
    qa  = 5003
  }
}