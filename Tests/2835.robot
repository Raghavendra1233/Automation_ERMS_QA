# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Make 'What is the date of the currently existing agreement between the parties?' field mandatory on LET renewal flow
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049460\n
    Sleep                     2s
    ClickText                 CON-049460
    Sleep                     2s
    VerifyText                Renew Long Editor Contract
    Sleep                     2s
    ClickText                 Renew Long Editor Contract
    Sleep                     2s
    ScrollTo                  *What is the date of the currently existing agreement between the parties?
    Sleep                     2s