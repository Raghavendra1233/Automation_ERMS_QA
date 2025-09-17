# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
# 1. JOURNAL CREATION 

# 2. Journals: Operating Company Value Maping
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals


    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    JT-1\n
    Sleep                     1s
    ClickText                 JT-1
    Sleep                     2s
    ClickText                 JT-1
    Sleep                     1s
    ClickText                 Edit Operating Company
    Sleep                     2s
    PickList                  Operating Company    Elsevier BV
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Operating Company
    Sleep                     2s
    PickList                  Operating Company    Elsevier Ltd
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s



# 3. Remove EPH legal Owner field from journal Page Layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JT-5\n
    Sleep                     2s
    ClickText                 JT-5
    Sleep                     2s
    ScrollTo                  EPH Legal Ownership
    Sleep                     2s
    VerifyText                EPH Ownership Description
    Sleep                     2s
    VerifyText                EPH Legal Ownership Roll-Up
    Sleep                     2s



# 4. 'View Related Contacts' link visibility on the journal record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickFieldValue           View Related Contacts
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    SwitchWindow              2
    Sleep                     2s
    VerifyText                View Related Contacts 



# 5. Add new Journal Mailbox field to the Journal record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JT-1\n
    Sleep                     2s
    ClickText                 JT-1
    Sleep                     2s
    ScrollTo                  Journal Mailbox 
    Sleep                     2s
            
    ClickText                 Edit Journal Mailbox
    Sleep                     2s
    TypeText                  Journal Mailbox    r.settypalli@elsevier.com
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Journal Mailbox
    Sleep                     2s
    TypeText                  Journal Mailbox    satya@elsevier.com
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s

    LaunchApp                 Journals
    VerifyText                JrlTest
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ScrollTo                  Journal Mailbox 
    Sleep                     2s







