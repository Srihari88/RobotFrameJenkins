*** Settings ***
Documentation    List out the all selenium elements in the page.

*** Test Cases ***
Test title
    alert should be present
    alert should not be present
    dismiss alert
    get alert message
    handle alert
    input text into alert

Press Logout on main page
    Click Logout Option


*** Keywords ***
Click Logout Option
    click element   ${ClickLogouttext}







*** Variables ***


