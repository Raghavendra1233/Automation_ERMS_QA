# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Editor Contract Agreements Created YTD Report
    [tags]                    Sources
    Appstate                  Home

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    Iris Dortland
    Sleep                     2s
    ClickText                 Iris Dortland
    Sleep                     2s
    VerifyText                Login
    Sleep                     23s
    ClickText                 Login
    Sleep                     3s
    
    LaunchApp                 Reports
    Sleep                     2s
    ClickText                 All Reports
    Sleep                     2s
    TypeText                  Search all reports...    LET, SET & FR LET Created\n
    Sleep                     2s
    VerifyText                LET, SET & FR LET Created YTD
    Sleep                     2s
    ClickText                 LET, SET & FR LET Created YTD
    Sleep                     2s
    VerifyText                Contract Agreement: Contract Agreement Name
    Sleep                     2s
    VerifyText                Effective Date
    Sleep                     2s
    VerifyText                Journal Record
    Sleep                     2s
    VerifyText                Contract Agreement: Record Type
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Contract Agreement: Created Date
    Sleep                     2s
    VerifyText                Publisher
    Sleep                     2s
    VerifyText                Publishing Assistant Editorial C & P
    Sleep                     3s
