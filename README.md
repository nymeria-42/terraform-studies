# Comandos principais

- ```terraform -h ``` - visualizar o help

- ``` terraform init``` - preparar o diretório, instalando plugins requeridos

- ```terraform validate``` - verificar sintaxe e consistência dos arquivos (não acessa nenhum serviço remoto) 

- ```terraform plan``` - visualizar o plano gerado, com as mudanças que serão efetuadas
    - ```terraform plan -out="tfplan.out"``` -  gera um arquivo tfplan.out com as ações que serão performadas.

- ```terraform fmt``` - formatar arquivos de acordo com a convenção da linguagem Terraform 

    - ```terraform fmt -recursive``` - verifica também arquivos de pastas dentro do repositório

- ```terraform apply``` - criar ou atualizar a infraestrutura. Obs: se o nome mudar ele vai destruir o anterior e criar um novo; caso contrário, ele só atualiza.
    - ```terraform apply -auto-approve``` -  roda sem pedir confirmação, bom rodar após verificar com o **terraform plan**
    - ```terraform apply "tfplan.out"``` -  roda a partir do arquivo tfplan.out

- ```terraform destroy``` - destruir as infraestruturas criadas anteriormente

- ```terraform show``` - mostar o state atual, que é usado para modificar ou destruir os recursos criados


- ```terraform console``` - entra no modo interativo, podendo ser usado para verificar atributos de recursos criados


Repositório feito para acompanhamento do Curso de Terraform com AWS disponível em https://www.youtube.com/playlist?list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP. 