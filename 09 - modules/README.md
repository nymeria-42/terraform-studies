Módulos podem ser usados para criar abstrações. São containers para diferentes recursos. Os arquivos .tf formam o módulo root. Porém ele pode chamar outros módulos/pastas e conectá-los entre si passando valores de output como input para outros.

Sintaxe: 

    ```terraform
    module "module_name" {
        source = "./path/to/folder"

        ...
    }
    ```

No módulo temos como se fosse um **\_\_init\_\_** de uma classe, com os valores que devem ser passados para inicialização.


## Bloco dinâmico
Com esse recurso, podemos passar uma condição para um bloco ser criado ou não.

    ```
        dynamic "block_name" {
            ...
        }
    ```