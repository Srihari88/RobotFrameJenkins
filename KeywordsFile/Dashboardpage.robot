*** Settings ***
Documentation    Suite description

Resource  ../Varibles/resourceslib.robot
Resource  ../Varibles/DashboardPagelocators.robot

*** Keywords ***

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
     input text                     ${From Date}        2019-03-15
     press key                      TAB
     sleep                          ${Speep}
     input text                     ${To Date}          2019-03-20
     input text                     ${Comment}          Hello Guys Welcome to RObot framework to implement the automation
     click button                   ${Assing}

