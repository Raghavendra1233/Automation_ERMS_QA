*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Email campaign template to engage Editorial Board members
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
    Sleep                     1s
    ClickText                 EAB Engagement Letter January 2025    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     1s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     1s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Send    partial_match=False
    Sleep                     2s

    

    