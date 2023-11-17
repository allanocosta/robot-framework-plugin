*** Settings ***
Documentation       Resource com as keywords gerais do projeto


*** Keywords ***
# LOGS
Ocultar Logs
    ${prev_lvl}             Set Log Level           NONE
    Set Suite Variable      ${prev_lvl}

Restaurar Logs
    IF    $prev_lvl != 'NONE'    Set Log Level    ${prev_lvl}
