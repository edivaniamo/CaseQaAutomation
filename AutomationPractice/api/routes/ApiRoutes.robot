*** Settings ***
Documentation
Resource                                    ../resources/ApiBase.robot

*** Keywords ***
#CHAMADA POST
consultar API Petfinder e gerar token_access
    [Arguments]                ${cli_id}    ${cli_secret}
    ${headers}                 montarHeaderPostToken    ${cli_id}    ${cli_secret}   
    ${response}                POST
    ...                        ${URL_BASE}${ENDPOINT_TOKEN}
    ...                        ${headers}
    ${token_sessao}            Set Variable    ${response.json()}[access_token]
    Set Test Variable          ${token_sessao}

#CHAMADA GET
consultar e receber a lista de animais cadastrados
    [Arguments]               ${ID}
    ${headers}                Montar Header Get Animals    token=${token_sessao}
    ${resp_animal}            GET
    ...                       ${URL_BASE}${ENDPOINT_ANIMALS}/${ID}    
    ...                       headers=${headers}
    ${resp_animal}                  Set Variable        ${resp_animal.json()}[animal]
    Set Test Variable         ${resp_animal}

validar lista response com lista fixa  
    [Arguments]        ${objJson}    ${lista_validacao}
    FOR    ${l1-element}    ${l2-element}    IN ZIP    ${objJson}    ${lista_validacao}
        List Should Contain Value    ${objJson}     ${l2-element}  
    END

    

    