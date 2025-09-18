# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
EMR component permissions: Views and Buttons
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Cases


    VerifyText                00124241
    Sleep                     2s
    ClickText                 00124241
    Sleep                     2s
    VerifyText                Review & Action
    Sleep                     2s
    ClickText                 Review & Action
    Sleep                     2s
    ClickText                 Show menu    anchor=Editor Management Request
    SLeep                     2s
    VerifyText                All EMR View
    SLeep                     2s 
    VerifyText                Contact View
    SLeep                     2s
    VerifyText                CJR View
    SLeep                     2s
    VerifyText                Error View
    SLeep                     2s 
    VerifyText                Create Contact
    SLeep                     2s
    VerifyText                Create CJR 
    SLeep                     2s
    VerifyText                Create Group Members 
    SLeep                     2s
    ClickText                 Show menu    anchor=Create Group Members
    SLeep                     2s
    VerifyText                Delete Requests
    SLeep                     2s


*** Test Cases ***
EMR component permissions: Review & Action tab visibility
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



*** Test Cases ***
Placement of "SI record unique identifier" field on Details tab of cases with the Case Record Type "Support"
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Cases
    
    ClickText                 Select a List View: Cases
    Sleep                     1s
    ClickText                 Support
    Sleep                     1s
    ClickText                 00124204
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Case Record Type
    Sleep                     2s
    VerifyText                Contact Name
    Sleep                     2s
    VerifyText                Query Type
    Sleep                     2s
    VerifyText                Special Issue
    Sleep                     2s