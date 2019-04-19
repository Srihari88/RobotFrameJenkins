*** Settings ***
Documentation    Suite description
Library    SeleniumLibrary    timeout=20s
#Test Teardown    Close Browser
#Suite Teardown    Close Browser

*** Test Cases ***
Data Driven Using Templates
     log to console  Hello robotframework

#    [Tags]    10A
#    # Template are used to do data driven testing in rf
#    # in order to use template mention template with keyword
#    [Template]    Login With Multiple Data
#    sree.hari       oneman
#    onemansri       Password2
#    UserName3       Password3
#    daisy.dalia     dentrain
#
#*** Keywords ***
#Login With Multiple Data
#    [Arguments]    ${uname}    ${pwd}
#    Open Browser    https://www.pitchvision.com/#/login    chrome
##    click element   xpath=//a[text()='Log In']
#    Input Text      xpath=//form[@name='pvLoginform']/div/input[@name='username']    ${uname}
#    Input Text      xpath=//form[@name='pvLoginform']/div/input[@name='password']      ${pwd}
#    click element   xpath=//form[@name='pvLoginform']/div/input[@value='Log In']
#    Sleep   10s
#    Close Browser

*** Variables ***
