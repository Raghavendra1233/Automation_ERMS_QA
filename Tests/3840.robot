# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
User with CAS permissions should be able to edit the “Sponsor for Special Issue” field on the SI record
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
    ClickText                 All
    ClickText                 Special Issue - 2/21/25-2
    Sleep                     1s
    ScrollTo                  Sponsor for Special Issue 
    Sleep                     1s            
    

    ClickText                 Edit Sponsor for Special Issue
    Sleep                     1s
    PickList                  Sponsor for Special Issue    Yes
    Sleep                     1s
    VerifyText                Save
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Sponsor for Special Issue
    Sleep                     1s
    PickList                  Sponsor for Special Issue    No
    Sleep                     1s
    VerifyText                Save
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Sponsor for Special Issue
    Sleep                     1s
    PickList                  Sponsor for Special Issue    --None--
    Sleep                     1s
    VerifyText                Save
    ClickText                 Save
    Sleep                     2s
