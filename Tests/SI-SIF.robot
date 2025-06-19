# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Special Issue Functionality
    [tags]                    Sources
    Sleep                     3s
    Appstate                  Home
    Sleep                     3s
    LaunchApp                 Invited Content

    # 1. updates the stage to Special Issue Configuration then SIF email should be sent to the email address in the Journal mailbox field associated with the record
     
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