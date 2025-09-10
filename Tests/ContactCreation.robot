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
    

    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 Editors
    Sleep                     2s
    VerifyText                New 
    Sleep                     2s
    ClickText                 New 
    Sleep                     2s   
    ClickText                 Next
    Sleep                     5s
    ${ContactName}=           Generate Random String      5-10   
    Sleep                     2s 
    TypeText                  First Name               ${ContactName}
    Sleep                     2s
    ${ContactName1}=           Generate Random String      5-10  
    Sleep                     2s  
    TypeText                  Last Name               ${ContactName1}
    Sleep                     2s
    ComboBox                  Search Accounts...    3902Test
    Sleep                     2s
    ClickText                 Save                    Partial_match=False
    Sleep                     2s
