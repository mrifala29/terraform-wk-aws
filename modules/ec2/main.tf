resource "aws_instance" "web_cache" {
  ami           = var.ami_id
  instance_type = var.web_cache_instance_type
  subnet_id     = var.public_subnet_a_id

  vpc_security_group_ids = [
    aws_security_group.web_cache.id
  ]

  root_block_device {
    volume_size = var.web_cache_volume_size
    volume_type = var.volume_type
  }

  tags = {
    Name = "web-cache"
  }
}

resource "aws_instance" "redis_replica" {
  ami           = var.ami_id
  instance_type = var.redis_instance_type
  subnet_id     = var.private_subnet_b_id

  vpc_security_group_ids = [
    aws_security_group.redis_replica.id
  ]

  root_block_device {
    volume_size = var.redis_volume_size
    volume_type = var.volume_type
  }

  tags = {
    Name = "redis-replica"
  }
}