# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***

Make the "Potential competing interests info" field visible on the page layout of a SI record
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
    VerifyText                Login
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

    VerifyText                Potential competing interests
    Sleep                     1s
    VerifyText                Potential competing interests info
    Sleep                     1s
    VerifyText                Other Active Special Issues
    Sleep                     1s
    

    ClickText                 Edit Potential competing interests info
    Sleep                     2s
    TypeText                  Potential competing interests info    Automation Testing
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
