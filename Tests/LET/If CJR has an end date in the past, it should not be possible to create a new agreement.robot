# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
6. If CJR has an end date in the past, it should not be possible to create a new agreement (or renew an existing one)
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049549\n
    Sleep                     2s
    VerifyText                CON-049549
    Sleep                     1s
    ClickText                 CON-049549
    Sleep                     1s
    VerifyText                LET
    Sleep                     1s
    VerifyText                File Delete
    Sleep                     1s
    VerifyText                Send for Negotiations
    Sleep                     1s
    verifyText                View Redline
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                My Approvals
    Sleep                     1s
    VerifyText                Sharing
    Sleep                     1s
    VerifyText                Contact Journal Relation Name
    Sleep                     1s
    VerifyText                CJR - 1497644

    LaunchApp                 Contact Journal Relations
    Sleep                     2s
    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    CJR - 1497644\n
    Sleep                     2s
    VerifyText                CJR - 1497644
    Sleep                     1s
    ClickText                 CJR - 1497644
    Sleep                     1s
    VerifyText                End Date
    Sleep                     1s
    VerifyText                Contract Agreements
    Sleep                     1s