# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Refer custom setting in guest editor email templates with community link - Accept
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Cases
    
    

    ClickText                 Select a List View: Cases
    Sleep                     2s
    ClickText                 All Open Cases
    ClickText                 00124212
    Sleep                     2s
    
    ClickText                 Details
    ClickText                 Email   anchor=Journal Details
    Sleep                     2s
    VerifyText                Show All
    ClickText                 Show All   
    Sleep                     1s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next    anchor=-> With ECI agent
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 Invitation Guest Editor    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Send
    Sleep                     2s
    
