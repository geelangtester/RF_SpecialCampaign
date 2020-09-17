*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/variable.robot

*** Test Cases ***
Smoke Test Walls
    [Setup]    Begin Web Test
    Go To    ${url_Walss}
    SeleniumLibrary.Wait Until Page Contains Element    ${btn_masuk_walls}    timeout=30sec
    SeleniumLibrary.Click Element    ${btn_masuk_walls}
    SeleniumLibrary.Input Text    @{input_no_telp}
    SeleniumLibrary.Click Element    ${btn_enter_no_telp}
    SeleniumLibrary.Input Text    ${input_field}    123456
    SeleniumLibrary.Click Element    ${btn_verifikasi_no}
    SeleniumLibrary.Capture Page Screenshot    Berhasil login.png
    Sleep    10sec
    SeleniumLibrary.Scroll Element Into View    ${get_struk_inproses}
    ${struk_inporses}=    SeleniumLibrary.Get Text    ${get_struk_inproses}
    SeleniumLibrary.Wait Until Page Contains Element    ${btn_upload_struk}
    SeleniumLibrary.Choose File    @{upload_struk}
    Sleep    10sec
    SeleniumLibrary.Capture Page Screenshot    Berhasil upload struk.png
    SeleniumLibrary.Click Element    ${submit_struk}
    SeleniumLibrary.Page Should Contain    ${text_struk_berhasil}
    SeleniumLibrary.Click Element    ${btn_back_from_upload_struk_succes}
    SeleniumLibrary.Capture Page Screenshot    Berahsil submit struk.png
    SeleniumLibrary.Scroll Element Into View    ${get_struk_inproses}
    ${struk_inporses}=    SeleniumLibrary.Get Text    ${get_struk_inproses}
    SeleniumLibrary.Click Element    ${btn_profile}
    SeleniumLibrary.Click Element    ${btn_edit_profile}
    SeleniumLibrary.Capture Page Screenshot    edit profile.png
    SeleniumLibrary.Scroll Element Into View    ${btn_simpan_profile}
    SeleniumLibrary.Go Back
    SeleniumLibrary.Go Back
