# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

5. Replace Document approver for Society Contracts
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    
    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCHYB
    Sleep                     4s
    ClickText                 Created Date
    Sleep                     2s
    TypeText                  Search this list...    CON-049404\n
    Sleep                     2s
    ClickText                 CON-049404
    Sleep                     4s  
    VerifyText                Total Contract Value Range
    VerifyText                Edit
    Sleep                     5s
    ClickText                 Show more actions    anchor=Clone
    Sleep                     4s
    ClickText                 Preview & Submit Approvals
    Sleep                     20s
    VerifyText                Jessica Alexander  
    Sleep                     5s