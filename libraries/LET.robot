# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
# 1. LET Interview Flow
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations

    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    CJR - 1497644\n
    Sleep                     2s
    ClickText                 CJR - 1497644
    Sleep                     1s
    VerifyText                Long Editor Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Long Editor Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     10s

    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=Contract Start Date
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    
    VerifyText               Agreement Currency
    Sleep                    1s
    DropDown                 Agreement Currency    AUD - Australian Dollar
    Sleep                    1s
    ClickText                Next
    Sleep                    1s

    VerifyText               *Please pick a signatory for this contract  
    Sleep                    1s
    DropDown                 Please pick a signatory for this contract    Georgina Joyce
    Sleep                    1s
    ClickText                Next
    Sleep                    10s
    ClickText                Finish
