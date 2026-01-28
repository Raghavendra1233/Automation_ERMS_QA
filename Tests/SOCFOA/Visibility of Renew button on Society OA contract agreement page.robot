# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. Visibility of Renew button on Society OA contract agreement page
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
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