# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
2. Editor Contract Agreements Created YTD Report
    [tags]                    Sources
    Sleep                     3s
    Appstate                  Home
    LaunchApp                 ERMS
    Sleep                     10s
    Sleep                     3s

    ClickText                 Setup
    Sleep                     3s
    ClickText                 Opens in a new tab
    Sleep                     3s
    SwitchWindow              NEW
    Sleep                     3s
    ClickText                 User
    Sleep                     3s
    TypeText                  Search Setup    Iris Dortland
    Sleep                     3s
    ClickText                 Iris Dortland
    Sleep                     3s
    VerifyText                Iris Dortland
    Sleep                     3s
    ClickText                 Iris Dortland
    Sleep                     3s
    VerifyText                Login
    Sleep                     3s
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