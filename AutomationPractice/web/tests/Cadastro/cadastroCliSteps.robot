*** Settings ***
Resource        ../../resources/commons.robot

*** Keywords *** 
Dado que quero acessar a pagina home do site da loja
   abre o site e clica em Sign

Encerrar teste e capturar evidencia
    Capture Page Screenshot
    Close All Browsers

E Preencho email aleatório para criar conta
    preencho email fake para cadastro
      
Quando sou redirecionado pagina de cadastro "${texto}"
    validar que esta na pagina de cadastro    ${texto}

E seleciono opcao title
    seleciono o genero para cadastro
      
Então clico em registrar e o cadastro ${texto}
    clicar em registrar o cadastro

E preencho o formulario de cadastro com informações válidas
    preencher formulario de cadastro valido

E preencho o formulario de cadastro com informações invalidas
    preencher formulario de cadastro invalido
    




