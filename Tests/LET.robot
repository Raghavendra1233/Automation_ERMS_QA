# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
LET Interview flow for Non-Masson Journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations

    

    ClickText                 Select a List View: Contact Journal Relations
    ClickText                 All
    ClickText                 CJR - 1497634
     Sleep                     2s
    VerifyText                Long Editor Contract
    Sleep                     2s
    
    ClickText                 Begin    anchor=Skip to Navigation
    Sleep                     5s
    UseModal                  On
    DropDown                  Editor's Legal Status    Physical Person
    Sleep                     2s
    ClickText                 Select a date for    anchor=Contract End Date
    Sleep                     5s
    ClickText                 Today
    Sleep                     5s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s

    DropDown                  Agreement Currency    AUD - Australian Dollar
    Sleep                     2s
    TypeText                  What is the annual amount to be paid to the editor?    11
    Sleep                     2s
    ClickText                 Next
    Sleep                     5s
    DropDown                  Please pick a signatory for this contract    Staff Contact1
    Sleep                     5s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Finish
    Sleep                     10s
    VerifyText                Contract Agreement
    Sleep                     5s

    

   
