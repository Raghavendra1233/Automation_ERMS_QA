# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
"Replace Staff Member" button should only appear on Staff Contact records
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    
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
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    ClickText                 Staff
    ClickText                 Georgina Joyce
    VerifyText                Replace Staff Member On Journals
    LaunchApp                 Contacts
    
    ClickText                 Select a List View: Contacts
    ClickText                 Editors
    ClickText                 Aaron Andrew Lowe
    VerifyText                Follow
    VerifyText                Edit
    VerifyText                Log a Call
    VerifyText                New Task
