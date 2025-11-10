# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
5. SocFOA: Conditional Visibility of 'Generate Agreement' Button
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
    Sleep                     20s
    verifyText                View Redline
    Sleep                     3s
    VerifyText                My Approvals
    Sleep                     3s