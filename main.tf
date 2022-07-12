terraform {
  required_providers {
    minio = {
      version = "0.1.0"
      source  = "refaktory/minio"
    }
  }
}

variable "endpoint" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

provider "minio" {
  endpoint = var.endpoint
  access_key = var.access_key
  secret_key = var.secret_key
  ssl = false
}


resource "minio_bucket" "bucket" {
  name = var.bucket_name
}
