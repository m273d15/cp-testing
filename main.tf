variable "content" {
  type = string
}

variable "path" {
  type = string
  default = "/tmp/test.txt"
}

resource "local_file" "test" {
  content = var.content
  filename = var.path
}
