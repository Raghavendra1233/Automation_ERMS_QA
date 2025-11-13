# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
4. ChinaSoc: Conditional Visibility of 'Generate Agreement' Button
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
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