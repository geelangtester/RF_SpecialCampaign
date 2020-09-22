*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot

*** Keywords***
Open URL inaco
    Open URL and screenshot    ${url_inaco}    ${inaco_title}

Check detail struk inaco
    Go To    ${url_inaco_receipt}
    Wait Scroll Click    ${btn_salin}
    Capture Page Screenshot  DetailStruk.png
    Wait Scroll Click    ${go_to_home}
