# language: pt
  
Funcionalidade: Abrir Conta
  Sendo um cliente
  Posso abrir uma nova Conta
  Para que eu possa fazer depositos e guardar meu dinheiro
  
  # Sprint 1
  # Nome*, CPF*, Email*, Celular*, Deposito Inicial

@deposito_inicial
Cenario: Abrir conta com deposito inicial
  
  Dado que eu tenho cadastro de novo cliente
    E o deposito inicial desse cliente é de 100
  Quando faço o cadastro de nova conta
  Então vejo a mensagem "Sua conta foi cadastrada com sucesso"
  
Cenario: Abrir conta sem deposito incial
  
   Dado que eu tenho cadastro de novo cliente
    E o deposito inicial desse cliente é de 0 
   Quando faço o cadastro de nova conta
   Então vejo a mensagem "Sua conta foi cadastrada com sucesso"

@duplicado
Cenario: Já existe uma conta para este CPF
  
   Dado que eu tenho um CPF ja cadastrado
   Quando faço o cadastro de nova conta
   Então vejo a mensagem "Ja existe uma conta cadastrada com esse CPF"