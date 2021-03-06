*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../KeywordsFile/KeywordsPage.robot


*** Test Cases ***

Login to Page
    [Tags]      Smoke
    Open Browser and navigate to URL
    Enter Correct Username ans password

Admin Tab Verification
    mouse over                               ${AdminPageElements.AddTab}
    mouse over                               ${AdminPageElements.usermanagement}
    ${text_manage}=  get text                ${AdminPageElements.usermanagement}
    log to console      Mouse over into the" ${text_manage}" Page
    wait until element is visible            ${AdminPageElements.user}
    click element                            ${AdminPageElements.user}
    ${Page_Url}=    get location
    log to console     The page shoud redirectd to: ${Page_Url}
    should be equal     ${Page_Url}          ${AdminPageElements.User_url}

users Page & Add the User
    ${list_ofusers}=    get text             ${userfourm}
    log to console                           ${list_ofusers}
    click element                            ${AddUser.addusers}
    sleep                                    3
    select from list by value                ${AddUser.UserRole}           2
    input text                               ${AddUser.EmployeeName}       SriHari Naidu Pudu
    input text                               ${AddUser.username}           Naidu7
    select from list by value                ${AddUser.Status}             1
    input text                               ${AddUser.password}           password123
    input text                               ${AddUser.con_password}       password123
    click element                            ${AddUser.Save}


Jobs Page
    mouse over          ${AdminPageElements.AddTab}
    sleep               5
    mouse over          ${Jobs.job}
    sleep               5
    click element       ${Jobs.JobTitle}
    ${AdminOrange}=     Get Text       ${Jobs.DataJob}


Add Job title
    click element       ${Jobs.Add}
    sleep               3
    input text          ${Jobs.JobTi}           DataQualityEngineerS
    input text          ${Jobs.JobDes}          I'm having the 6 years experience in software testing.
    Choose File         ${Jobs.filepath}        /Users/reenupanwar/Desktop/Sri.jpg
    input text          ${Jobs.Note}            hello people hope you're doing good.
    click element       ${Jobs.JobsSave}
    Capture Page Screenshot          ${path}/sri.png
    log to console      Screenshot captured successfully





*** Keywords ***

*** Variables ***

&{AdminPageElements}    AddTab=//a[@id='menu_admin_viewAdminModule']
...     usermanagement=menu_admin_UserManagement
...     user=menu_admin_viewSystemUsers
...     User_url=https://opensource-demo.orangehrmlive.com/index.php/admin/viewSystemUsers


&{AddUser}    addusers=btnAdd
...           UserRole=//select[@id='systemUser_userType']
...           EmployeeName=//input[@id='systemUser_userName']
...           username=systemUser_userName
...           Status=//select[@id='systemUser_status']
...           password=//input[@id='systemUser_password']
...           con_password=//input[@id='systemUser_confirmPassword']
...           Save=//input[@id='btnSave']


&{Jobs}       job=menu_admin_Job
...           JobTitle=menu_admin_viewJobTitleList
...           DataJob=//div[@class='inner']
...           Add=btnAdd
...           JobTi=jobTitle_jobTitle
...           JobDes=jobTitle_jobDescription
...           filepath=jobTitle_jobSpec
...           Note=jobTitle_note
...           JobsSave=btnSave



${path}                /Users/reenupanwar/Desktop/RobotFile
#
#${usermanagement}       id=menu_admin_UserManagement
#${user}                 id=menu_admin_viewSystemUsers
#${User_url}             https://opensource-demo.orangehrmlive.com/index.php/admin/viewSystemUsers
#
${userfourm}            id=frmList_ohrmListComponent

#Add an user

${AddTab}               xpath=//a[@id='menu_admin_viewAdminModule']
${AddUser}              xpath=//input[@id='btnAdd']
${UserRole}             xpath=//select[@id='systemUser_userType']
${EmployeeName}         xpath=//input[@id='systemUser_userName']
${Status}               xpath=//select[@id='systemUser_status']
${User_Pass}            xpath=//input[@id='systemUser_password']
${User_con_pass}        xpath=//input[@id='systemUser_confirmPassword']
${SaveUser}             xpath=//input[@id='btnSave']