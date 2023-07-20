## Quando usar workspaces?

Quando tivermos configurações distintas para um mesmo backend, dependendo do ambiente. As variáveis serão baseadas no valor do workspace. Podemos usar também para testar novas configurações sem alterar a infra que já está rodando em produção, p.e..

Cada um poderá ter seu próprio tfstate.

Comandos:

- ```terraform workspace show```

- ```terraform workspace list```

- ```terraform workspace new workspace_name```

- ```terraform workspace select workspace_name``` ->. mudar worskpace ativo

- ```terraform workspace delete workspace_name``` -> precisa estar em outro para conseguir deletar

    - ```terraform workspace delete workspace_name -force``` -> se não estiver vazio. Mas se fizer isso, os recursos ativos na AWS continuarão ativos e não mais serão gerenciados pelo Terraform. Indicado rodar ```terraform destroy``` antes disso para destruir toda a infra construída pelo workspace.

