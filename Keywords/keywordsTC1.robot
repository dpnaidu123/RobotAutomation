*** Settings ***
Documentation  TC1
Library       SeleniumLibrary
Library       String
Variables     ../Variables/PathVariables/TC1.py
Resource      ../Resources/common.robot

*** Keywords ***
Verify that Dashboard Message after Login
    Wait Until Page Contains Element  ${userNameOnDashboard}  50
    ${message}=  Get Text  ${userNameOnDashboard}
    Log  The dashboard message is: ${message}
