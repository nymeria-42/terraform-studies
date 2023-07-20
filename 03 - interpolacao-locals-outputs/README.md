## Interpolação
Usado para concatenar expressões com strings. Avalia expressão entre ${} e converte para string, se necessário.

## Locals
- Usados para reduzir redundância no código
- São imutáveis
- Funcionam como variáveis  locais

## Outputs
- Como se fossem os valores de "return" de funções
- Gera outputs na tela, pode ser usado na implementação de módulos e para configurações via remote state.
- Para visualizar os outputs, pode usar **teraform output** ou **teraform output -json** para ver todos outputs, **teraform output output_name** para ver um específico. Podemos, ainda, salvar com **teraform output -json > path/to/save/outputs.json** 

