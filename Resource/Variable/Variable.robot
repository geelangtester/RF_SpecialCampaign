*** Variables ***
#General Variable
${icon_masuk}  //img[@src='/static/media/image/svg/group-2.svg']
${btn_masuk}      //div[contains(text(),'Masuk')]    # button masuk
@{input_no_telp}    //input[@placeholder='08121234567']    08995097652    # input phone number
${btn_enter_no_telp}    //div[contains(text(),'Masuk dengan Nomor HP')]    # enter no telepon
${page_verif_otp}    //p[contains(text(),'Verifikasi OTP')]    # page verifikasi OTP
${otp_view}       //*[@class = 'android.widget.RelativeLayout']    # click button view on otp

#Page Inaco
${url_inaco}      https://special.stage.pomona.id/imcoco    # URL inaco
${btn_verifikasi_no}    //div[contains(text(),"Verifikasi Nomor HP")]    # Verifikasi nomor telepon yang telah di input
${btn_upload_struk}    //div[contains(text(),"Upload Struk")]    # Button upload struk
@{upload_struk_input}    //input    ${EXECDIR}//struk.jpg    # upload struk
${submit_struk}    css=#submit-receipt-text    # button submit struk
${text_struk_berhasil}    Selamat! Struk berhasil diupload    # Struk berhasil diupload
${btn_back_from_upload_struk_succes}    //div[contains(text(),"Kembali ke Halaman Utama")]    # button back ke page home setelah sukses upload
${get_struk_inproses}    //div[@class='basic__Wrapper-sc-1aa10sa-0 cyVAtb']//div[1]//div[1]//p[2]    # get struk yang sedang dalam proses
${btn_profile}    //img[@class='basic__ImageWrapper-sc-1aa10sa-5 eVviGw']    # button profile
${btn_edit_profile}    //a[@class='userCard__Link-sc-18xxvnp-3 exaXsJ']    # button edit profile
${btn_simpan_profile}    //div[contains(text(),"Simpan")]    # button simpan profile
${input_field}    //input    # Variable untuk semua input field, digunakan jika hanya ada satu input field

#page walls
${btn_masuk_walls}    button.jpaZmI > #undefined-text    # button masuk walls
