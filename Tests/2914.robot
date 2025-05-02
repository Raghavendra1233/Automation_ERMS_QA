# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Add new Journal Mailbox field to the Journal record
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
    VerifyText                r.settypalli@elsevier.com
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
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s

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