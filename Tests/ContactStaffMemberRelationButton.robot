# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
Contact Staff Member Relation Button Visibility
    # 1. **Replace Staff Member" button should only appear on Staff Contact records**
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
    
    LaunchApp                 Contacts
    Sleep                     2s
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 Staff
    Sleep                     2s
    ClickText                 Details
    VerifyText                Contact Record Type
    Sleep                     2s
    VerifyText                Replace Staff Member On Journals
    LaunchApp                 Contacts
    Sleep                     2s
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 Editors
    Sleep                     2s
    ClickText                 Abhi Kanan
    Sleep                     2s
    VerifyText                Follow
    VerifyText                Edit
    VerifyText                Log a Call
    VerifyText                New Task
    Sleep                     2s