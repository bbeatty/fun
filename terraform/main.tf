#https://aws.amazon.com/amazon-linux-ami/ HVM EBS backed 64 bit
resource "aws_instance" "example" {
  ami = "ami-a4c7edb2"
  instance_type = "t2.micro"
  key_name = "tfKeyPair.pem"
 

  user_data = <<-EOF
              #!/bin/bash
	      yum install busybox
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF



  tags {
    Name = "terraform-example"
  }
}
