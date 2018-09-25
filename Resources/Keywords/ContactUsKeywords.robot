*** Settings ***

Documentation  Defines all required resources and keywords
Library     OperatingSystem
Library     Selenium2Library
Resource    ../Xpaths/ContactUsXpath.robot

*** Keywords ***
[Arguments]    ${ElementXpath}    ${ElementData}
   Input Text    ${ElementXpath}     ${ElementData}

Navigate to Contact us from the header

    wait until element is visible   ${Logo_Xpath}    40
    page should contain element     ${Header_contactus_Xpath}
    page should contain element     ${Footer_contactus_Xpath}

    ${Header_contactus_Xpath}=   get text    ${Header_contactus_Xpath}
        log to console  ${Header_contactus_Xpath}

    ${top_left_dropdown_toggle_global_Xpath}=     get text    ${top_left_dropdown_toggle_global_Xpath}
    log to console      ${top_left_dropdown_toggle_global_Xpath}

    Should Be Equal As Strings  ${top_left_dropdown_toggle_global_Xpath}    Global


Navigate to Contact Us form

    click element   ${Header_contactus_Xpath}
    wait until element is visible       ${Contactus_Banner_Text_Xpath}  30
    page should contain element     ${Contactus_Form_container_Xpath}
    page should contain element     ${Contactus_Submit_Button_Xpath}


Submit the empty Contact Us form

    click element      ${Contactus_Submit_Button_Xpath}
    wait until element is visible        ${Contactus_Banner_Text_Xpath}  30
    page should contain element     ${Contactus_Error_messages_summary_Xpath}

    ${Contactus_Error_messages_summary_Xpath}=  get text    ${Contactus_Error_messages_summary_Xpath}
        log to console      ${Contactus_Error_messages_summary_Xpath}

     page should contain element        ${Contactus_Error_messages_list_Xpath}

     ${Contactus_Error_messages_list_Xpath}=    get text    ${Contactus_Error_messages_list_Xpath}
        log to console      ${Contactus_Error_messages_list_Xpath}


Submit the Contact Us form with all the required fields

    wait until element is visible        ${Contactus_Banner_Text_Xpath}  30
    page should contain element     ${Contactus_Form_container_Xpath}
    click element       ${Contactus_Firstname_field_Xpath}

    Input text      ${Contactus_Firstname_field_Xpath}  sireesha
    Input text      ${Contactus_Lastname_field_Xpath}   Nanapaneni
    Input text      ${Contactus_Email_field_Xpath}   snanapaneni@ecentricarts.com
    Input text      ${Contactus_Country_field_Xpath}   Canada

    click element   ${Contactus_terms_checkbox_Xpath}
    click element   ${Contactus_Submit_Button_Xpath}

    wait until element is visible        ${Contactus_Banner_Text_Xpath}  30
    page should contain element     ${Contactus_ThankYou_message_Xpath}

    ${Contactus_ThankYou_message_Xpath}=    get text    ${Contactus_ThankYou_message_Xpath}
        log to console      ${Contactus_ThankYou_message_Xpath}