O Terraform utiliza o arquivo terraform.tfstate para gerenciar os seus recursos. Recursos criados com o terraform geram esse arquivo e ele é utilizado para modificar ou destruir tais recursos.

Para gerenciar algum recurso que não foi criado diretamente com o Terraform, é necessário importá-lo.

Para cada recurso, temos um modo de importar, sendo necessário ler a documentação.


Ex:

- Inserir no código:

    ```
    resource "aws_s3_bucket" "ex_manual" {
        bucket = nome_bucket
    }
    ```

- Comando CLI:

    ```terraform import aws_s3_bucket.ex_manual nome_bucket_na_aws``` -> agora o bucket está no tfstate, podendo ser gerenciado pelo Terraform.