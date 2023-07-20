locals {

    teste_filepath = "teste.json"
    
    common_tags = {
        Name        = "Curso Terraform"
        Environment = var.environment
        Managedby   = "terraform"
        Owner       = "Camila Lopes"
    }
}