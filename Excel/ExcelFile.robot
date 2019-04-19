*** Settings ***

Library  ExcelLibrary




*** Test Cases ***
Working with existing excel
    Open Excel        /Users/reenupanwar/Desktop/Read.xlsx

    ${SheetNames}=      get sheet

    log to console  ${SheetNames}



*** Keywords ***
First keyword


Second keyword

