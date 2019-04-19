*** Settings ***
Documentation    Suite description
Resource  ../Varibles/resourceslib.robot

*** Keywords ***

Open Browser and navigate to URL
    Create Webdriver    Chrome      executable_path=/usr/local/bin/chromedriver
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
    click element  ${LeaveBalance}
    click link     ${From Date}
    click link     ${SelectSpacificDate}
    click link     ${To Date}
    click link     ${SelectParticalDate}
    input text     ${Comment}   Kindly requesting you for the leave
    click button   ${Assing}
    Alert Should Be Present  ${AcceptOk}


Verify Maintence page
    click element      ${Maintence}
    ${Text}=    Get Text    ${Purge}
    ${Text1}=   Get Text    ${Verify}
    ${Text2}=   Get Text    ${TextVerify}
    log to console  ${Text}
    log to console  ${Text1}
    log to console  ${Text2}


Dashboard Page
    ${Cur_Location}=        get location
    log to console          ${Cur_Location}
    click element           ${Dashboard_AssingLeave}
    sleep                   ${Speep}
    ${Assing_Cur_link}=     get location
    should be equal         ${Assing_Cur_link}      ${Dashboard_exptlink}


Leave List page
    ${leave_list}=          get location
    log to console          ${leave_list}
    click element           ${Dashboard_LeaveList}
    sleep                   ${Speep}
    ${leave_cur_limk}       get location
    should be equal         ${leave_cur_limk}   ${Dashbaord_Leavelist_exptl}

Timesheets Page
    ${Timesheet_url}=       get location
    log to console          ${Timesheet_url}
    click element           ${Dashboard_Timesheets}
    sleep                   ${Speep}
    ${LeaveUrl}=            get location
    should be equal         ${LeaveUrl}     ${Dashboard_Timeline_expet}


Dashboard Page Icons Text checking
     ${assingText}=  get text       ${Dashboard_AssingLeave}
     log to console                 ${assingText}
     ${ListText}=    get text       ${Dashboard_LeaveList}
     log to console                 ${ListText}
     ${Timetext} =   get text       ${Dashboard_Timesheets}
     log to console                 ${Timetext}

Assign Leave
     click element                  ${Dashboard_AssingLeave}
     sleep                          ${Speep}
     input text                     ${EmployeeNameAssign}       Ashish Kumar Gangwar
     select from list by value      ${LeaveType}         4
     sleep                          ${Speep}
     click element                  ${LeaveBalance}
     Handle Alert
     input text                     ${From Date}        2019-03-15
     press key                      TAB
     sleep                          ${Speep}
     input text                     ${To Date}          2019-03-20
     input text                     ${Comment}          Hello Guys Welcome to RObot framework to implement the automation
     click button                   ${Assing}


Admin
    mouse over      ${Admin}
    sleep           ${Speep}
    mouse over      ${Job}
    click element   ${Job Titles}

Grab the form data
    ${page}=  get text  ${StoreData}
    log to console  ${page}

Add Job Title
    click element   ${AddJob}
    sleep           ${Speep}
    input text      ${Job Title}    CTO
    input text      ${Job Description}      The Person who leads the entire S/w team
    choose file     ${Job Specification}    /Users/reenupanwar/Desktop/mytext.png
    input text      ${Note}         Upmost important person to lead the team
    click element   ${SaveUser}

Pay Grades One
    mouse over      ${Job}
    click element   ${PayGrades}
    input text      ${PayAddGrades}   IOS Developer
    click element   ${SaveAddPay}


Admin Features
    mouse over  ${Administration}
    sleep       ${Speep}
    mouse over  ${jobspage}
    sleep       ${Speep}
    mouse over  ${Organizations}
    sleep       ${Speep}
    mouse over  ${Qualifications}
    sleep       ${Speep}
    mouse over  ${Notifications}
    sleep       ${Speep}
    mouse over  ${Configuration}


Directory Page
    click element  ${Directory}
    sleep       3
    input text      ${name}     Robert Craig


Select the value In the list
    select from list by value    ${SelectJobTitle}  5
    click element   ${Search}
    ${ErrorText}=  get text     ${Notfound}