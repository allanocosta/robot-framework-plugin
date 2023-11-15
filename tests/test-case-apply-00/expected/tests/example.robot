*** Settings ***
Documentation       Suite de testes de exemplo

Resource            ${CURDIR}/../resources/base.resource


*** Test Cases ***
Deve Logar Url Base No Report
    Log    ${BASE_URL}

Deve Logar Url Base No Console
    Log To Console    ${BASE_URL}

Deve Logar Massa De Sucesso No Report
    ${FILE_NAME}    Obter Fixtures    example    logs

    Log    ${FILE_NAME}[sucesso]

Deve Logar Massa De Sucesso No Console
    ${FILE_NAME}    Obter Fixtures    example    logs

    Log To Console    ${FILE_NAME}[sucesso]

Deve Logar Massa De Usuário Inválido No Report
    ${FILE_NAME}    Obter Fixtures    example    logs

    Log    ${FILE_NAME}[invalid_userName]

Deve Logar Massa De Usuário Inválido No Console
    ${FILE_NAME}    Obter Fixtures    example    logs

    Log To Console    ${FILE_NAME}[invalid_userName]

Deve Logar Massa De Password Inválido No Report
    ${FILE_NAME}    Obter Fixtures    example    logs

    Log    ${FILE_NAME}[invalid_password]

Deve Logar Massa De Password Inválido No Console
    ${FILE_NAME}    Obter Fixtures    example    logs

    Log To Console    ${FILE_NAME}[invalid_password]
