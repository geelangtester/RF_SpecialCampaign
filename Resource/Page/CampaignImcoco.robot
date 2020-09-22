*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot

*** Keywords***
Open URL inaco
    Open URL and screenshot    ${url_inaco}    ${inaco_title}

Check value inaco reward before
    Wait Until Element Is Visible    ${get_reward_inproses}
    Check value then validate    ${get_reward_inproses}  reward_before
    Set Test Variable  ${reward_before}   ${input}

Check value inaco reward after
    Wait Until Element Is Visible    ${get_reward_inproses}
    Check value then validate    ${get_reward_inproses}  reward_after
    Set Test Variable  ${reward_after}   ${input}

Check detail struk inaco
    Go To    ${url_inaco_receipt}
    Wait Scroll Click    ${btn_salin}
    Capture Page Screenshot  DetailStruk.png
    Go Back
    Go Back
