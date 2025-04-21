# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Contact Loop on creation and deletion
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts

    
    ClickText                 New
    ClickText                 Next
    ${ContactName}=           Generate Random String      5-10    
    TypeText                  First Name               ${ContactName}
    ${ContactName1}=           Generate Random String      5-10    
    TypeText                  Last Name               ${ContactName1}
    

    ComboBox                  Search Accounts...    3902Test
    ClickText                 Save                    Partial_match=False
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     3s
    ClickText                 Delete
    Sleep                     3s
    ClickText                 Delete
    Sleep                     3s