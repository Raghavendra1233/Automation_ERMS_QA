# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
COSI SIF Functionality
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
    TypeText                  Search this list...    RJ-2_2035_RSET-2\n
    Sleep                     2s
    ClickText                 RJ-2_2035_RSET-2
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
    PickList                  *Stage    Idea
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s