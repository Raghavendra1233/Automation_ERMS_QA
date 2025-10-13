# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

2. New template to support roll out of the Check Integrity tool
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
    
    LaunchApp                 Journals
    Sleep                     2s
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickText                 Email    anchor=Homepage Management
    Sleep                     2s
    ClickText                 Show All
    Sleep                     2s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 \Check Integrity tool    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Send
    Sleep                     3s