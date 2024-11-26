resource "local_file" "productos"{
    count    = 3
    content  = "Lista de productos para el mes"
    filename = "productos-${random_string.sufijo[count.index].id}.txt"
}