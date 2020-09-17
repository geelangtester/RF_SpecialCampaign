*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${EXECDIR}$/chromedriver.exe

Begin Web Test
    Open Browser    \    headlesschrome
    Maximize Browser Window
    Set Selenium Speed    1sec

End Web Test
    Sleep    5sec
    Close All Browsers
