Implementa o lifecycle padrão de um recurso, mas não faz nada além disso. Não altera, cria ou deletar a infra de verdade.

Tem muita utilidade quando combinado com alguns provisioners. Por exemplo, o **local-exec**. Ele invoca algum comando na máquina que está rodando o Terraform. 

Podemos configurar alguns triggers, para detectar modificações.

Tem, por exemplo, o **remote-exec** que pode ser usado para executar comandos nas máquinas criadas. Mas, nesse caso, o mais indicado seria usar **user data scripts**.

Terraform indica que eles devem ser utilizados como últimos recursos. Pois para a maioria das situações existem alternativas melhores.