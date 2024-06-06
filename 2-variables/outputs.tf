#Information that you can recieve once an terraform apply command is succeed#
output "instace_ip_address" {
  value = aws_instance.example.private_ip
}