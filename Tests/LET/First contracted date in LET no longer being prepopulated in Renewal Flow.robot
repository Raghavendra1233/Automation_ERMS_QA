# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

4. First contracted date in LET no longer being prepopulated in Renewal Flow
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     1s
    
    ClickText                 Select a List View: Contract Agreements
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049560\n
    Sleep                     1s
    ClickText                 CON-049560
    Sleep                     1s
    VerifyText                LET
    Sleep                     1s

    VerifyText                Renew Long Editor Contract
    Sleep                     2s
    ClickText                 Renew Long Editor Contract
    Sleep                     10s
    ScrollTo                  Date of Editor's First Term 
    Sleep                     1s