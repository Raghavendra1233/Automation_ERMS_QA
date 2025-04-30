# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Add Email tab to Events
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Elsevier Events
    

    ClickText                 Select a List View: Elsevier Events
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    Test Elsevier Event-1\n
    Sleep                     2s
    ClickText                 Test Elsevier Event-1
    Sleep                     2s
    VerifyText                Email                  anchor=Details
    Sleep                     2s
    ClickText                 Email                  anchor=Details
    Sleep                     2s
    VerifyText                Journal_Roles__c
    Sleep                     2s
    VerifyText                Classifications__c
    Sleep                     2s
    VerifyText                Invitee_Response__c
    Sleep                     2s
    VerifyText                Contact Name
    Sleep                     2s
    VerifyText                Contact Email
    Sleep                     2s
    VerifyText                Journal Roles
    Sleep                     2s
    VerifyText                Classifications        anchor=Journal Roles
    Sleep                     2s
    VerifyText                Invitee Response
    Sleep                     2s

     
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next    anchor=Venue
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 Event - branded, blank    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Event - branded, blank    anchor=Email Templates
    Sleep                     2s
    ClickText                 Event Invitation with Zoom Link Option    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Event Invitation with Zoom Link Option    anchor=Email Templates
    Sleep                     2s
    ClickText                 Virtual Meeting Invitation    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Virtual Meeting Invitation    anchor=Email Templates
    Sleep                     2s
    ClickText                 Event time confirmation reminder    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=*From Address
    Sleep                     2s
    ClickText                 Virtual Editors Meetings    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Virtual Editors Meetings    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier Journal Boards    anchor=Skip to Navigation
    Sleep                     2s
