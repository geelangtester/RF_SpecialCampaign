*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Wait Scroll Click
    [Arguments]    ${locator}
    SeleniumLibrary.Scroll Element Into View    ${locator}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}    5
    SeleniumLibrary.Mouse Over    ${locator}
    SeleniumLibrary.Click Element    ${locator}

Wait Scroll Input
    [Arguments]    ${locator}    ${input}
    SeleniumLibrary.Wait Until Element Is Visible    ${locator}
    SeleniumLibrary.Mouse Over    ${locator}
    SeleniumLibrary.Input Text    ${locator}    ${input}  True
