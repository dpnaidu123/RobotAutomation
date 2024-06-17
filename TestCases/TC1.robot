*** Settings ***
Documentation  Tc1-print the Dashboard Message
Library       SeleniumLibrary
Library       String
Library       DateTime
Variables     ../Variables/PathVariables/TC1.py
Resource      ../Resources/common.robot
Resource      ../Keywords/keywordsTC1.robot

Test Setup    PreCondition
Test Teardown  PostCondition

*** Test Cases ***
To Verify the Correct Dashboard Message after Login
    [Documentation]  To Verify the Correct Dashboard Message after Login
    Login Using Valid Credentials
    Verify that Dashboard Message after Login

Compare the Dashboard Message
    [Documentation]  Compare the dashboard message with the expected value
    # Add steps to compare the dashboard message here in a
