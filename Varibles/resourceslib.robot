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
${EmployeeNameAssign}  xpath=//input[@id='assignleave_txtEmployee_empName']
${LeaveType}           xpath=//select[@id='assignleave_txtLeaveType']
${LeaveBalance}
${From Date}           xpath= //input[@id='assignleave_txtToDate']
${SelectSpacificDate}  xpath=//a[contains(text(),'16')]
${To Date}             xpath=//input[@id='assignleave_txtToDate']
${SelectParticalDate}  xpath=//a[contains(text(),'23')]
${Comment}             xpath=//textarea[@id='assignleave_txtComment']
${Assing}              xpath=//input[@id='assignBtn']
${AcceptOk}            xpath=//input[@id='confirmOkButton']


# Add Cookie to


${Maintence}        xpath=//a[@id='menu_maintenance_purgeEmployee']/b
${Purge}            xpath=//h1
${Verify}           xpath=//label
${TextVerify}       xpath=//div[@id='Instance_Messege']




