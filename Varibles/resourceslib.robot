*** Settings ***
Documentation    Suite description

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

${Speep}                6

${ValidationText}       xpath=//span[@id='spanMessage']

#Add an user

${AddTab}               xpath=//a[@id='menu_admin_viewAdminModule']
${AddUser}              xpath=//input[@id='btnAdd']
${UserRole}             xpath=//select[@id='systemUser_userType']
${EmployeeName}         xpath=//inp=ut[@id='systemUser_userName']
${Status}               xpath=//select[@id='systemUser_status']
${User_Pass}            xpath=//input[@id='systemUser_password']
${User_con_pass}        xpath=//input[@id='systemUser_confirmPassword']
${SaveUser}             xpath=//input[@id='btnSave']


#Log the titles for the webpage.

${StringItems}          xpath=//div[@class='menu']/ul/li

${JobsHover}            //a[@id='menu_admin_Job']

${PageData}             xpath=//form[@name='frmList_ohrmListComponent']




#Delete the User

${Deleteuser}           xpath=//input[@name='chkSelectRow[]' and @value='11']
${UserDeleteButton}     xpath=//input[@id='btnDelete']


#Dashboard Page Elements

${AssingLeaveText}      xpath=//span[contains(text(),'Assign Leave')]
${LeaveList}            xpath=//span[contains(text(),'Leave List')]
${Timessheet}           xpath=//span[contains(text(),'Timesheets')]


#Assing a Leave
${AddAsingLeave}       xpath=//img[@src='/webres_5bd6ae3dc0fea0.31921995/orangehrmLeavePlugin/images/ApplyLeave.png']
${EmployeeNameAssign}  xpath=//input[@id='assignleave_txtEmployee_empName']
${LeaveType}           xpath=//select[@id='assignleave_txtLeaveType']
${LeaveBalance}        xpath=//a[@id='leaveBalance_details_link']


${From Date}           xpath=//fieldset/ol/li[4]/input[@id='assignleave_txtFromDate']
${SelectSpacificDate}  xpath=//*[@id='ui-datepicker-div']/table/tbody/tr[5]/td[1]/a
${To Date}             xpath=//input[@id='assignleave_txtToDate']


${SelectParticalDate}  xpath=//a[contains(text(),'23')]
${Comment}             xpath=//textarea[@id='assignleave_txtComment']
${Assing}              xpath=//input[@id='assignBtn']
${AcceptOk}            xpath=//input[@id='confirmOkButton']


# Add Cookie to


${Maintence}           xpath=//a[@id='menu_maintenance_purgeEmployee']/b
${Purge}               xpath=//h1
${Verify}              xpath=//label
${TextVerify}          xpath=//div[@id='Instance_Messege']



# Dashboard page Elements.


${Dashboard_AssingLeave}        xpath=//div[@id='dashboard-quick-launch-panel-menu_holder']/table/tbody/tr/td/div/a/span
${Dashboard_LeaveList}          xpath=//div[@id='dashboard-quick-launch-panel-menu_holder']/table/tbody/tr/td[2]/div/a/span
${Dashboard_Timesheets}         xpath=//td[3]/div/a/span

${Dashboard_exptlink}           https://opensource-demo.orangehrmlive.com/index.php/leave/assignLeave
${Dashbaord_Leavelist_exptl}    https://opensource-demo.orangehrmlive.com/index.php/leave/viewLeaveList
${Dashboard_Timeline_expet}     https://opensource-demo.orangehrmlive.com/index.php/time/viewEmployeeTimesheet





# This is the Keywords for Admin page.

${Admin}        xpath=//a[@id='menu_admin_viewAdminModule']
${Job}          xpath=//a[@id='menu_admin_Job']
${Job Titles}   xpath=//a[contains(text(),'Job Titles')]

${AddJobLink}   https://opensource-demo.orangehrmlive.com/index.php/admin/viewJobTitleList
${StoreData}    //form[@name='frmList_ohrmListComponent']

# Add job title

${AddJob}               xpath=//input[@name='btnAdd']
${Job Title}            xpath=//input[@name='jobTitle[jobTitle]']
${Job Description}      xpath=//textarea[@name='jobTitle[jobDescription]']
${Job Specification}    xpath=//input[@name='jobTitle[jobSpec]']
${Note}                 xpath=//textarea[@name='jobTitle[note]']
${Save}                 xpath=//input[@name='btnSave']



# Pay Grades

${PayGrades}            xpath=//a[@id='menu_admin_viewPayGrades']
${PayAddGrades}         xpath=//input[@id='btnAdd']
${SaveAddPay}           xpath=//input[@id='payGrade_name']


# Admin page all options.

${Administration}       id=menu_admin_UserManagement
${JobsPage}             id=menu_admin_Job
${Organizations}        id=menu_admin_Organization
${Qualifications}       id=menu_admin_Qualifications
${Notifications}        id=menu_admin_nationality
${Configuration}        id=menu_admin_Configuration



# Directory Seach Values

${Directory}        xpath=//a[@id='menu_directory_viewDirectory']

${name}             xpath=//input[@id='searchDirectory_emp_name_empName']
${SelectJobTitle}   xpath=//select[@id='searchDirectory_job_title']
${Search}           xpath=//input[@id='searchBtn']

${Notfound}         xpath=//div[contains(text(),'No Records Found')]











