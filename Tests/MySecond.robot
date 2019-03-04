*** Settings ***
Documentation    Suite description
Resource          ..//Varibles/resourceslib.robot
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot
Resource          ../KeywordsFile/Dashboardpage.robot

*** Test Cases ***
Valid Login
    Open Browser and navigate to URL
    Enter Correct Username ans password
    Dashboard Page
    go back

Dashboard Leave list
    Leave List page
    go back

Timesheets page checking
    Timesheets Page
    go back

Dashbaord/Quick Lunch text checking
    Dashboard Page Icons Text checking

Apply Leave single
    Assign Leave


#CLose the browser
#    close browser

