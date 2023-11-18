*** Settings ***
Documentation       Suite de testes de exemplo

Resource            ${CURDIR}/../resources/base.resource


*** Test Cases ***
Deve Logar No Report
    Log                     Este log deve ser exibido apenas no report

Deve Logar No Console
    Log To Console          Este log deve ser exibido apenas no console
