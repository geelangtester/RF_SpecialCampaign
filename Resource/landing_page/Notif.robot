*** Settings ***
Library           SeleniumLibrary
Resource          ../Variable/VariableHomePage.robot
Resource          ../Variable/CustomKeyword.robot

*** Keywords ***
Check Notif
    Wait Scroll Click    ${notif}
    Get Text    ${get_point}
