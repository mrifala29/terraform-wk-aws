variable "vpc_id" {
  type = string
}

variable "public_subnet_a_id" {
  type = string
}

variable "private_subnet_a_id" {
  type = string
}

variable "private_subnet_b_id" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "web_cache_instance_type" {
  type = string
}

variable "reverse_proxy_instance_type" {
  type = string
}

variable "redis_instance_type" {
  type = string
}

variable "web_cache_volume_size" {
  type        = string
}

variable "reverse_proxy_volume_size" {
  type        = string
}

variable "redis_volume_size" {
  type        = string
}

variable "volume_type" {
  type        = string
}