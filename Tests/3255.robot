# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite



*** Test Cases **
GEA - Conditional visibility of 'Preview and submit approvals' button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     1s
    
    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 GEA
    Sleep                     1s
    VerifyText                CON-049477
    Sleep                     1s
    ClickText                 CON-049477
    Sleep                     1s
    
    VerifyText                Guest Editor
    Sleep                     1s
    VerifyText                Approval Status
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                Preview & Submit Approvals 
    Sleep                     1s