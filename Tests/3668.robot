# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Update editor contact details confirmation letter
    [tags]                    Sources
    Appstate                  Home
    
    ClickText                 Setup
    Sleep                     3s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    linda brooks
    ClickText                 Linda Brooks
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s
    
    LaunchApp                 Cases
    Sleep                     1s
    ClickText                 Select a List View: Cases
    Sleep                     1s
    ClickText                 Editor Data Updates
    Sleep                     1s
    ClickText                 00124160
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    ClickText                 Update Requests
    Sleep                     1s
    ScrollTo                  Next
    VerifyText                Next
    ClickText                 Next
    Sleep                     1s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     1s
    ClickText                 Next
    Sleep                     1s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     1s
    ClickText                 Next    anchor=(manual step for ECI team to identify that contract was Active – through weekly report from Exari; ERMS support working on small improvements. In this stage, the ECI team updates final Editor Role + classification and sends welcome letter)
    Sleep                     1s
    ClickCheckbox             Select All    on
    Sleep                     1s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     3s
    ClickText                 Confirmation to Editor of Update    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Send    partial_match=False
    Sleep                     2s
