*** Settings ***
Documentation    Suite description

Library           Collections
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot
Library           ../Locators/Outside.py
Resource          ../Varibles/resourceslib.robot

*** Test Cases ***
#Open Browser
#    Open Browser and navigate to URL
#    ${Title}=   get title
#    log to console  ${Title}
#    ${URL_BeforeLogin}=     Get location
#    log to console      ${URL_BeforeLogin}
#    Enter Correct Username ans password
#    ${URL_AfterLogin}=      Get location
#    log to console      ${URL_AfterLogin}


Invalid Username & Password
    [Tags]          Smoke
    Open Browser and navigate to URL
    Enter Invalid Username and Correct Password
    Clear Fields
    log to console  All Emepments Cleared.
    Enter Invalid Username and Empty Password
    Clear Fields
    Enter Valid Username and Invalid Password
    Clear Fields
    Enter Valid Username and Empty Password
    Clear Fields
    Enter Correct Username ans password
    ${BeforeLoginTitle}  Get Title
    log to console  Logged in successfully
    sleep           ${Speep}
     ${URL_AfterLogin}=      Get location
    log to console      ${URL_AfterLogin}

Press Logout on main page
   Click Logout Option
   About Option
   ${text_about}=   Get Text        ${About_content}
   log to console   ${text_about}
   click element    ${close_window}
   ${curlink}=      Get location
   log to console   ${curlink}

Top Header menu option
    @{Head}     create list    Admin   PIM  Leave  Time  Recruitment   Performance  Dashboard   Directory    Maintenance
    FOR   ${Values}   IN  @{Head}
#        Get top header elements
        log to console     ${Values}
    END
    ${curlinkdf}=      Get location
   log to console   ${curlinkdf}

Legends option
    Main Pages Legends
    Mouse Over      ${SubunitDetails}
    ${b}=     Get Text        ${SubunitDetails}
    log to console  ${b}
    ${curlink123}=      Get location
    log to console   ${curlink123}


Board Dashboard
    Main DB options
    ${curlink1234}=      Get location
    log to console   ${curlink1234}

Assign Leave
    click element   ${AssignLeave}
    ${e}=   Get location
    log to console  ${e}
    ${curli}=      Get location
    log to console   ${curli}

Fill Leave assign fourm
    input text                           ${EmployeeNameAssign}         Jasmine Morgan
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
    ${curul}=      Get location
    log to console   ${curul}


#    click element                        ${AlertMessage}
#    sleep                                3
#    click element                        ${Assing}


Leave Fourm Verification
    mouse over                      xpath=//a[@id='menu_leave_viewLeaveModule']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_leave_Entitlements']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_leave_addLeaveEntitlement']
    click element                   xpath=//a[@id='menu_leave_addLeaveEntitlement']
    ${cur_url}=                     get location
    log to console                  ${cur_url}

Fill Leave fourm
    input text                      xpath=//input[@id='entitlements_employee_empName']                 Steven Edwards
    select from list by value       xpath=//select[@id='entitlements_leave_type']                       3
    input text                      xpath=//input[@id='entitlements_entitlement']                       34.99
    sleep                           3
    click element                   xpath=//input[@id='btnSave']
    ${cur_url1}=     get location
    log to console      ${cur_url1}
    go back

PMI Field operations
    mouse over                      xpath=//a[@id='menu_pim_viewPimModule']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_pim_Configuration']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_pim_configurePim']
    click element                   xpath=//a[@id='menu_pim_configurePim']
    ${PIM}=  get text               xpath=//div[@class='inner']
    log to console                  ${PIM}
    click element                   xpath=//input[@name='configPim[chkShowSSN]']
    click element                   xpath=//input[@id='btnSave']
    click element                   xpath=//input[@id='btnSave']



Custom Fields on PIM
    mouse over                      xpath=//a[@id='menu_pim_viewPimModule']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_pim_Configuration']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_pim_listCustomFields']
    click element                   xpath=//a[@id='menu_pim_listCustomFields']
    click element                   xpath=//input[@id='buttonAdd']
    input text                      xpath=//input[@id='customField_name']           JohnbuddyHom
    select from list by value       xpath=//select[@id='customField_screen']        emergency
    select from list by value       xpath=//select[@id='customField_type']          1
    input text                      xpath=//input[@id='customField_extra_data']     Bavi,bawana,Man
    click element                   xpath=//input[@id='btnSave']

Data Imports on PIM
    mouse over                      xpath=//a[@id='menu_pim_viewPimModule']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_pim_Configuration']
    sleep                           3
    mouse over                      xpath=//a[@id='menu_admin_pimCsvImport']
    click element                   xpath=//a[@id='menu_admin_pimCsvImport']
    sleep                           3
    choose file                     xpath=//input[@id='pimCsvImport_csvFile']       /Users/reenupanwar/Downloads/testdata.csv
     sleep                          3
    ${DataImp}=     get text        xpath=//div[@class='inner']
    log to console                  ${DataImp}
    click element                   xpath=//input[@value='Upload']


Reporting Methods
    mouse over                       xpath=//a[@id='menu_pim_viewPimModule']
    sleep                            3
    mouse over                       xpath=//a[@id='menu_pim_Configuration']
    sleep                            3
    mouse over                       xpath=//a[@id='menu_pim_viewReportingMethods']
    sleep                            3
    click element                    xpath=//a[@id='menu_pim_viewReportingMethods']
    click element                    xpath=//input[@id='btnAdd']
    input text                       xpath=//input[@id='reportingMethod_name']        LovelyOne
    click element                    xpath=//input[@id='btnSave']

Termination Resource
    mouse over                       xpath=//a[@id='menu_pim_viewPimModule']
    sleep                            3
    mouse over                       xpath=//a[@id='menu_pim_Configuration']
    sleep                            3
    click element                    xpath=//input[@id='btnAdd']
    input text                       xpath=//input[@id='terminationReason_name']     SriHari
    click element                    xpath=//input[@id='btnSave']
    sleep                            5


Employee List
    mouse over                       xpath=//a[@id='menu_pim_viewPimModule']
    sleep                            3
    click element                    xpath=//a[@id='menu_pim_viewEmployeeList']
    select from list by value        xpath=//select[@id='empsearch_employee_status']     5
    select from list by value        xpath=//select[@id='empsearch_termination']         1
    click element                    xpath=//input[@id='searchBtn']
    sleep                            3
    ${Whoe}=    get text             xpath=//form[@name='frmList_ohrmListComponent']
    log to console                   ${Whoe}

Add Employee
     mouse over                      xpath=//a[@id='menu_pim_viewPimModule']
     sleep                           3
     click element                   xpath=//a[@id='menu_pim_addEmployee']
     input text                      xpath=//input[@id='firstName']         SriHari
     input text                      xpath=//input[@id='middleName']        Naidu
     input text                      xpath=//input[@id='lastName']          Pudu
   #  click element   xpath=//input[@id='chkLogin']
     click element                   xpath=//input[@id='btnSave']
     ${GrabProfileDetails}=          get text        xpath=//ul[@id='sidenav']
     log to console                  The list of options in profile page is:${GrabProfileDetails}
     ${profile_url}=                 get location
     log to console                  The profile URl is;${profile_url}

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




