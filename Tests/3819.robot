# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Template version 1 for Ethics related campaign - B1
    [tags]                    Sources
    Appstate                  Home
    

    LaunchApp                 Campaigns
    Sleep                     1s
    ClickText                 Select a List View: Campaigns
    Sleep                     1s
    ClickText                 All
    ClickText                 EAB Engagement January 2025
    Sleep                     1s
    VerifyText                EAB Engagement January 2025
    Sleep                     1s
    VerifyText                Raghu
    VerifyText                Settypalli
    Sleep                     1s
    

    ClickText                 Details
    Sleep                     1s
    ClickText                 Email    anchor=Details
    Sleep                     1s
    VerifyText                Show All
    ClickText                 Show All
    Sleep                     1s
    ClickCheckbox             Select Item 3    on    partial_match=False
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 Ethics related campaign - B1 “optional” version    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     3s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Send    partial_match=False
    Sleep                     2s