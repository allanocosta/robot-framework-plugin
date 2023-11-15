*** Settings ***
Documentation       Resource com as keywords gerais do projeto

Library             JSONLibrary


*** Keywords ***
# LOGS
Ocultar Logs
    ${prev_lvl}    Set Log Level    NONE
    Set Suite Variable    ${prev_lvl}

Restaurar Logs
    IF    $prev_lvl != 'NONE'    Set Log Level    ${prev_lvl}

# KEYWORDS JSON FILES

Obter Fixtures
    [Arguments]    ${FILE_NAME}    ${SCENARIO}

    ${DATA}    Load Json From File
    ...    ${CURDIR}/../fixtures/${FILE_NAME}.json
    ...    encoding=utf-8
    Log    ${DATA}
    RETURN    ${DATA}[${SCENARIO}]

# KEYWORDS EXAMPLE
