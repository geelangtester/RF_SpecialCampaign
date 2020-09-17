*** Settings ***
Resource          ../Common/common.robot
Resource          ../Resource/variable.robot

*** Test Cases ***
Smoke Test Original Source
    [Setup]    Begin Web Test
    Go To    ${url_OriginalSource}
    SeleniumLibrary.Wait Until Page Contains Element    ${btn_masuk}    timeout=30sec
    SeleniumLibrary.Click Element    ${upload_struk}
    SeleniumLibrary.Click Element    ${btn_msk_or_profile}
    SeleniumLibrary.Click Element    ${btn_masuk}
    SeleniumLibrary.Input Text    @{input_no_telp}
    SeleniumLibrary.Click Element    ${btn_enter_no_telp}
    SeleniumLibrary.Input Text    ${input_field}    123456
    SeleniumLibrary.Click Element    ${btn_verifikasi_no}
    SeleniumLibrary.Capture Page Screenshot    Berhasil login.png
    SeleniumLibrary.Wait Until Page Contains Element    ${btn_upload_struk}
    SeleniumLibrary.Choose File    @{upload_struk_input}
    Sleep    10sec
    SeleniumLibrary.Capture Page Screenshot    Berhasil upload struk.png
    SeleniumLibrary.Click Element    ${submit_struk}
    SeleniumLibrary.Page Should Contain    ${text_struk_berhasil}
    SeleniumLibrary.Click Element    ${btn_back_from_upload_struk_succes}
    SeleniumLibrary.Capture Page Screenshot    Berahsil submit struk.png
    SeleniumLibrary.Click Element    ${btn_profile_original_source}
    SeleniumLibrary.Click Element    ${btn_edit_profile}
    SeleniumLibrary.Capture Page Screenshot    edit profile.png
    SeleniumLibrary.Scroll Element Into View    ${btn_simpan_profile}
    SeleniumLibrary.Go Back
    SeleniumLibrary.Go Back
    SeleniumLibrary.Click Element    ${btn_notif_original_source}
    SeleniumLibrary.Capture Page Screenshot    Notif orignal source.png
    SeleniumLibrary.Go Back
