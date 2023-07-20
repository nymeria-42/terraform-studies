# Usando variáveis no Terraform

## Passando variáveis:

- `ENVIRONMENT_VARIABLE=value terraform plan/apply` -> com variáveis de ambiente
- `terraform plan/apply -var1="value1" -var2="value2"` -> com flags
- Criando um variable var1 {...} (pode ser num arquivo variables.tf) e passando como var.var1 no código principal
- Com arquivos especiais (.tfvars, .tfvars.json, *.auto.tfvars, *.auto.tfvars.jsons)


## Ordem de precedência para instanciação de variáveis*:

- arquivo terraform.tfvars
- arquivo terraform.tfvars.json
- arquivo *.auto.tfvars ou *.auto.tfvars.json
- flags -var ou -var-file

\* Obs: se uma mesma variável é atribuída diversas vezes, ele vai sobrescrevendo valores anteriores, usando, portanto, o último encontrado.


No arquivo variables.tf, pra uma variável ser opcional, basta ela ter um valor default. Caso contrário, será obrigatória e será requerida sempre que rodar.
