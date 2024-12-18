resource "aws_instance" "public_instance" {
  ami           = var.ec2_specs.ami
  instance_type = var.ec2_specs.instance_type
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name
  user_data     = file("scripts/userdata.sh")
  # lifecycle {
  #   replace_triggered_by = [aws_subnet.private_subnet]
  # }

  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]

  provisioner "local-exec" {
    command = "echo ${aws_instance.public_instance.public_ip} >> /noexiste/public_ip.txt"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "echo instancia destruida >> public_ip.txt"
  }

  # provisioner "remote-exec" {
  #   inline = [
  #     "echo 'Hello, World' > ~/hello.txt",
  #   ]

  #   connection {
  #     type        = "ssh"
  #     user        = "ec2-user"
  #     private_key = file(var.private_key_path)
  #     host        = self.public_ip
  #   }

  # }
}

# resource "aws_instance" "mywebserver" {
#   ami           = "ami-0453ec754f44f9a4a"
#   instance_type = "t2.micro"
#   key_name      = data.aws_key_pair.key.key_name
#   subnet_id     = aws_subnet.public_subnet.id
#   tags = {
#     "Name" = "myserver"
#   }
#   vpc_security_group_ids = [
#     aws_security_group.sg_public_instance.id,
#   ]
# }