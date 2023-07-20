Para garantir consistência entre diversos usuários, quando trabalhando em time, o arquivo local terraform.tfstate não é mais suficiente. Porque é necessário que cada usuário se certifique de estar usando o último state antes de rodar e ainda garantir que ninguém rode ao mesmo tempo (problemas de consistência e concorrência).

Para isso é possível escrever o estado remotamente, podendo compartilhá-lo entre todos os membros de um time.

Indicado habilitar versionamento do bucket para permitir recuperação de estados em caso de deleções acidentais ou erro humano.

Ele pode usar locking para prevenir problemas de concorrência sobre um mesmo estado.

Comandos:
```cd remote-state-bucket && terraform init && terraform apply``` - gera o bucket_name como output

- No arquivo backend.hcl, fornecer o bucket_name e rodar:

    ```terraform init -backend=true -backend-config="backend.hcl"```

