*** Settings ***
Library  SeleniumLibrary
Library           Collections
Resource  ..//Varibles/resourceslib.robot



Suite Setup     Log    Open Browser and navigate to URL SetUp
Suite Teardown  Log    Open Browser and navigate to URL
Test Setup      Log    I'm insdie the testcase
Test Teardown   Log    I'm going outside the testcase

*** Test Cases ***
Test:1 Verify Invalid Username & Password
    Open Browser and navigate to URL
    Enter Invalid Username and Correct Password
    Clear Fields
    log to console  All Emepments Cleared.

Test:2 Verify Invalid Username & Empty Pwd
    Enter Invalid Username and Empty Password
    Clear Fields

Test:3 Verify Valid Username & Invalid Pwd
    Enter Valid Username and Invalid Password
    Clear Fields

Test:4 Verify Valid Username & Empty
    Enter Valid Username and Empty Password
    Clear Fields

Test 5: Login valid User
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

Assing Leave to the employee
     Assin Leave Page

Test 6: Add a User
    Add User
    ${CurrentURL}=  Get Location
    log  ${CurrentURL}
    sleep           ${Speep}
    log to console  User added successfully
    sleep           ${Speep}
    sleep           ${Speep}

Test 7:Movie Mouse Over

     MouseHover into Jobs
     log to console     Mouse hover into Jobs

Test 9: Logout A user
    Logout
    log to console  User Logged out Successuflly
    Close Browser








