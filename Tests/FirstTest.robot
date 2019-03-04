*** Settings ***

Library           Collections
Resource          ..//Varibles/resourceslib.robot
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot




Suite Setup     Log    Open Browser and navigate to URL SetUp
Suite Teardown  Log    Open Browser and navigate to URL
Test Setup      Log    I'm insdie the testcase
Test Teardown   Log    I'm going outside the testcase


*** Test Cases ***

Invalid Username & Password
    Open Browser and navigate to URL
    Enter Invalid Username and Correct Password
    Clear Fields
    log to console  All Emepments Cleared.

Invalid Username & Empty Pwd
    Enter Invalid Username and Empty Password
    Clear Fields

Valid Username & Invalid Pwd
    Enter Valid Username and Invalid Password
    Clear Fields

Valid Username & Empty
    Enter Valid Username and Empty Password
    Clear Fields

Valid Login User
    Enter Correct Username ans password
    ${BeforeLoginTitle}  Get Title
    log to console  Logged in successfully
    sleep           ${Speep}
#    Element Text Should Be  ${AssingLeaveText}  Assign Leave
#    Element Text Should Be  ${LeaveList}        Leave List
#    Element Text Should Be  ${Timessheet}       Timesheets
    ${BeforeLoginTitle}=  Get Title
    log to console  ${BeforeLoginTitle}
    sleep           ${Speep}


Add Cookies to Browser
    ${Cookies}=     Get Cookies
    log to console      ${Cookies}

Get Cookies As Dict
    ${cookies}=    Get Cookies        as_dict=True
    ${expected_cookies}=    Create Dictionary   test=seleniumlibrary    another=value
    log to console      ${cookies}

#Add Cookie When Secure Is False
#    Add Cookie    Cookie1    value1    secure=True
#    ${cookie} =    Get Cookie    Cookie1
#    Should Be Equal    ${cookie.secure}       ${False}

#Assing Leave to the employee
#     Assin Leave Page

Add a User
    Add User
    ${CurrentURL}=  Get Location
    log  ${CurrentURL}
    sleep           ${Speep}
    log to console  User added successfully
    sleep           ${Speep}
    sleep           ${Speep}

Movie Mouse Over

     MouseHover into Jobs
     log to console     Mouse hover into Jobs

Maintence Page Checking
    sleep   ${Speep}
    Verify Maintence page



All links on the Page
    ${AllLInks}=    Get All Links
    log to console      ${AllLInks}

Logout A user
    Logout
    log to console  User Logged out Successuflly
    Close Browser








