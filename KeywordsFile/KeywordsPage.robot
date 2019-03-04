*** Settings ***
Documentation    Suite description

Resource  ../Varibles/resourceslib.robot

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


Verify Maintence page
    click element      ${Maintence}
    ${Text}=    Get Text    ${Purge}
    ${Text1}=   Get Text    ${Verify}
    ${Text2}=   Get Text    ${TextVerify}
    log to console  ${Text}
    log to console  ${Text1}
    log to console  ${Text2}





