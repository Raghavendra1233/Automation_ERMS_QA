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