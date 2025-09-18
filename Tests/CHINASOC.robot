# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Visibility of Renew button on Society Hybrid contract agreement page
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
  
    
    Sleep                     1s
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Chinese Society Full OA Agreement
    Sleep                     2s
    TypeText                  Search this list...    CON-049412\n
    Sleep                     2s
    VerifyText                CON-049412
    Sleep                     1s
    ClickText                 CON-049412
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Renew Chinese Society Agreement
    Sleep                     1s



*** Test Cases ***
ChinaSOC - Conditional visibility of 'Preview and submit approvals' button
    [tags]                    Sources
    Sleep                     3s
    Appstate                  Home
    Sleep                     3s
    LaunchApp                 Contract Agreements
    Sleep                     3s
    
    ClickText                 Select a List View: Contract Agreements
    Sleep                     3s
    ClickText                 Chinese Society Full OA Agreements
    Sleep                     1s
    TypeText                  Search this list...    CON-049517\n
    Sleep                     2s
    VerifyText                CON-049517
    Sleep                     1s
    ClickText                 CON-049517
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
ChinaSoc- Page layout: make "Generate Agreement" button visible
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Chinese Society Full OA Agreements
    Sleep                     2s
    TypeText                  Search this list...    CON-049541\n
    Sleep                     2s
    VerifyText                CON-049541
    Sleep                     1s
    ClickText                 CON-049541
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
ChinaSoc: Conditional Visibility of 'Generate Agreement' Button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Chinese Society Full OA Agreements
    Sleep                     2s
    TypeText                  Search this list...    CON-049552\n
    Sleep                     2s
    VerifyText                CON-049552
    Sleep                     1s
    ClickText                 CON-049552
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
    Sleep                     1s
    VerifyText                Add Chinese Translations
    Sleep                     1s
    VerifyText                Clone
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                Delete
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s
    VerifyText                Sharing
    Sleep                     1s

    ClickText                 Edit Status
    PickList                  Status    In Signatures
    Sleep                     2s
    ClickText                 Save
    Sleep                     5s
    VerifyText                File Delete
    Sleep                     1s
    VerifyText                Add Chinese Translations
    Sleep                     1s
    VerifyText                Clone
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                Delete
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s
    VerifyText                Sharing
    Sleep                     1s
