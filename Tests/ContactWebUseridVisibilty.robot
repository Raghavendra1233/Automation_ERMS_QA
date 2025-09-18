# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
Contact Web user id field visibility
    #1. **Make the webuser id field visible on the Editor Contact record page layout only for SysAdmin User with Edit access(Not for Publisher user)**
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    

    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    VerifyText                Test Editor Contact
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ScrollTo                  Web User Id
    Sleep                     2s

    Sleep                     3s
    ClickText                 Edit Web User Id
    Sleep                     3s
    ${WebUserId}=             Generate Random String      5-10  
    Sleep                     4s  
    TypeText                  Web User Id               ${Web User Id}
    Sleep                     4s
    ClickText                 Save
    Sleep                     2s
    
    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    VerifyText                Test Editor Contact
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ScrollTo                  Created By
    Sleep                     2s
    VerifyText                Last Modified By
    Sleep                     2s
    VerifyText                External Reference
    Sleep                     2s
    VerifyText                Salesforce Update Date
    Sleep                     2s
    VerifyText                Key
    Sleep                     2s
    VerifyText                Update Homepage Entries
    Sleep                     2s