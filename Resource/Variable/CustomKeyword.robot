*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Wait Scroll Click
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}    5
    Click Element    ${locator}

Wait Scroll Input
    [Arguments]    ${locator}    ${input}
    Wait Until Element Is Visible    ${locator}
    Input Text    ${locator}    ${input}  True
