*** Settings ***
Library  SeleniumLibrary

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




*** Keywords ***

Open Browser and navigate to URL
    open browser  ${URL}  ${Browser}


Enter Invalid Username and Correct Password
    input text        ${UserName}     Admin3
    input text        ${Password}     admin123
    click button      ${Submit}
    ${oh}=  Get Text  ${ValidationText}
    log to console    ${oh}

Enter Invalid Username and Empty Password
    input text        ${UserName}     Admin3
    input text        ${Password}     ${EMPTY}
    click button      ${Submit}
    ${oh}=  Get Text  ${ValidationText}
    log to console    ${oh}


Enter Valid Username and Invalid Password
    input text        ${UserName}     Admin
    input text        ${Password}     admin123345
    click button      ${Submit}
    ${oh}=  Get Text  ${ValidationText}
    log to console    ${oh}


Enter Valid Username and Empty Password
    input text        ${UserName}     Admin
    input text        ${Password}     ${EMPTY}
    click button      ${Submit}
    ${oh}=  Get Text  ${ValidationText}
    log to console    ${oh}

Enter Correct Username ans password
    input text        ${UserName}     Admin
    input text        ${Password}     admin123
    click button      ${Submit}

Logout
    click link        ${ClickLogouttext}
    sleep             ${Speep}
    click link        ${logout}

Move To Admin Tab
    click button      ${AddTab}

Add User
    click link        ${AddTab}
    click button      ${AddUser}
    Select From List By Value  ${UserRole}         2
    input text        ${EmployeeName}              Hannah Flores
    input text        ${UserName1}                 SriHarinaidu.Pudu
    Select From List  ${Status}                    Disabled
    input password    ${User_Pass}                 Naidusri
    input password    ${User_con_pass}             Naidusri
    click button      ${SaveUser}

MouseHover into Jobs
    Mouse Over      ${JobsHover}


Page data to print
    ${PageData}=  Element Text Should Be

    log to console      ${PageData}


Clear Fields
    Clear Element Text   ${UserName}
    Clear Element Text   ${Password}

Assin Leave Page
    Click Image   ${AddAsingLeave}
    sleep         ${Speep}
    input text    ${EmployeeNameAssign}   Linda Anderson
    Select From List By Index  ${LeaveType}     3
    click link     ${From Date}
    click link     ${SelectSpacificDate}
    click link     ${To Date}
    click link     ${SelectParticalDate}
    input text     ${Comment}   Kindly requesting you for the leave
    click button   ${Assing}
    Alert Should Be Present  ${AcceptOk}







*** Variables ***

# Environment Setup,Chrome & URL setup
${URL}                  https://opensource-demo.orangehrmlive.com
${Browser}              Chrome


# Login page elements
${UserName}             id=txtUsername
${Password}             id=txtPassword
${Submit}               id=btnLogin
${ClickLogouttext}      xpath=//a[contains(text(),'Welcome Admin')]
${logout}               xpath=//a[@href='/index.php/auth/logout']

${Speep}                3

${ValidationText}       xpath=//span[@id='spanMessage']

#Add an user

${AddTab}           xpath=//a[@id='menu_admin_viewAdminModule']
${AddUser}          xpath=//input[@id='btnAdd']
${UserRole}         xpath=//select[@id='systemUser_userType']
${EmployeeName}     xpath=//input[@id='systemUser_employeeName_empName']
${UserName1}        xpath=//input[@id='systemUser_userName']
${Status}           xpath=//select[@id='systemUser_status']
${User_Pass}        xpath=//input[@id='systemUser_password']
${User_con_pass}    xpath=//input[@id='systemUser_confirmPassword']
${SaveUser}         xpath=//input[@id='btnSave']


#Log the titles for the webpage.

${StringItems}      xpath=//div[@class='menu']/ul/li

${JobsHover}        //a[@id='menu_admin_Job']

${PageData}         xpath=//form[@name='frmList_ohrmListComponent']




#Delete the User

${Deleteuser}       xpath=//input[@name='chkSelectRow[]' and @value='11']
${UserDeleteButton}     xpath=//input[@id='btnDelete']


#Dashboard Page Elements

${AssingLeaveText}      xpath=//span[contains(text(),'Assign Leave')]
${LeaveList}            xpath=//span[contains(text(),'Leave List')]
${Timessheet}           xpath=//span[contains(text(),'Timesheets')]


#Assing a Leave
${AddAsingLeave}       xpath=//img[@src='/webres_5bd6ae3dc0fea0.31921995/orangehrmLeavePlugin/images/ApplyLeave.png']
${EmployeeNameAssign}        xpath=//input[@id='assignleave_txtEmployee_empName']
${LeaveType}           xpath=//select[@id='assignleave_txtLeaveType']
${LeaveBalance}
${From Date}           xpath=//input[@id='assignleave_txtFromDate']
${SelectSpacificDate}  xpath=//a[contains(text(),'27')]
${To Date}             xpath=//input[@name='assignleave[txtToDate]']
${SelectParticalDate}  xpath=//a[contains(text(),'28')]
${Comment}             xpath=//textarea[@id='assignleave_txtComment']
${Assing}              xpath=//input[@id='assignBtn']

${AcceptOk}            xpath=//input[@id='confirmOkButton']






