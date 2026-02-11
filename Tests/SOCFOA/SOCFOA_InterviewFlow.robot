# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
SOCFOA Interview Flow
    [tags]                    Sources
    Sleep                     4s
    Appstate                  Home
    Sleep                     4s
    LaunchApp                 Accounts
    Sleep                     4s

    ClickText                 Select a List View: Accounts
    ClickText                 All Accounts
    TypeText                  Search this list...    3902Test\n
    ClickText                 3902Test

    VerifyText                Society Full Open Access Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Society Full Open Access Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     10s
    
    VerifyText                Journal Title                 
    ${*Journal Title}=           Generate Random String      5-10 
    Sleep                     2s   
    TypeText                  Journal Title               ${*Journal Title}
    VerifyText                *Please enter the SVP for this Journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                *Please enter the Publishing Director for this Journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                *Please enter the Business Controller for this Journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                *Please enter the Publishing Assistant Editorial Contracts & Payments (PA ECP) for this journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                If you are working with a member of the Society Business Development team on this contract, please add their name here: 
    ClickCheckbox             Is the Journal transferring to Elsevier from another publisher?    on
    ClickCheckbox             Is the Journal transferring to Elsevier from another publisher?    off
    VerifyText                Please select the Operating Company for this title:
    VerifyText                Elsevier B.V.
    ClickText                 Select Item 1
    VerifyText                *When will the term of this agreement begin?
    ClickText                 Select a date for When will the term of this agreement begin?
    ClickText                 Today
    VerifyText                *When will the term of this agreement end?
    VerifyText                *In what currency will any amounts due under this agreement payable?
    DropDown                  In what currency will any amounts due under this agreement payable?    GBP - British Pound
    ClickText                 Next