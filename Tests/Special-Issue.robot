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
    TypeText                  New Special Issue Name    Special Issue Testing-1\n
    TypeText                  Short Special Issue Name    SITEST-1\n
    DropDown                  Expected Publication Year    2029
    DropDown                  Origins of Idea    CAS
    ClickText                 Next
    ComboBox                  Search Journals...    JT-1
    ClickText                 Next
    ClickCheckbox             Select Item 1    on    partial_match=False
    ClickText                 Finish
    LaunchApp                 invited content
    ClickText                 Select a List View: Invited Content
    ClickText                 All
    TypeText                  Search this list...    SITEST-1\n   
    ClickText                 SITEST-1
    
    
