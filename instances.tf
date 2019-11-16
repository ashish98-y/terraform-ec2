resource "aws_instance" "dbserver" {
  #ami="${data.aws_ami.ubuntu.id}"
  ami           = "${lookup(var.amiId, var.AWS_REGION)}"
  instance_type = "t2.micro"
  user_data="${file(user-data.sh)}"
  key_name="test"
}

output "ami"{
	value="${aws_instance.dbserver.public_ip}"
}
