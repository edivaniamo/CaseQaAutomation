*** Settings ***
Resource    ../../resources/commons.robot


*** Keywords ***
preencher formulario de cadastro ${valido}
    ${NOMEFAKE}    FakerLibrary.Name
    Wait Until Element is Visible    ${INPUT_NAME}
    Input Text    ${INPUT_NAME}    ${NOMEFAKE}

    ${SEGUNDO_NOME}
    Input Text    ${INPUT_LASTNAME}    ${SOBRENOME}

    Wait Until Element is Visible    ${INPUT_PASSWORD}
    Input Text    ${INPUT_PASSWORD}    ${PASSWORD}
    Click Element    ${INPUT_ADDRESS}
    Sleep    2

    Input Text    ${INPUT_ADDRESS}    ${ADDRESS}

    ${CIDADEFAKE}    FakerLibrary.City
    Input Text    ${INPUT_CITY}    ${CIDADEFAKE}

    IF    "${valido}" == "valido"
        Click Element    ${INPUT_STATE}
        Press Keys    ${INPUT_STATE}    ${STATE}
    END

    Input Text    ${INPUT_POSTAL_CODE}    ${POSTAL_CODE}

    Input Text    ${INPUT_MOBILE_PHONE}    ${MOBILE_PHONE}

    ${PALAVRAFAKE}    FakerLibrary.Word
    Input Text    ${INPUT_FUTURE_REFERENCE}    ${PALAVRAFAKE}

abre o site e clica em Sign
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Click Element    css=a.login

preencho email fake para cadastro
    ${EMAILFAKE}    FakerLibrary.Email
    Wait Until Element is Visible    ${INPUT_EMAIL}
    Input Text    ${INPUT_EMAIL}    ${EMAILFAKE}
    Click Element    ${BTN_CREATE_ACCOUNT}

seleciono o genero para cadastro
    Wait Until Element is Visible    ${CMB_TITLE}    timeout=15
    Select Checkbox    ${CMB_TITLE}

validar que esta na pagina de cadastro
    [Arguments]    ${texto}
    Wait Until Page Contains    ${texto}    timeout=15
    Element Should Contain    ${BTN_CREATE_ACCOUNT}    ${texto}

clicar em registrar o cadastro
    Click Element    ${BTN_REGISTRAR}

validar que o cadastro foi realizado com sucesso
    Page Should Contain    Welcome to your account. Here you can manage all of your personal information and orders.

validar que o cadastro nao foi realizado
    Page Should Contain    1. This country requires you to choose a State.
