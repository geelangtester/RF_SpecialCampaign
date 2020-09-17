*** Settings ***
Library           SeleniumLibrary
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot

*** Keywords ***
Login Imcoco
    Go To    ${url_inaco}
    Wait Scroll Click    ${icon_masuk}
    Wait Scroll Click    ${btn_masuk}
    Wait Scroll Input    @{input_no_telp}
    Wait Scroll Click    ${btn_enter_no_telp}
    Wait Scroll Input    ${input_field}    123456
    Wait Scroll Click    ${btn_verifikasi_no}
    Capture Page Screenshot    Berhasil login.png

Upload struk
    Wait Until Element Is Visible  ${get_struk_inproses}
    ${struk_inporses_before}=   SeleniumLibrary.Get Text    ${get_struk_inproses}
    Choose File    @{upload_struk_input}
    Convert To Integer    ${struk_inporses_before}

Submit struk
    Wait Scroll Click  ${submit_struk}
    Capture Page Screenshot  Berhasil upload struk.png
    Page Should Contain  ${text_struk_berhasil}
    Wait Scroll Click  ${btn_back_from_upload_struk_succes}
    Capture Page Screenshot    Berahsil submit struk.png

Check receipt upload succes
    Scroll Element Into View    ${get_struk_inproses}
    ${struk_inporses_after}=    SeleniumLibrary.Get Text    ${get_struk_inproses}
    Convert To Integer    item



    # SeleniumLibrary.Click Element    ${btn_profile}
    # SeleniumLibrary.Click Element    ${btn_edit_profile}
    # SeleniumLibrary.Capture Page Screenshot    edit profile.png
    # SeleniumLibrary.Scroll Element Into View    ${btn_simpan_profile}
    # SeleniumLibrary.Go Back
    # SeleniumLibrary.Go Back
