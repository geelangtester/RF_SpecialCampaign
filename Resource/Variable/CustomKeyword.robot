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

Check value then validate
    [Arguments]  ${locator}  ${input}
    Scroll Element Into View    ${locator}
    ${input}=  Get Text    ${locator}
    ${input}=  Convert To Integer    ${input}
    Set Test Variable    ${input}    ${input}

Evaluate value lower
    [Arguments]  ${value1}  ${value2}
    ${RESULT}        Evaluate    ${value1}<${value2}
    Should be True   ${RESULT}

Evaluate value greater
    [Arguments]  ${value1}  ${value2}
    ${RESULT}        Evaluate    ${value1}>${value2}
    Should be True   ${RESULT}
