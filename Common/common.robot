*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem

*** Keywords ***
Setup chromedriver
    Set Environment Variable    webdriver.chrome.driver    ${EXECDIR}$/chromedriver.exe

Begin Web Test
    SeleniumLibrary.Open Browser    \    headlesschrome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Set Selenium Speed    1sec

End Web Test
    Sleep    5sec
    Close All Browsers
