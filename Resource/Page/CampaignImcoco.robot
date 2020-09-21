*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot


#Page Inaco
Open URL inaco
    Open URL and screenshot    ${url_inaco}    ${inaco_title}
