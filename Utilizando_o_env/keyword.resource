*** Settings ***
Library    SeleniumLibrary
Resource    ../Settings/login/login.resource

*** Keywords ***

Abrir o navegador
    Open Browser    browser=Chrome

Fechar o navegador
    Close Browser

Login standart_user
    Efetuar login

Login problem_user 
    Set Test Variable    ${user_standart}    ${user_problem}
    Set Test Variable    ${password_standart}    ${password_problem}
    Efetuar login

