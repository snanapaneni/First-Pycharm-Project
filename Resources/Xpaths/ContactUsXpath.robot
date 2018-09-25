*** Settings ***

Documentation   Home Page Xpath


*** Variables ***

${Logo_Xpath}       //*[@id="logo"]
${Header_contactus_Xpath}	    //*[@id="form"]/div[4]/header/div[2]/div/div/div[2]/nav/ul/li[3]/a
${Footer_contactus_Xpath}       //*[@id="form"]/div[4]/footer/div[2]/div/div/div[1]/nav/ul/li[3]/a
${top_left_dropdown_toggle_global_Xpath}      //*[@id="form"]/div[4]/header/div[2]/div/div/div[1]/div/div/button/span[1]
${Contactus_Banner_Text_Xpath}      //*[@id="content"]/section[1]/div/div/div/h1
${Contactus_Form_container_Xpath}      //*[@id="form-container"]
${Contactus_Submit_Button_Xpath}        //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_viewBiz_btnOK"]
${Contactus_Error_messages_summary_Xpath}   //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_pErrorMessage"]
${Contactus_Error_messages_list_Xpath}   //*[@id="eat-msg-global"]/ul

${Contactus_Firstname_field_Xpath}      //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_viewBiz_FirstName_mainControl"]
${Contactus_Lastname_field_Xpath}      //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_viewBiz_LastName_mainControl"]
${Contactus_Email_field_Xpath}       //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_viewBiz_Email_mainControl"]
${Contactus_Country_field_Xpath}      //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_viewBiz_Country_mainControl"]
${Contactus_terms_checkbox_Xpath}        //*[@id="p_lt_ctl07_pageplaceholder_p_lt_ctl00_ECA_BizForm_viewBiz_Terms_mainControl"]/label
${Contactus_ThankYou_message_Xpath}      //*[@id="content"]/section[2]/div/div/div/p[1]/strong