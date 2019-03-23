*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../KeywordsFile/KeywordsPage.robot
Resource  ../KeywordsFile/Dashboardpage.robot

*** Test Cases ***

Login to Page
    [Tags]      Smoke
    Open Browser and navigate to URL
    Enter Correct Username ans password

Admin Page Verification
    [Tags]      Smoke
    Admin
    ${Cur_link}=    Get Location
    should be equal  ${Cur_link}    ${AddJobLink}
    Grab the form data

Add neew job to Admin Page
    [Tags]      Smoke
    Add Job Title

Pay JobforEmployee
    Pay Grades

Admin Page All options.
    Admin Features