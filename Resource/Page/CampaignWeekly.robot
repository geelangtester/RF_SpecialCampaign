*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot
Resource          GeneralKeyword.robot


*** Keywords ***
Open URL Weekly
    Open URL and screenshot    ${url_weekly}    ${title_weekly}
