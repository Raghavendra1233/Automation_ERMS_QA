# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***

Hide "Conflict of Interest Statement" field from the page layout of the CSR
    [tags]                    Sources
    Appstate                  Home

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Test CAS
    ClickText                 Test CAS
    Sleep                     2s
    ClickText                 Test CAS
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    LaunchApp                 Invited Content

    ClickText                 Select a List View: Invited Content
    Sleep                     1s
    ClickText                 My Special Issues
    Sleep                     1s
    VerifyText                abc
    Sleep                     1s
    ClickText                 abc
    Sleep                     1s
    ClickText                 Related
    Sleep                     1s
    VerifyText                Guest Editors
    Sleep                     1s
    VerifyText                Contact Special Issue Relationship Name
    Sleep                     1s
    VerifyText                Start Date
    Sleep                     1s
    VerifyText                Created Date
    Sleep                     1s
    VerifyText                CSR Active
    Sleep                     1s

    VerifyText                CSR-96200
    Sleep                     1s
    ClickText                 CSR-96200
    Sleep                     1s
    VerifyNoText              Conflict of Interest Statement
    Sleep                     2s