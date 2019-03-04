*** Settings ***
Documentation    Suite description

*** Variables ***

# Dashboard page Elements.


${Dashboard_AssingLeave}        xpath=//div[@id='dashboard-quick-launch-panel-menu_holder']/table/tbody/tr/td/div/a/span
${Dashboard_LeaveList}          xpath=//div[@id='dashboard-quick-launch-panel-menu_holder']/table/tbody/tr/td[2]/div/a/span
${Dashboard_Timesheets}         xpath=//td[3]/div/a/span

${Dashboard_exptlink}           https://opensource-demo.orangehrmlive.com/index.php/leave/assignLeave
${Dashbaord_Leavelist_exptl}    https://opensource-demo.orangehrmlive.com/index.php/leave/viewLeaveList
${Dashboard_Timeline_expet}     https://opensource-demo.orangehrmlive.com/index.php/time/viewEmployeeTimesheet




