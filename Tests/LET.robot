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
    ClickText                 CJR - 1497657
    VerifyText                Long Editor Contract
    VerifyText                Begin    anchor=Long Editor Contract
    ClickText                 Begin

    ScrollTo                  *Contract Start Date
    ClickText                 Select a date for    anchor=Contract Start Date
    VerifyText                Today
    ClickText                 Today
    ClickText                 Next

    ClickText                 Next

    ClickText                 Next

    ClickText                 Next

    
    VerifyText               Agreement Currency
    DropDown                 Agreement Currency    AUD - Australian Dollar
    ClickText                Next

    VerifyText               Please Pick a Signatory for this contract  

   
