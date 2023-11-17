*** Settings ***
Documentation       Suite de testes de exemplo

Resource            ${CURDIR}/../resources/base.resource


*** Variables ***
${WEB_URL}      ${EMPTY}


*** Test Cases ***
Deve Logar Url Base No Report
    Log                     ${WEB_URL}

Deve Logar Url Base No Console
    Log To Console          ${WEB_URL}
