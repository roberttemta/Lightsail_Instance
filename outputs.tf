

output "instance_ip" {
  value       = aws_lightsail_instance.server.public_ip_address
  description = "The Public IP Address name of the Lightsail instance."
}

output "username" {
  value = aws_lightsail_instance.server.username
}

output "ssh_command" {
  value = "ssh -i ${aws_lightsail_instance.server.key_pair_name}.pem ${aws_lightsail_instance.server.username}@${aws_lightsail_instance.server.public_ip_address}"
}


output "key-pair" {
  value = aws_lightsail_instance.server.key_pair_name
}