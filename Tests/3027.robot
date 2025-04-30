# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Visibility of Renew button on Society Hybrid and China Society contract agreement page
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
  
    
    
    Sleep                     1s
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Chinese Society Full OA Agreement
    Sleep                     2s
    TypeText                  Search this list...    CON-049412\n
    Sleep                     2s
    VerifyText                CON-049412
    Sleep                     1s
    ClickText                 CON-049412
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Renew Chinese Society Agreement
    Sleep                     1s
    