# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
9. New template to promote upcoming innovations to the publishing journey
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 ERMS
    Sleep                     10s
    LaunchApp                 Journals

    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickText                 Email    anchor=Homepage Management
    Sleep                     2s
    VerifyText                Show All
    Sleep                     2s
    ClickText                 Show All
    Sleep                     2s
    VerifyText                Contact 2/21/25-1

    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     4s
    
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     4s
    ClickText                 Upcoming innovations to the publishing journey    anchor=Skip to Navigation
    Sleep                     4s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     4s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     4s
    VerifyText                Next
    Sleep                     4s
    ClickText                 Next
    Sleep                     4s
    ClickText                 Send
    Sleep                     4s