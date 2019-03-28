*** Settings ***
Documentation    Suite description
Resource          ..//Varibles/resourceslib.robot
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot
#Resource          ../KeywordsFile/Dashboardpage.robot

*** Test Cases ***
Valid Login
    Open Browser and navigate to URL
    Enter Correct Username ans password
    mouse over      xpath=//a[@id='menu_pim_viewPimModule']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_Configuration']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_configurePim']
    click element   xpath=//a[@id='menu_pim_configurePim']
    ${PIM}=  get text        xpath=//div[@class='inner']
    log to console       ${PIM}
    click element   xpath=//input[@name='configPim[chkShowSSN]']
    click element   xpath=//input[@id='btnSave']
    click element   xpath=//input[@id='btnSave']

Custom Fields on PIM
    mouse over      xpath=//a[@id='menu_pim_viewPimModule']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_Configuration']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_listCustomFields']
    click element   xpath=//a[@id='menu_pim_listCustomFields']
    click element   xpath=//input[@id='buttonAdd']
    input text      xpath=//input[@id='customField_name']       HelloBuddy
    select from list by value   xpath=//select[@id='customField_screen']        emergency
    select from list by value   xpath=//select[@id='customField_type']          1
    input text          xpath=//input[@id='customField_extra_data']             Krish,Murthy,Srinu
    click element       xpath=//input[@id='btnSave']


Data Imports on PIM
    mouse over      xpath=//a[@id='menu_pim_viewPimModule']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_Configuration']
    sleep           3
    mouse over      xpath=//a[@id='menu_admin_pimCsvImport']
    click element   xpath=//a[@id='menu_admin_pimCsvImport']
    sleep           3
    choose file     xpath=//input[@id='pimCsvImport_csvFile']       /Users/reenupanwar/Downloads/testdata.csv
     sleep           3
    ${DataImp}=     get text    xpath=//div[@class='inner']
    log to console      ${DataImp}
    click element   xpath=//input[@value='Upload']


Reporting Methods
    mouse over      xpath=//a[@id='menu_pim_viewPimModule']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_Configuration']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_viewReportingMethods']
    sleep           3
    click element  xpath=//a[@id='menu_pim_viewReportingMethods']
    click element  xpath=//input[@id='btnAdd']
    input text     xpath=//input[@id='reportingMethod_name']        LovelyOne
    click element  xpath=//input[@id='btnSave']


Termination Resource
    mouse over      xpath=//a[@id='menu_pim_viewPimModule']
    sleep           3
    mouse over      xpath=//a[@id='menu_pim_Configuration']
    sleep           3
    click element   xpath=//input[@id='btnAdd']
    input text      xpath=//input[@id='terminationReason_name']     SriHari
    click element   xpath=//input[@id='btnSave']


Employee List
    mouse over      xpath=//a[@id='menu_pim_viewPimModule']
    sleep           3
    click element   xpath=//a[@id='menu_pim_viewEmployeeList']
    select from list by value   xpath=//select[@id='empsearch_employee_status']     5
    select from list by value   xpath=//select[@id='empsearch_termination']         1
    click element               xpath=//input[@id='searchBtn']
    sleep                       3
    ${Whoe}=    get text        xpath=//form[@name='frmList_ohrmListComponent']
    log to console              ${Whoe}

Add Employee
     mouse over      xpath=//a[@id='menu_pim_viewPimModule']
     sleep           3
     click element   xpath=//a[@id='menu_pim_addEmployee']
     input text      xpath=//input[@id='firstName']         SriHari
     input text      xpath=//input[@id='middleName']        Naidu
     input text      xpath=//input[@id='lastName']          Pudu
   #  click element   xpath=//input[@id='chkLogin']
     click element   xpath=//input[@id='btnSave']
     ${GrabProfileDetails}=     get text        xpath=//ul[@id='sidenav']
     log to console      The list of options in profile page is:${GrabProfileDetails}
     ${profile_url}=       get location
     log to console       The profile URl is;${profile_url}
     close browser



