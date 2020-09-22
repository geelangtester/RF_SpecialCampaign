*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot
Resource          GeneralKeyword.robot


*** Keywords ***
Open URL Weekly
    Open URL and screenshot    ${url_weekly}    ${title_weekly}

Check value weekly reward before
    Wait Until Element Is Visible    ${get_reward_inproses}
    Check value then validate    ${get_reward_inproses}  reward_before
    Set Test Variable  ${reward_before}   ${input}

Check value weekly reward after
    Wait Until Element Is Visible    ${get_reward_inproses}
    Check value then validate    ${get_reward_inproses}  reward_after
    Set Test Variable  ${reward_after}   ${input}

Check detail struk weekly
    Go To    ${url_weekly_receipt}
    Wait Scroll Click    ${btn_salin}
    Capture Page Screenshot  DetailStruk.png
    Go Back
    Go Back
