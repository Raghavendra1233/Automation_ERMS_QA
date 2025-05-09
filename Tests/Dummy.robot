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
    
    
    

    ClickText                 Select a List View: Invited Content
    ClickText                 All
    TypeText                  Search this list...    DT\n
    ClickText                 DT
    ClickText                 Add Guest Editor
    UseModal                  On
    ClickCheckbox             Existing Contact    off
    TypeText                  First Name    First
    TypeText                  Last Name    last\n
    TypeText                  Email    firstlast@gmail.com
    ComboBox                  Search Accounts...    3902Test
    ClickCheckbox             Primary Guest Editor    on
    ClickText                 Next
    Sleep                     5s
    ClickText                 Next
    ClickText                 Finish
    UseModal                  Off

    ClickText                 Related
    ClickText                 Show Actions    anchor=Loading
    ClickText                 Delete
    UseModal                  On
    ClickText                 Delete
    ClickText                 Show Actions    anchor=Loading
    ClickText                 Delete
    ClickText                 Delete
