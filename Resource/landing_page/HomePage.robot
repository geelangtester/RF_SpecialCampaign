*** Settings ***
Library           SeleniumLibrary
Resource          ../Variable/VariableLandingPage.robot
Resource          ../Variable/VariableHomePage.robot
Resource          ../Variable/CustomKeyword.robot

*** Keywords ***
Onboarding
    Wait Scroll Click    ${onboarding_lanjutkan}
    Wait Scroll Click    ${onboarding_lanjutkan}
    Wait Scroll Click    ${onboarding_lanjutkan}
    Wait Scroll Click    ${onboarding_mulai_campaign}

Upload Receipt
    Wait Scroll Click    ${btn_uploadStruk}
    Wait Scroll Click    ${btn_upload_struk_selanjutnya}
    Wait Scroll Click    ${btn_upload_struk_selanjutnya}
    Choose File    ${upload_receipt}    ${EXECDIR}${/}\Resource\\File\\Receipt.jpg
    Wait Scroll Click    ${submit_receipt}
    Wait Scroll Click    ${goal_1portion}
    Wait Scroll Click    ${back_home_page}
