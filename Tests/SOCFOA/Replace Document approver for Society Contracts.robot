# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
9. Replace Document approver for Society Contracts
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s  

    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCFOA
    Sleep                     4s
    TypeText                  Search this list...    CON-049403\n
    ClickText                 CON-049403
    Sleep                     4s   
    VerifyText                Total Contract Value Range
    VerifyText                Clone
    Sleep                     5s
    ClickText                 Show more actions    anchor=Clone
    Sleep                     4s
    ClickText                 Preview & Submit Approvals
    Sleep                     20s
    VerifyText                Jessica Alexander  
    Sleep                     5s 