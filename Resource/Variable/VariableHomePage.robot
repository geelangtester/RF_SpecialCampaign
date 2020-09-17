*** Variables ***
${upload_receipt}    css=input[accept='image/jpeg']    # button upload receipt
${submit_receipt}    css=#submit-receipt    # button submit receipt
${retry_upload}    css=.jqFATV    # button upload ulang
${goal_1portion}    //div[.='KONSUMSI SENDIRI']    # set goal 1 porsi
${goal_4portion}    //p[.='UNTUK 1 KELUARGA']    # set goa untuk 4 porsi
${back_home_page}    //div[.='Kembali ke halaman utama']    # button kembali kehalaman utama setelah upload receipt
${onboarding_lanjutkan}    //div[text()="Lanjutkan"]    # button lanjutkan onboarding
${onboarding_mulai_campaign}    //div[.='Mulai ikuti campaign']    # mulai campaign onboarding
${btn_uploadStruk}    //button//div[.='Upload struk buahmu']    # Upload Struk
${btn_upload_struk_selanjutnya}    //p[.='Selanjutnya']    # Selanjutnya upload struk
${notif}          //p[.='Notif']    # button notif
${get_point}      //span[@class='sc-fznZeY dhnGO']
