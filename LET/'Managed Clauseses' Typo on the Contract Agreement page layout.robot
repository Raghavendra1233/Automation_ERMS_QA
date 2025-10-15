# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

5. 'Managed Clauseses' Typo on the Contract Agreement page layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    
    ClickText                 Select a List View: Contract Agreements
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049549\n
    Sleep                     2s
    VerifyText                CON-049549
    Sleep                     1s
    ClickText                 CON-049549
    Sleep                     1s
    VerifyText                LET
    Sleep                     1s
    VerifyText                Managed Clauses
    ClickText                 Managed Clauses