*** Settings ***

Library    SeleniumLibrary
Resource    ../auth/env.robot

*** Keywords ***

Efetuar login
    Go To    url=https://www.saucedemo.com/
    Wait Until Page Contains    text=Accepted usernames are
    Input Text    (//input[@id='user-name'])[1]    ${user_standart} 
    Input Text    //input[@id='password']    ${password_standart}
    Click Button    Login