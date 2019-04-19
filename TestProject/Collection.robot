*** Settings ***
Documentation    Suite description

Library  Collections
Library  SeleniumLibrary
Library  String
Library  OperatingSystem
Library  ../Locators/Outside.py


*** Test Cases ***
Test title
    @{ListsM}   create list  Pudu   SriHari     naidu   PitchVision     Coaching        Centre
    FOR     ${Indexing}      IN      ${ListsM}
        log to console    ${Indexing}
    END

    log to console  ${ListsM}

    @{L1}   create list     This is the List One
    @{L2}   create list     This is the List Two

    ${x}=   Combine Lists    ${L1}   ${L2}
    log to console      ${x}
    ${s1}=      Sort List       ${L1}
    ${Rev}=     Reverse List    ${L2}
    log to console      ${Rev}
    ${Remove}=  Remove Values From List     ${L2}       This is the List
    log to console      ${Remove}

    ${Str}=     Catenate            Iphone      6S
    log to console      ${Str}



Dictonary Test
    &{Dist}=        create dictionary       1=SriHari     2=Naidu   3=Pudu      4=Kori
    ${Num}=     get length                 ${Dist}
    Should be Equal as Integers            ${Num}      4
    Dictionary Should Contain Value        ${Dist}     SriHari
    Dictionary Should Contain Key          ${Dist}     2
    ${Ind}=     Get From Dictionary        ${Dist}     2
    log to console     ${Ind}
    ${Values}=   Get Dictionary Values     ${Dist}
    log to console     ${Values}
    ${Keys}=     Get Dictionary Keys       ${Dist}
    log to console     ${Keys}
    ${Itmes}=    Get Dictionary Items      ${Dist}
    log to console     ${Itmes}
    Log Dictionary                         ${Dist}
    ${Popo}=     Pop From Dictionary       ${Dist}      4

    # Append To List      ${ListsM}    BaviSri

   #  log to console      ${ListsM}

Read data from CSV
    [Tags]    file-reading
    ${FILE_CONTENT}=   Get File    /Users/reenupanwar/Downloads/Untitled spreadsheet - Sheet1.csv
    log to console    File Content: ${FILE_CONTENT}
    @{Lines}=   Split to Lines and Remove Header   ${FILE_CONTENT}
    Log    ${LINES}
    ${RESULT}=   Calculate Sum From List   ${LINES}
    Log    ${RESULT}


*** Keywords ***

Split to Lines and Remove Header
    [Arguments]    ${FILE_CONTENT}
    @{LINES}=    Split To Lines   ${FILE_CONTENT}
    Remove From List    ${LINES}    0
    [Return]    @{LINES}

Calculate Sum From List
    [Arguments]    ${LIST}
    ${RESULT}=    Set Variable    0
    : FOR    ${LINE}    IN    @{LIST}
    \    Log    ${LINE}
    \    @{COLUMNS}=    Split String    ${LINE}    separator=,
    \    ${VALUE}=    Get From List    ${COLUMNS}    2
    \    Log    ${VALUE}
    \    ${RESULT}=    Evaluate    ${RESULT}+${VALUE}
    [Return]    ${RESULT}s
*** Variables ***


