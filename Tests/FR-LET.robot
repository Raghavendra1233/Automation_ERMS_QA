# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. Generate Document button visibility-FRLET
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 FR-LET
    Sleep                     2s
    TypeText                  Search this list...    CON-049583\n
    Sleep                     2s
    ClickText                 CON-049583
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  Status    Expired
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Renew French Long Editor Contract
    Sleep                     2s
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
    ClickText                 FR-LET
    Sleep                     2s
    TypeText                  Search this list...    CON-049583\n
    Sleep                     2s
    ClickText                 CON-049583
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  Status    Ready For Signature
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
    ClickText                 FR-LET
    Sleep                     2s
    TypeText                  Search this list...    CON-049583\n
    Sleep                     2s
    ClickText                 CON-049583
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  Status    In Signatures
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                My Approvals
    Sleep                     2s



*** Test Cases **
2. Hide approval request status on contract agreement page layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 SET
    Sleep                     2s
    VerifyText                CON-049352
    Sleep                     1s
    ClickText                 CON-049352
    Sleep                     1s
    VerifyNoText              Approval Request Status
    Sleep                     1s

    LaunchApp                 Contract Agreements
    Sleep                     4s
    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 FR-LET
    Sleep                     1s
    TypeText                  Search this list...    CON-049395\n
    Sleep                     2s
    VerifyText                CON-049395
    Sleep                     1s
    ClickText                 CON-049395
    Sleep                     1s
    VerifyNoText              Approval Request Status
    Sleep                     1s