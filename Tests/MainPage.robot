*** Settings ***
Documentation    Suite description

Library           Collections
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot
Library           ../Locators/Outside.py
Resource          ../Varibles/resourceslib.robot

*** Test Cases ***
Open Browser
    Open Browser and navigate to URL
    ${Title}=   get title
    log to console  ${Title}
    ${URL_BeforeLogin}=     Get location
    log to console      ${URL_BeforeLogin}
    Enter Correct Username ans password
    ${URL_AfterLogin}=      Get location
    log to console      ${URL_AfterLogin}

Press Logout on main page
   Click Logout Option
   About Option
   ${text_about}=   Get Text        ${About_content}
   log to console   ${text_about}
   click element    ${close_window}

Top Header menu option
    @{Head}     create list    Admin   PIM  Leave  Time  Recruitment   Performance  Dashboard   Directory    Maintenance
    FOR   ${Values}   IN  @{Head}
#        Get top header elements
        log to console     ${Values}
    END

Legends option
    Main Pages Legends
    Mouse Over      ${SubunitDetails}
    ${b}=     Get Text        ${SubunitDetails}
    log to console  ${b}


Board Dashboard
    Main DB options

Assign Leave
    click element   ${AssignLeave}
    ${e}=   Get location
    log to console  ${e}

Fill Leave assign fourm
    input text                           ${EmployeeNameAssign}         Testowy Test
    Select From List                     ${LeaveType}                  Vacation US
    sleep                                4
    click element                        ${LeaveBalance}
    ${alrt}=    Get Text                 ${JobLeaves}
    log to console                       ${alrt}
    ${alert5}=  Get Text                 ${JobLeavesText}
    log to console                       ${alert5}
    click element                        ${Close}
    log to console                       Reached to the date
    sleep                                5
    click element                        ${From Date}
    click element                        ${SelectSpacificDate}
    input text                           ${Comment}                 Hello Sri..!!! Welcome to the ORM freetool.
    click element                        ${Assing}

#    click element                        ${AlertMessage}
#    sleep                                3
#    click element                        ${Assing}

Close connections
    close browser



*** Keywords ***
Click Logout Option
    click element    ${ClickLogouttext}

About Option
    click element    ${About}

Get top header elements
    ${Store}=       get text        ${Header_Values}
    log to console      ${Store}

Main Pages Legends
    ${a}=    Get Text    ${Ledends}
    log to console     ${a}

Main DB options
    ${d}=   get text    ${DBOptions}
    log to console      ${d}


*** Variables ***

${About}                 xpath=//a[@id='aboutDisplayLink']
${About_content}         xpath=//div[@class='modal-body']

${close_window}         xpath=//a[@class='close']

${Header_Values}        xpath=//div[@class='menu']/ul/li

${Ledends}              xpath=//fieldset[@id='panel_resizable_1_1']

${SubunitDetails}       xpath=//fieldset[@id='panel_resizable_1_0']

${DBOptions}            xpath=//fieldset[@id='panel_resizable_0_0']

${AssignLeave}          xpath=//div[@id='dashboard-quick-launch-panel-menu_holder']/table/tbody/tr/td/div/a/img[@src='/webres_5bd6ae3dc0fea0.31921995/orangehrmLeavePlugin/images/ApplyLeave.png']

${JobLeaves}            xpath=//dl[@class='search-params']
${JobLeavesText}        xpath=//table/tbody

${Close}                xpath=//*[@id="balance_details"]/div[1]/a

${AlertMessage}         xpath=//input[@id='confirmOkButton']
