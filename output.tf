output "ec2_private_ip" {
  value = "${aws_instance.ec2_create.private_ip}"
}

output "ec2_instance_id" {
  value = "${aws_instance.ec2_create.id}"
}