# Tema-Trigger
1)REPRODUZA O PRIMEIRO CÓDIGO SUGERIDO NO MYSQL WORKBENCH;

Com a criação do Trigger o  gatilho garante que a coluna "DataPedido"seja automaticamente preenchida com a data e hora atuais toda vez que alguém insere um novo registro na tabela "Pedidos":

![image](https://github.com/fabianor135/Tema-Trigger/assets/84815028/626aa873-f90d-477b-96f9-31564903dda8)

2)O gatilho "chk_minutos" é projetado para evitar que valores não válidos(ou seja, valores menores ou iguais a zero) sejam inseridos na coluna "minutos" da tabela "Filmes".Se um valor inválido for inserido,o gatilho redefine o valor como NULL. Isso ajuda a garantir a integridade dos dados na tabela conforme imagem ilustrada:

![image](https://github.com/fabianor135/Tema-Trigger/assets/84815028/d19502f7-05a2-4c64-940c-187277848bc9)

3)O gatilho log_deletions irá inserir informações sobre as deleções na tabela Log_deletions, incluindo o título do filme, a data e hora da exclusão e o usuário que executou a operação conforme imagem ilustrada

![image](https://github.com/fabianor135/Tema-Trigger/assets/84815028/23c896b5-7f81-4ad5-a508-dda7a71a9164)








