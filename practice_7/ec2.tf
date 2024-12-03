resource "aws_instance" "public_instance" {
  ami           = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  key_name      = data.aws_key_pair.key.key_name
  # lifecycle {
  #   replace_triggered_by = [aws_subnet.private_subnet]
  # }

  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
}