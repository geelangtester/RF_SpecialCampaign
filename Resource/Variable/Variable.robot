*** Variables ***
#General Variable
${icon_masuk}  //img[@src='/static/media/image/svg/group-2.svg']
${btn_masuk}      //div[contains(text(),'Masuk')]    # button masuk
@{input_no_telp}    //input[@placeholder='08121234567']    08995097652    # input phone number
${btn_enter_no_telp}    //div[contains(text(),'Masuk dengan Nomor HP')]    # enter no telepon
${page_verif_otp}    //p[contains(text(),'Verifikasi OTP')]    # page verifikasi OTP
${otp_view}       //*[@class = 'android.widget.RelativeLayout']    # click button view on otp

#PAGE INACO
${url_inaco}      https://special.stage.pomona.id/imcoco    # URL inaco
${url_inaco_receipt}  https://special.stage.pomona.id/imcoco/receipt/5f5f24dc71770f5cf9462c6a
${inaco_title}  //p[text()="Beli I'm Coco, Dapatkan Hadiahnya!"]
${btn_verifikasi_no}    //div[contains(text(),"Verifikasi Nomor HP")]    # Verifikasi nomor telepon yang telah di input
${btn_upload_struk}    //div[contains(text(),"Upload Struk")]    # Button upload struk
@{upload_struk_input}    //input    ${EXECDIR}//struk.jpg    # upload struk
${submit_struk}    css=#submit-receipt-text    # button submit struk
${text_struk_berhasil}    Selamat! Struk berhasil diupload    # Struk berhasil diupload
${btn_back_from_upload_struk_succes}    //div[contains(text(),"Kembali ke Halaman Utama")]    # button back ke page home setelah sukses upload
${get_struk_inproses}    //div[@class='basic__Wrapper-sc-1aa10sa-0 cyVAtb']//div[1]//div[1]//p[2]    # get struk yang sedang dalam proses
${btn_profile}    //img[@class='basic__ImageWrapper-sc-1aa10sa-5 eVviGw']    # button profile
${btn_edit_profile}    //div[text()="EDIT"]    # button edit profile
${btn_simpan_profile}    //div[.='Simpan']    # button simpan profile
${input_field}    //input    # Variable untuk semua input field, digunakan jika hanya ada satu input field
${input_name}  //input[@name='name']
${input_name_value}  css=[name='name']
#inaco notification
${contain_selamat}  //div[contains(text(),'Selamat')]
${btn_notifikasi}  //div[@name='dmenu']/div[@class='basic__Wrapper-sc-1aa10sa-0 szvQi']
${btn_see_detail_1}  //div[@name='home content']/div[1]//p[@class='fonts__FontWrapper-cy6f2q-0 dThTVE']
#inaco receipt
${btn_salin}  //div[contains(text(),"Salin")]
#inaco reward
${btn_hadiah}  //p[text()='Hadiah']
${btn_tukar_poin}  //div[@id='tukar-poin-text']
${btn_ya}  //p[text()="Ya"]
${btn_close}  //div[text()="Close"]
${get_reward_inproses}  css=div.cyVAtb > div:nth-of-type(3) .bWfWxS

#PAGE Weekly
#weekly homepage
${url_weekly}  https://special.stage.pomona.id/Weekly
${title_weekly}  //p[text()="Weekly"]


#PAGE WALLS
${btn_masuk_walls}    button.jpaZmI > #undefined-text    # button masuk walls
