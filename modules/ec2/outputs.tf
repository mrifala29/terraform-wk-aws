output "web_cache_ip" {
  value = aws_instance.web_cache.public_ip
}

output "reverse_proxy_ip" {
  value = aws_instance.reverse_proxy.public_ip
}

output "redis_primary_ip" {
  value = aws_instance.redis_primary.private_ip
}

output "redis_replica_ip" {
  value = aws_instance.redis_replica.private_ip
}