*** Settings ***
Documentation    Suite description
Resource          ..//Varibles/resourceslib.robot
Library           SeleniumLibrary
Resource          ../KeywordsFile/KeywordsPage.robot
Resource          ../KeywordsFile/Dashboardpage.robot

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
    input text      xpath=//input[@id='customField_name']       JohnbuddyHom
    select from list by value   xpath=//select[@id='customField_screen']        emergency
    select from list by value   xpath=//select[@id='customField_type']          1
    input text          xpath=//input[@id='customField_extra_data']             Bavi,bawana,Man
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
    page should contain text



#    Dashboard Page
#    go back
#
#Dashboard Leave list
#    Leave List page
#    go back
#
#Timesheets page checking
#    Timesheets Page
#    go back
#
#Dashbaord/Quick Lunch text checking
#    Dashboard Page Icons Text checking
#
#Apply Leave single
#    Assign Leave
#
#
##CLose the browser
##    close browser

