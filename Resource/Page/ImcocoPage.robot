*** Settings ***
Library           SeleniumLibrary
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot

*** Keywords ***
Login Imcoco
    Go To    ${url_inaco}
    Capture Page Screenshot  HomePage.png
    Wait Scroll Click    ${icon_masuk}
    Capture Page Screenshot  LoginPage.png
    Wait Scroll Click    ${btn_masuk}
    Capture Page Screenshot  InputPhone.png
    Wait Scroll Input    @{input_no_telp}
    Wait Scroll Click    ${btn_enter_no_telp}
    Capture Page Screenshot  InputOTP.png
    Wait Scroll Input    ${input_field}    123456
    Wait Scroll Click    ${btn_verifikasi_no}
    Capture Page Screenshot    BerhasilLogin.png

Upload struk
    Wait Until Element Is Visible  ${get_struk_inproses}
    ${struk_inporses_before}=   SeleniumLibrary.Get Text    ${get_struk_inproses}
    Choose File    @{upload_struk_input}
    ${struk_before}=  Convert To Number   ${struk_inporses_before}
    Set Test Variable    ${struk_before}    ${struk_before}
    Log    ${struk_before}

Submit struk
    Wait Scroll Click  ${submit_struk}
    Capture Page Screenshot  BerhasilUploadStruk.png
    Page Should Contain  ${text_struk_berhasil}
    Wait Scroll Click  ${btn_back_from_upload_struk_succes}

Check receipt upload succes
    Scroll Element Into View    ${get_struk_inproses}
    ${struk_inporses_after}=    SeleniumLibrary.Get Text    ${get_struk_inproses}
    ${struk_after}=  Convert To Number    ${struk_inporses_after}
    Log    ${struk_after}
    Log    ${struk_before}
    ${RESULT}        Evaluate    ${struk_before}<${struk_after}
    Should be True   ${RESULT}






    # SeleniumLibrary.Click Element    ${btn_profile}
    # SeleniumLibrary.Click Element    ${btn_edit_profile}
    # SeleniumLibrary.Capture Page Screenshot    edit profile.png
    # SeleniumLibrary.Scroll Element Into View    ${btn_simpan_profile}
    # SeleniumLibrary.Go Back
    # SeleniumLibrary.Go Back
