locals {
  instance_number = lookup(var.instance_number, var.env) # olha no objeto var.instance_number baseado no valor de env (no caso dev ou prod)

  file_ext    = "zip"
  object_name = "meu-arquivo-gerado-de-um-template"

  common_tags = {
    "Owner" = "Camila Lopes"
    "Year"  = "2023"
  }
}