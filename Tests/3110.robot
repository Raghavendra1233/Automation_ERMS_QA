# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Hide the "Assigned To" Field from the Special Issue (SI) Record
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
    Sleep                     1s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    Special Issue - 2/21/25-2\n
    Sleep                     2s
    ClickText                 Special Issue - 2/21/25-2
    VerifyNoText              Assigned To
    Sleep                     2s