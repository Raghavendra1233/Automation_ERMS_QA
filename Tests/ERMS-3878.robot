# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Replace Document approver for Society Contracts
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    ClickText                 SOCFOA
    ClickText                 Created Date
    ClickText                 CON-049403
    Sleep                     4s
    
    VerifyText                Total Contract Value Range
    ClickText                 Show more actions    anchor=Clone
    ClickText                 Preview & Submit Approvals
    Sleep                     5s

    
    VerifyText                Jessica Alexander  
    Sleep                     5s                   
    
     
    

    
