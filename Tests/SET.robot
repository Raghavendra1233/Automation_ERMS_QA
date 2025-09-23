# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. Generate Document button visibility-SET
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    CON-049582\n
    Sleep                     2s
    ClickText                 CON-049582
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  *Status    Expired
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     10s
    VerifyText                Renew Short Editor Contract
    Sleep                     10s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                My Approvals
    Sleep                     2s
    

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    CON-049582\n
    Sleep                     2s
    ClickText                 CON-049582
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  *Status    Ready For Signature
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     4s
    VerifyText                My Approvals
    Sleep                     2s
    

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    CON-049582\n
    Sleep                     2s
    ClickText                 CON-049582
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  *Status    In Signatures
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    VerifyText                My Approvals
    Sleep                     2s