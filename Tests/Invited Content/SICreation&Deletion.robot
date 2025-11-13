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
    LaunchApp                 ERMS
    Sleep                     10s
    Sleep                     3s
    Appstate                  Home
    Sleep                     3s
    LaunchApp                 Invited Content

1. Special Issue Creation
    VerifyText                Create Special Issue                
    Sleep                     2s
    ClickText                 Create Special Issue
    Sleep                     2s
    TypeText                  New Special Issue Name    Special Issue Testing-1\n
    Sleep                     2s
    TypeText                  Short Special Issue Name    SITEST-1\n
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
    TypeText                  Search this list...    SITEST-1\n
    Sleep                     2s
    ClickText                 SITEST-1
    Sleep                     2s

*** Test Cases ***   
SI DELETION CODE
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-1\n
    Sleep                     2s
    ClickText                 SITEST-1
    Sleep                     2s
    ClickText                 Related
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-1\n
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s