# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Special Issue Functionality
    [tags]                    Sources
    Sleep                     3s
    Appstate                  Home
    Sleep                     3s
    LaunchApp                 Invited Content

    # 1. Special Issue Creation
    VerifyText                Create Special Issue                
    Sleep                     2s
    ClickText                 Create Special Issue
    Sleep                     2s
    TypeText                  New Special Issue Name    Special Issue Testing-3\n
    Sleep                     2s
    TypeText                  Short Special Issue Name    SITEST-3\n
    Sleep                     2s
    DropDown                  Expected Publication Year    2029
    Sleep                     2s
    DropDown                  Origins of Idea    CAS
    Sleep                     2s
    ClickText                 Next               
    Sleep                     2s
    ComboBox                  Search Journals...    JT-1
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s                            
    ClickText                 Next               anchor=No items to display.
    Sleep                     2s
    VerifyText                JSR
    Sleep                     2s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Finish
    Sleep                     2s
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-3\n
    Sleep                     2s
    ClickText                 SITEST-3
    Sleep                     2s                      


    # ADD GUEST EDITOR FLOW
    ClickText                 Add Guest Editor
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickCheckbox             Existing Contact    off
    Sleep                     2s
    TypeText                  First Name    First
    Sleep                     2s
    TypeText                  Last Name    last\n
    Sleep                     2s
    TypeText                  Email    firstlast@gmail.com
    Sleep                     2s
    ComboBox                  Search Accounts...    3902Test
    Sleep                     2s
    ClickCheckbox             Primary Guest Editor    on
    Sleep                     5s
    ClickText                 Next
    Sleep                     5s
    ClickText                 Next
    Sleep                     15s
    ClickText                 Finish
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s

    
     # SI DELETION CODE
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-3\n
    Sleep                     2s
    ClickText                 SITEST-3
    Sleep                     2s
    ClickText                 Related
    Sleep                     2s
    ClickText                 Show Actions    parent=LIGHTNING-BUTTON-MENU
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Show Actions    parent=LIGHTNING-BUTTON-MENU
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    LaunchApp                 Contacts
    Sleep                     2s
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    First Last\n
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Cancel and close
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-3\n
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s