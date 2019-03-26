*** Settings ***
Documentation       Here is the prograam for list of selenium shortcut keys
Library  SeleniumLibrary

*** Test Cases ***
Test title
    open browser  ${URL}     ${Browser}
    page should contain element                                  xpath=//input[@name='email']
  #  Wait Until Page Contains Element                            xpath=//*[@id="login_form"]/table/tbody/tr[3]/td[2]/div/a      timeout=5          error=timeouterror,taking very long time
#    click link                                                   xpath=//*[@id="login_form"]/table/tbody/tr[3]/td[2]/div/a
#    input text                                       xpath=//input[@placeholder='Phone number or email address']         9010542197
#
#    Textfield Value Should Be                        xpath=//input[@placeholder='Phone number or email address']        9010542197
#    Location Should Contain                         https://www.facebook.com/login/identify/?ctx=recover&ars=royal_blue_bar
#   # Textarea Should Contain                          xpath=//input[@placeholder='Phone number or email address']        Phone number or email address

    List Selection Should Be                            xpath=//select[@name='birthday_month']        Mar

*** Keywords ***
Provided precondition







*** Variables ***


${Browser}           Chrome
${URL}              https://www.facebook.com
