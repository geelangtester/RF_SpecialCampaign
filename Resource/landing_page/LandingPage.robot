*** Settings ***
Library           SeleniumLibrary
Resource          ../Variable/VariableLandingPage.robot
Resource          ../../Common/common.robot
Resource   ../Variable/CustomKeyword.robot

*** Keywords ***
User Login
    Go To    ${URL_sunpride}
    Wait Scroll Click    ${close_youtueb_pop_up}
    Wait Scroll Click    ${btn_masuk}
    Wait Scroll Input    @{phone_number}
    Wait Scroll Click    ${login_lanjut}
    Wait Scroll Input    @{input_otp}
    Wait Scroll Click    ${verifikasi_otp}
