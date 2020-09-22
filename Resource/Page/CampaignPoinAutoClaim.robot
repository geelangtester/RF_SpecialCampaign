*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot
Resource          GeneralKeyword.robot


*** Keywords ***
Open URL weekly
    Open URL and screenshot    ${url_weekly}    ${title_weekly}

Check detail struk weekly
    Go To    ${url_weekly_receipt}
    Wait Scroll Click    ${btn_salin}
    Capture Page Screenshot  DetailStruk.png
    Wait Scroll Click    ${go_to_home}
