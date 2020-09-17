*** Settings ***
Resource          ../Variable/VariableTukarPoinPage.robot
Library           SeleniumLibrary
Resource          HomePage.robot
Resource          ../Variable/CustomKeyword.robot

*** Keywords ***
Tukar Poin
    Wait Scroll Click    ${btn_tukar_poin}
    Wait Scroll Click    ${btn_tukar_hadiah}
    Wait Scroll Click    ${btn_redeem}
    Wait Scroll Click    ${back_home_page}
