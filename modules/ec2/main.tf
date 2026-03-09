resource "aws_instance" "web_cache" {
  ami           = var.ami_id
  instance_type = var.web_cache_instance_type
  subnet_id     = var.public_subnet_a_id

  vpc_security_group_ids = [
    aws_security_group.web_cache.id
  ]

  tags = {
    Name = "web-cache"
  }
}

resource "aws_instance" "reverse_proxy" {
  ami           = var.ami_id
  instance_type = var.reverse_proxy_instance_type
  subnet_id     = var.public_subnet_a_id

  vpc_security_group_ids = [
    aws_security_group.reverse_proxy.id
  ]

  tags = {
    Name = "reverse-proxy"
  }
}

resource "aws_instance" "redis_primary" {
  ami           = var.ami_id
  instance_type = var.redis_instance_type
  subnet_id     = var.private_subnet_a_id

  vpc_security_group_ids = [
    aws_security_group.redis_primary.id
  ]

  tags = {
    Name = "redis-primary"
  }
}

resource "aws_instance" "redis_replica" {
  ami           = var.ami_id
  instance_type = var.redis_instance_type
  subnet_id     = var.private_subnet_b_id

  vpc_security_group_ids = [
    aws_security_group.redis_replica.id
  ]

  tags = {
    Name = "redis-replica"
  }
}