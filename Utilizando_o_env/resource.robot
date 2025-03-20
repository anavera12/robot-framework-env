*** Settings ***
Library    SeleniumLibrary
Resource    ../Settings/login/resource.robot

*** Keywords ***

Abrir o navegador
    Open Browser    browser=Chrome

Fechar o navegador
    Close Browser

Login standart_user
    Efetuar login

Login problem_user
    Set Global Variable    ${user_standart}    ${user_problem}
    Set Global Variable    ${password_standart}    ${password_problem}
    Efetuar login
