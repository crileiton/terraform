resource "aws_s3_bucket" "proveedores" {
  count = 6
  bucket = "proveedores-${random_string.sufijo[count.index].id}"
  tags = {
    Owner = "Cristian Leiton V"
    Environment = "Dev"
    Office = "San Jose"
  }
}

resource "random_string" "sufijo" {
  count = 6
  length  =  8
  special =  false
  upper   =  false
  numeric =  false
}