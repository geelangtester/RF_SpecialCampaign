*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot
Resource          GeneralKeyword.robot


*** Keywords ***
Open URL wooah
    Open URL and screenshot    ${url_wooah}    ${title_wooah}

Check detail struk wooah
    Go To    ${url_wooah_receipt}
    Wait Scroll Click    ${btn_salin}
    Capture Page Screenshot  DetailStruk.png
    Wait Scroll Click    ${go_to_home}
