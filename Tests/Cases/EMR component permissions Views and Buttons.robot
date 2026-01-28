# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. EMR component permissions: Views and Buttons
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
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