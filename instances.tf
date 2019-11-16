resource "aws_instance" "dbserver" {
  #ami="${data.aws_ami.ubuntu.id}"
  ami           = "${lookup(var.amiId, var.AWS_REGION)}"
  instance_type = "t2.micro"
vpc_security_group_ids="${aws_security_group.asg.id}"
  user_data="${file("${path.cwd}/user-data.sh")}"
  key_name="test"

}

output "ami"{
	value="${aws_instance.dbserver.public_ip}"
}
