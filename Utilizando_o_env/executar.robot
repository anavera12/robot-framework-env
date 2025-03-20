*** Settings ***

Resource    ./keyword.resource
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Logar com usuário Standart_user
    [Documentation]    Este cenário tem foco de mostrar como
    ...    utilizar o login através do env como variáveis 
    ...    locais de ambiente
    [Tags]    login_standart
    Login standart_user

Logar com usuário Problem_user
    [Documentation]    Este cenário tem foco de mostrar como
    ...    utilizar o login através do env transformando as 
    ...    variáveis locais em variáveis globais
    [Tags]    login_problem
    Login problem_user

