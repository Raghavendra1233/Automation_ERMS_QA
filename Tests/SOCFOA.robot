# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Visibility of Renew button on Society OA contract agreement page
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
  
  
    Sleep                     1s
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049363\n
    Sleep                     2s
    VerifyText                CON-049363
    Sleep                     1s
    ClickText                 CON-049363
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Renew Agreement
    Sleep                     1s



*** Test Cases ***
SocFOA - Conditional visibility of 'Preview and submit approvals' button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     1s
    
    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 SOCFOA
    Sleep                     1s
    TypeText                  Search this list...    CON-049512\n
    Sleep                     2s
    VerifyText                CON-049512
    Sleep                     1s
    ClickText                 CON-049512
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
SOCFOA- Page layout: make "Generate Agreement" button visible
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049519\n
    Sleep                     2s
    VerifyText                CON-049519
    Sleep                     1s
    ClickText                 CON-049519
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    
    VerifyText                Is Draft
    Sleep                     1s
    VerifyText                Status
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s


*** Test Cases ***
SocFOA - Hide 'Clone' and 'Delete' buttons for none Admin /Super User users
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
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049424\n
    Sleep                     2s
    VerifyText                CON-049424
    Sleep                     1s
    ClickText                 CON-049424
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s
    VerifyText                Send for Negotiations
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s


*** Test Cases ***
SocFOA: Conditional Visibility of 'Generate Agreement' Button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049520\n
    Sleep                     2s
    VerifyText                CON-049520
    Sleep                     1s
    ClickText                 CON-049520
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  Status    Ready For Signature
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s
    VerifyText                File Delete
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     3s
    verifyText                View Redline
    Sleep                     2s
    VerifyText                My Approvals
    Sleep                     2s

    ClickText                 Edit Status
    Sleep                     2s
    PickList                  Status    In Signatures
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s
    VerifyText                File Delete
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    verifyText                View Redline
    Sleep                     3s
    VerifyText                My Approvals
    Sleep                     3s



*** Test Cases ***
'Generate Document' button should not display
    [tags]                    Sources
    Sleep                     4s
    Appstate                  Home
    Sleep                     4s
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049544\n
    Sleep                     4s
    VerifyText                CON-049544
    Sleep                     4s
    ClickText                 CON-049544
    Sleep                     4s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                File Delete
    Sleep                     1s
    VerifyText                Continue Draft
    Sleep                     1s
    VerifyText                Clone
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                Send for Negotiations
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s



*** Test Cases ***
Display 'Owner' on SOCFOA agreements
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049544\n
    Sleep                     2s
    VerifyText                CON-049544
    Sleep                     1s
    ClickText                 CON-049544
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Owner
    Sleep                     2s



*** Test Cases ***
Send with Conga Sign button not available for contracts with value 7-15M
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049609\n
    Sleep                     2s
    ClickText                 CON-049609
    Sleep                     2s
    VerifyText                Record Type
    Sleep                     2s
    VerifyText                Society Full Open Access Agreement
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Ready For Signature
    Sleep                     2s
    VerifyText                Total Contract Value (USD)
    Sleep                     2s
    VerifyText                Total Contract Value Range
    Sleep                     2s
    VerifyText                $7 - $15 Million
    Sleep                     2s
    ScrollTo                  Society Signee #1
    Sleep                     2s
    VerifyText                Society Signee #2
    Sleep                     2s
    VerifyText                Society Signee #3
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCHYB
    Sleep                     2s
    TypeText                  Search this list...    CON-049611\n
    Sleep                     2s
    ClickText                 CON-049611
    Sleep                     2s
    VerifyText                Record Type
    Sleep                     2s
    VerifyText                Society Hybrid Agreement
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Ready For Signature
    Sleep                     2s
    VerifyText                Total Contract Value (USD)
    Sleep                     2s
    VerifyText                Total Contract Value Range
    Sleep                     2s
    VerifyText                $7 - $15 Million
    Sleep                     2s
    ScrollTo                  Society Signee #1
    Sleep                     2s
    VerifyText                Society Signee #2
    Sleep                     2s
    VerifyText                Society Signee #3
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 JAA
    Sleep                     2s
    TypeText                  Search this list...    CON-049610\n
    Sleep                     2s
    ClickText                 CON-049610
    Sleep                     2s
    VerifyText                Type
    Sleep                     2s
    VerifyText                Journal Affiliation Agreement
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Ready For Signature
    Sleep                     2s
    ScrollTo                Total Contract Value Range
    Sleep                     2s
    VerifyText                $7 - $15 Million
    Sleep                     2s
    ScrollTo                  Society Signee #1
    Sleep                     2s
    VerifyText                Society Signee #2
    Sleep                     2s
    VerifyText                Society Signee #3
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Chinese Society Full OA Agreement
    Sleep                     2s
    TypeText                  Search this list...    CON-049612\n
    Sleep                     2s
    ClickText                 CON-049612
    Sleep                     2s
    VerifyText                Record Type
    Sleep                     2s
    VerifyText                Chinese Society Full Open Access Agreement
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Ready For Signature
    Sleep                     2s
    VerifyText                Total Contract Value (USD)
    Sleep                     2s
    VerifyText                Total Contract Value Range
    Sleep                     2s
    VerifyText                $7 - $15 Million
    Sleep                     2s
    ScrollTo                  Society Signee #1
    Sleep                     2s
    VerifyText                Society Signee #2
    Sleep                     2s
    VerifyText                Society Signee #3
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s
