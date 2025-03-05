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
    ClickText                 CJR - 1497633
    Sleep                     2s
    VerifyText                Long Editor Contract
    Sleep                     5s
    
    ClickText                 Begin    anchor=Skip to Navigation
    Sleep                     5s
    UseModal                  On
    Sleep                     2s
    
    VerifyText                Contract Start Date
    

    ClickText                 Select a date for    anchor=Contract Start Date
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
    ClickText                 Next
    Sleep                     2s
    DropDown                  Please pick a signatory for this contract    Georgina Joyce
    Sleep                     2s
    ClickText                 Next
    VerifyNoText              Press Finish to complete!
    VerifyText                Finish
    ClickText                 Finish
    Sleep                     5s
    VerifyText                Contract Agreement
    Sleep                     2s
    VerifyText                LET

    

   
