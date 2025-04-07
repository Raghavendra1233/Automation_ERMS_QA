# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Web preview not working for home page disabled journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts

    
    ClickText                 New
    ClickText                 Next
    ${ContactName}=           Generate Random String      5-10    
    TypeText                  First Name               ${ContactName}
    ${ContactName1}=           Generate Random String      5-10    
    TypeText                  Last Name               ${ContactName1}
    

    ComboBox                  Search Accounts...    Account2
    ClickText                 Save                    Partial_match=False
    ClickText                 Show more actions
    ClickText                 Delete
    ClickText                 Delete