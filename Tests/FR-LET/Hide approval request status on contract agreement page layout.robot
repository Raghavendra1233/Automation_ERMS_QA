# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
2. Hide approval request status on contract agreement page layout
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    CON-049352\n
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