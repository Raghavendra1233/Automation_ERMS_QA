# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
COPROCEDIA SIF Functionality
    [tags]                    Sources
    Sleep                     3s
    Appstate                  Home
    Sleep                     10s
    Sleep                     3s
    LaunchApp                 Invited Content

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
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    RSET-3\n
    Sleep                     2s
    ClickText                 RSET-3
    Sleep                     2s
    ClickText                 Edit Stage
    Sleep                     2s
    PickList                  *Stage    Special Issue Configuration
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                Inform JM
    Sleep                     2s
    ClickText                 Inform JM
    Sleep                     15s
    ClickText                 Finish
    Sleep                     5s
    ClickText                 Edit Stage
    Sleep                     2s
    PickList                  *Stage    Idea Evaluation
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s