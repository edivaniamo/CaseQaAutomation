*** Settings ***
Documentation
Resource            ../steps/apiSteps.robot

*** Test Cases ***
##POST
Cenário 1: Acessar API e validar response 200
    Dado que envio uma requisição para a API Petfinder
    Quando informo credenciais validas
    Entao devo receber como resposta o codigo 200

##GET
Cenário 2: Validar lista dos animais por ID
    Dado que envio uma requisição para a API Petfinder
    Quando informo credenciais validas
    E obtenho token de sessao consulto a lista de animais
    Então devo receber a quantidade de campos do id consultado

##POST
Cenário : Acessar API e validar response 401
    Dado que envio uma requisição para a API Petfinder
    Quando informo credenciais invalidas
    Entao devo receber como resposta o codigo 401


    