# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library        QForce
Library        QWeb
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

2. EMR component permissions: Review & Action tab visibility
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
    LaunchApp                 Cases

    ClickText                 Select a List View: Cases
    Sleep                     2s
    ClickText                 Editor Data Updates
    Sleep                     2s
    ClickText                 00124160
    Sleep                     2s
    VerifyText                Review & Action
    Sleep                     2s