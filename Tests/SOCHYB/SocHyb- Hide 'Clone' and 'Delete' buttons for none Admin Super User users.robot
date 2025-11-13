# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
2. SocHyb- Hide 'Clone' and 'Delete' buttons for none Admin /Super User users
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
    Appstate                  Home

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Contract Agreements
    Sleep                     1s
    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCHYB
    Sleep                     2s
    VerifyText                CON-049381
    Sleep                     1s
    ClickText                 CON-049381
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s
    VerifyText                Send for Negotiations
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s