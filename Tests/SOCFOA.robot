# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Visibility of Renew button on Society OA contract agreement page
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
  
  
    Sleep                     1s
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049363\n
    Sleep                     2s
    VerifyText                CON-049363
    Sleep                     1s
    ClickText                 CON-049363
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Renew Agreement
    Sleep                     1s



*** Test Cases ***
SocFOA - Conditional visibility of 'Preview and submit approvals' button
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     1s
    
    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 SOCFOA
    Sleep                     1s
    TypeText                  Search this list...    CON-049512\n
    Sleep                     2s
    VerifyText                CON-049512
    Sleep                     1s
    ClickText                 CON-049512
    Sleep                     1s
    
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Approval Status
    Sleep                     1s
    ClickText                 Show more actions
    Sleep                     1s
    VerifyText                Preview & Submit Approvals 
    Sleep                     1s