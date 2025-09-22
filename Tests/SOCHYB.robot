# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite



*** Test Cases **
1. SocHyb - Conditional visibility of 'Preview and submit approvals' button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     1s
    
    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 SOCHYB
    Sleep                     1s
    TypeText                  Search this list...    CON-049481\n
    Sleep                     2s
    VerifyText                CON-049481
    Sleep                     1s
    ClickText                 CON-049481
    Sleep                     1s
    
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Approval Status
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                Preview & Submit Approvals 
    Sleep                     1s



*** Test Cases ***
2. SocHyb- Hide 'Clone' and 'Delete' buttons for none Admin /Super User users
    [tags]                    Sources
    Appstate                  Home

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Contract Agreements
    Sleep                     1s
    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCHYB
    Sleep                     2s
    VerifyText                CON-049381
    Sleep                     1s
    ClickText                 CON-049381
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s
    VerifyText                Send for Negotiations
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s

    ClickText                 Log out as Susanne Steiginga


*** Test Cases ***
3. SocHyb- Page layout: make "Generate Agreement" button visible
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCHYB
    Sleep                     2s
    TypeText                  Search this list...    CON-049513\n
    Sleep                     2s
    VerifyText                CON-049513
    Sleep                     1s
    ClickText                 CON-049513
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s



*** Test Cases ***
4. SocHyb: Conditional Visibility of 'Generate Agreement' Button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCHYB
    Sleep                     2s
    TypeText                  Search this list...    CON-049514\n
    VerifyText                CON-049514
    Sleep                     1s
    ClickText                 CON-049514
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    
    ClickText                 Edit Status
    PickList                  Status    Ready For Signature
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s
    VerifyText                File Delete
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s

    ClickText                 Edit Status
    PickList                  Status    In Signatures
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s
    VerifyText                File Delete
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s



*** Test Cases ***
5. Replace Document approver for Society Contracts
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    
    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCHYB
    Sleep                     4s
    ClickText                 Created Date
    Sleep                     2s
    TypeText                  Search this list...    CON-049404\n
    Sleep                     2s
    ClickText                 CON-049404
    Sleep                     4s  
    VerifyText                Total Contract Value Range
    VerifyText                Edit
    Sleep                     5s
    ClickText                 Show more actions    anchor=Clone
    Sleep                     4s
    ClickText                 Preview & Submit Approvals
    Sleep                     20s
    VerifyText                Jessica Alexander  
    Sleep                     5s  



