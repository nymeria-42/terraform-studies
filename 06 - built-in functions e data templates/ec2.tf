resource "aws_instance" "server" {
  count = local.instance_number <= 0 ? 0 : local.instance_number # count é uma propriedade do terraform para controlar a quantidade de recursos

  ami           = var.instance_ami
  instance_type = lookup(var.instance_type, var.env)

  tags = merge(
    local.common_tags,
    {
      Project = "Curso AWS com Terraform"
      Env     = format("%s", var.env) # como se fosse o printf
      Name    = format("Instance %d", count.index + 1)
    }
  ) # funcao merge adiciona o segundo valor na variável do primeiro
}