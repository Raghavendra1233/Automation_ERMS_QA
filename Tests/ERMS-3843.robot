# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
New template to promote upcoming innovations to the publishing journey
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    

    ClickText                 JrlTest
    ClickText                 Email    anchor=Homepage Management
    ClickText                 Show All
    VerifyText                Raghu Settypalli
    Sleep                     4s
    ClickCheckbox             Select Item 6    on    partial_match=False
    VerifyText                Next 
    Sleep                     4s
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
