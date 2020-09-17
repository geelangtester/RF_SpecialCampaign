*** Variables ***
#landing page
${btn_masuk}      //div[contains(text(),'Masuk')]    # button masuk atau daftar
${field_phone_number}    name=phone_number    # field input phone number
${URL_sunpride}    https://sunpride.stage.pomona.id/    # URL sunpride
${close_youtueb_pop_up}    css=div.cnWXUb .systemIcons__SVG-sc-76ljzx-1    # close youtube pop up
${login_lanjut}    //div[.='Lanjut dengan nomor HP']    # button lanjut setelah login
@{input_otp}      //input[@placeholder="xxxxxxx"]    123456    # Input field OTP
@{phone_number}    name = phone_number    08995097651    # Input phone number
${verifikasi_otp}    //div[contains(text(),'Verifikasi')]    # button OTP
