#ami-abc1ebbd is https://aws.amazon.com/amazon-linux-ami/ PV EBS backed 64 bit
resource "aws_instance" "example" {
  ami = "ami-abc1ebbd"
  instance_type = "t2.micro"
}
