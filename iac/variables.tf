variable "web_server_port" {
  type = map(number)

  default = {
    dev = 4001
    qa  = 5001
  }
}