output "web_cache_ip" {
  value = aws_instance.web_cache.public_ip
}


output "redis_replica_ip" {
  value = aws_instance.redis_replica.private_ip
}