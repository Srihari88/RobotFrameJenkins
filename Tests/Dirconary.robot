*** Settings ***
Documentation    Suite description

Library           Collections
Resource          ..//Varibles/resourceslib.robot
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot
Resource          ../KeywordsFile/Dashboardpage.robot
Resource          ../Varibles/resourceslib.robot

*** Test Cases ***
Valid Login User
     Open Browser and navigate to URL
    Enter Correct Username ans password
    ${BeforeLoginTitle}  Get Title
    log to console  Logged in successfully
    sleep           ${Speep}

Move to Dictonary Page
    Directory Page
    Select the value In the list