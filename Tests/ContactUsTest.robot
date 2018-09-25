*** Settings ***

Documentation   Suite description
Library  Selenium2Library
Resource  ../Resources/Keywords/ContactUsKeywords.robot

Suite Setup  open browser   https://gowling-qa.ecentricarts.com/    chrome
Suite Teardown  Close browser

*** Test Cases ***

Access Home Page and submit the Contact us form

    maximize browser window
    Navigate to Contact us from the header
    Navigate to Contact Us form
    Submit the empty Contact Us form
    Submit the Contact Us form with all the required fields
