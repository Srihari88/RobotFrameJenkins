*** Settings ***
Documentation    Suite description

Library  SeleniumLibrary
Library  ../Locators/Outside.py


*** Test Cases ***
Test title
    open browser        ${URL}      ${Chrome}
    Enter Email
    Enter Passwords
    Wait Until Element Contains  xpath=//img[@class='img']
    ${width}	${height} =	Get Element Size	xpath=//img[@class='img']

    log to console      ${width}
    log to console      ${height}
    Reload Page
    sleep       5
    close browser


*** Keywords ***

Enter Email
    ${Email}=       get__email
    input text      xpath=${Email}      sriharinaidupudu@gmail.com

Enter Passwords
    ${password}=    get__password
    input text      xpath=${password}           password

*** Variables ***
${URL}          https://www.facebook.com
${Chrome}       chrome

