*** Settings ***
Library  SeleniumLibrary
Library  String
Library  OperatingSystem

*** Variables ***
${CHROMEDRV}     C:/Program Files/Chrome Driver/chromedriver.exe
${LoginUrl}      https://app.vwo.com/
${BROWSER}       Chrome
${EmailAddress}  diyyalao33@gmail.com
${Password}      Raina143@

*** Keywords ***
Setup chromedriver
    [Documentation]  Setup chromedriver environment variable
    Set Environment Variable  webdriver.chrome.driver  ${CHROMEDRV}

Open Browser To Login Page
    Setup chromedriver
    ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys
    Call Method  ${options}  add_argument  incognito
    Create Webdriver  Chrome  options=${options}
    Go To  ${LoginUrl}
    Maximize Browser Window

Login Using Valid Credentials
    Wait Until Element Is Visible  //input[@id="login-username"]  10
    Input Text  //input[@id="login-username"]  ${EmailAddress}
    Wait Until Element Is Visible  id:login-password  10
    Input Text  //input[@id="login-password"]  ${Password}
    Wait Until Page Contains Element  //button[@id='js-login-btn']  40
    Click Element  //button[@id='js-login-btn']

    Sleep  3s

PreCondition
    [Documentation]  This is the PreCondition
    Open Browser To Login Page

PostCondition
    Close Browser
