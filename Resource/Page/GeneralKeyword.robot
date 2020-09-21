*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Variable/CustomKeyword.robot
Resource          ../Variable/Variable.robot

*** Keywords ***
Login special campaign
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
    ${struk_inporses_before}=   Get Text    ${get_struk_inproses}
    Choose File    @{upload_struk_input}
    ${struk_before}=  Convert To Number   ${struk_inporses_before}
    Set Test Variable    ${struk_before}    ${struk_before}
    Log    ${struk_before}

Submit struk
    Wait Scroll Click  ${submit_struk}
    Capture Page Screenshot  BerhasilUploadStruk.png
    Page Should Contain  ${text_struk_berhasil}
    Wait Scroll Click  ${btn_back_from_upload_struk_succes}

Check receipt upload sucsess
    Scroll Element Into View    ${get_struk_inproses}
    ${struk_inporses_after}=    Get Text    ${get_struk_inproses}
    ${struk_after}=  Convert To Number    ${struk_inporses_after}
    Log    ${struk_after}
    Log    ${struk_before}
    ${RESULT}        Evaluate    ${struk_before}<${struk_after}
    Should be True   ${RESULT}

Update user profile
    Wait Scroll Click    ${btn_profile}
    Wait Scroll Click    ${btn_edit_profile}
    ${random_name}=  Generate Random String  8  [UPPER]
    Wait Scroll Input    ${input_name}    ${random_name}
    Set Test Variable    ${random_name}    ${random_name}
    Wait Scroll Click    ${btn_simpan_profile}

Check edit value
    Wait Scroll Click    ${btn_edit_profile}
    ${current_name}=  Get Text    ${input_name_value}
    log  ${current_name}
    Evaluate    ${current_name}=${random_name}
    Capture Page Screenshot    EditProfile.png

Check notification
    Wait Scroll Click    ${btn_profile}
    Wait Scroll Click    ${btn_notifikasi}
    Capture Page Screenshot  NotifikasiList.png
    Go To    ${url_inaco_receipt}
    Wait Scroll Click    ${btn_salin}
    Capture Page Screenshot  DetailStruk.png
    Go Back
    Go Back

Check value reward before
    Check value then validate    ${get_reward_inproses}  reward_before
    Set Test Variable  ${reward_before}   ${input}

Claim reward
    Wait Scroll Click    ${btn_hadiah}
    Wait Scroll Click    ${btn_tukar_poin}
    Wait Scroll Click    ${btn_ya}
    Wait Scroll Click    ${btn_close}

Check value reward after
    Check value then validate    ${get_reward_inproses}  reward_after
    Set Test Variable  ${reward_after}   ${input}

Compare value reward
    Log Many    ${reward_before}  ${reward_after}
    Evaluate value greater  ${reward_before}  ${reward_after}
