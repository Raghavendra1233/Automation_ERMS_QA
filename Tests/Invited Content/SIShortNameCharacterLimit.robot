# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

The character limit of the Short Special issue Name on the SI record should be set to 60 characters max
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
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
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    Special Issue - 4/4/25-4\n
    Sleep                     2s
    ClickText                 Special Issue - 4/4/25-4
    Sleep                     1s
    ClickText                 Edit Short Special Issue Name
    Sleep                     1s
    VerifyText                Special Issue - 4/4/25-4
    Sleep                     1s
    TypeText                  *Short Special Issue Name    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aen
    Sleep                     1s
    ClickText                 Save
    Sleep                     1s
    VerifyText                This field cannot exceed 60 characters 
    Sleep                     2s                    
    ClickText                 Cancel
    Sleep                     1s