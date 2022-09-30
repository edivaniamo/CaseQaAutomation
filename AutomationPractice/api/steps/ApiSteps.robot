*** Settings ***
Documentation
Resource                    ../resources/ApiBase.robot

*** Keywords ***
Dado que envio uma requisição para a API Petfinder
    No Operation

Quando informo credenciais validas
    consultar API Petfinder e gerar token_access    ${CLIENTE_ID}    ${CLIENTE_SECRET}

Quando informo credenciais invalidas
    Run Keyword And Ignore Error
    ...    consultar API Petfinder e gerar token_access
    ...    ${CLIENTE_ID_INVALIDO}    ${CLIENTE_SECRET_INVALIDO}  

Entao devo receber como resposta o codigo ${STATUS}
    IF    "${STATUS}" == "200"
        Status Should Be                ${STATUS_SUCCESS}
    ELSE
        Status Should Be                ${STATUS_FAIL}
    END

E obtenho token de sessao consulto a lista de animais
    consultar e receber a lista de animais cadastrados    ${ID-57672299}
    
Então devo receber a quantidade de campos do id consultado
    ${lista_json}                    validarJsonListaAnimalPorId
    ${tamanho}                       Get Dictionary Keys         ${resp_animal}
    validar lista response com lista fixa    ${lista_json}    ${tamanho}    
    