# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Update the subject line of the Handling GE appointment and non-handling GE appointment letters
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
    VerifyText                Login
    ClickText                 Login
    Sleep                     1s
    LaunchApp                 Cases
    

    ClickText                 Select a List View: Cases
    Sleep                     1s
    ClickText                 Guest Editor Onboarding
    Sleep                     1s
    ClickText                 00124166
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    ClickText                 Email    anchor=Update Requests
    Sleep                     1s
    ClickCheckbox             Select All    on
    Sleep                     1s
    ClickText                 Next    anchor=-> With ECI agent
    Sleep                     1s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     1s
    ClickText                 Appointment GE letter - Handling Editor    anchor=Skip to Navigation
    Sleep                     1s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     1s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     1s
    VerifyText                Subject
    Sleep                     1s
    
    LaunchApp                 Cases
    Sleep                     1s
    ClickText                 Select a List View: Cases
    Sleep                     1s
    ClickText                 Guest Editor Onboarding
    Sleep                     1s
    ClickText                 00124166
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    ClickText                 Email    anchor=Update Requests
    Sleep                     1s
    ClickCheckbox             Select All    on
    Sleep                     1s
    ClickText                 Next    anchor=-> With ECI agent
    Sleep                     1s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     1s
    ClickText                 Appointment GE letter - Non-Handling Editor    anchor=Skip to Navigation
    Sleep                     1s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     1s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     1s
    VerifyText                Subject
    Sleep                     1s
