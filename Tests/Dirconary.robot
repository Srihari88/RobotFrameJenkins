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
    ${BeforeLoginTitle} =   Get Title
    log to console      Logged in successfully& titie is: ${BeforeLoginTitle}
    ${myurl}=   Get Location
    log to console      The URL of the webpage is: ${myurl}
    ${anot}=    Get Location
    log to console      The title is after login:${anot}
    sleep               ${Speep}
    ${All}=      Get Locations
    log to console      ${All}
    ${pages}=   Get Source


Directory Page Verification
    click element       ${dict}
     ${t}=  Get Text    ${dict}
     log to console     ${t}
     ${s}=   Get Title
     Title Should Be                    OrangeHRM
     log to console     ${s}
     ${SearchRes}=      Get text        xpath=//div[@id='searchResults']
     Page Should Contain                Linda Anderson
     log to console     ${SearchRes}

Search Page results on Directory Page
    input text      ${Sea}              Linda Anderson
    sleep               3
    Select From List By Value           ${JobTitle}     4
    click element     ${UserSearch}
    Page Should Contain                 Linda Anderson


Select Location Page
    Select From List By Value       xpath=//select[@id='searchDirectory_location']      3
    Click element                   xpath=//input[@id='searchBtn']
    click reset search page
    ${loc}=     get location
    log to console      ${loc}


Account clerk Search Page results
    input text      ${Sea}              Jasmine Morgan
    sleep               3
    Select From List By Value           ${JobTitle}     6
    click element     ${UserSearch}
    Page Should Contain                 Jasmine Morgan
    click reset search page


CEO Search Page results
    input text      ${Sea}              John Smith
    sleep               3
    Select From List By Value           ${JobTitle}     9
    click element     ${UserSearch}
    Page Should Contain                 John Smith
    click reset search page
    sleep               3

ITManager Search Page results
    input text      ${Sea}              Thomas Fleming

    sleep               3
    Select From List By Value           ${JobTitle}     8
    click element     ${UserSearch}
    Page Should Contain                 Thomas Fleming
    click reset search page
    sleep               3

Find all links on the webpage
    Wait Until Element Is Visible    ${list_of_links}
    @{locators}=     Get Webelements    ${list_of_links}
    # Create a list and append app config values to list
    @{result}=       Create List
    :FOR   ${locator}   IN    @{locators}
        \       ${name}=    Get Text    ${locator}
        \       Append To List    ${result}    ${name}
    log to console    ${result}
    [Return]    @{result}



*** Variables ***

${dict}         xpath=//a[@id='menu_directory_viewDirectory']
${Sea}          xpath=//input[@id='searchDirectory_emp_name_empName']
${JobTitle}     xpath=//select[@id='searchDirectory_job_title']
${Location}     xpath=//select[@id='searchDirectory_location']
${UserSearch}   xpath=//input[@id='searchBtn']
${Reset}        xpath=//input[@id='resetBtn']
${list_of_links}    xpath=//a

*** Keywords ***

click reset search page
    click element       ${Reset}







