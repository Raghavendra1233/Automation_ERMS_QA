# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
'Generate Document' button should not display
    [tags]                    Sources
    Appstate                  Home
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
