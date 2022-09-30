*** Settings ***
Documentation            
Resource           cadastroCliSteps.robot

Test Setup    Dado que quero acessar a pagina home do site da loja
Test Teardown    Encerrar teste e capturar evidencia     


*** Test Cases ***
Cenario 1: Realizar cadastro na loja com sucesso
    E Preencho email aleatório para criar conta
    Quando sou redirecionado pagina de cadastro "Create an account"
    E preencho o formulario de cadastro com informações válidas
    Então clico em registrar e o cadastro realizado com sucesso

Cenario 2: Realizar cadastro na loja sem sucesso
    E Preencho email aleatório para criar conta
    Quando sou redirecionado pagina de cadastro "Create an account"
    E preencho o formulario de cadastro com informações invalidas
    Então clico em registrar e o cadastro não é realizado