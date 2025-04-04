# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
The character limit of the Short Special issue Name should be set to 60 characters max in the Create SI flow
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
    LaunchApp                 Invited Content
    

    ClickText                 Create Special Issue
    TypeText                  New Special Issue Name    QA Testing
    TypeText                  Short Special Issue Name    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aen
    DropDown                  Expected Publication Year    2027
    DropDown                  Origins of Idea    CAS
    ClickText                 Next
    VerifyText                This field cannot exceed 60 characters.
