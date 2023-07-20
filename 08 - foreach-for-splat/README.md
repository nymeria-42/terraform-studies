# Meta-arguments

Pode ser usado em qualquer tipo de recurso no Terraform

Por padrão, um bloco de recurso configura um objeto de infra-estrutura. No entanto, podemos desejar configurar múltiplos objetos similares sem escrever um bloco separado para cada um. Para isso podemos usar **count** ou **for_each**

## Count
Aceita um número como argumento ou uma expressão que retorna um número

## Foreach
Aceita map ou um conjunto de strings.

Ex:

```
for_each = toset(["Todd", "James", "Alice", "Dottie"])```


ou 

```
for_each = {
    a_group = "eastus"

    another_group = "westus2!
}```

Para acessar os valores para cada iteração, usamos **each.key** e **each.value**. No caso do set, temos **each.key==each.value**.


# Expressões
Podem ser usadas dentro ou fora dos recursos. É legal testar no **terraform console** essas expressões.


## For Operator
Pode iterar sobre uma lista ou um map. Também pode ser usado pra retornar uma lista ou um map. Pode ser usado um if dentro dessas expressões para filtrar valores.

Exemplos:

- ```[for file in files: regex(".[0-9a-z]+$, file)]``` -> o que está depois de : é o que será inserido na lista.

- ```{ for k, v in aws_instance.this : k => v.tags.Name }``` -> nesse caso aws_instance.this é um map, pois foi criado com for_each. E também retorna um map com k como chave e v.tags.Name como value.

- ```{ for f in local.file_extensions : f => upper(f) if f != ".json" }``` -> retornando somente arquivos diferentes de json.

## Splat Operator
Atalho para o for quando queremos retornar uma lista ou propriedade dela.

- ```[for o in var.list: o.id] == var.list[*].id```
