resource "aws_instance" "dbserver" {
  #ami="${data.aws_ami.ubuntu.id}"
  ami           = "${lookup(var.amiId, var.AWS_REGION)}"
  instance_type = "t2.micro"
  key_name="test"
}

output "ami"{
	value="${aws_instance.dbserver.public_ip}"
}
