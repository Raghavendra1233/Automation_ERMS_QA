# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
7. Display 'Owner' on SOCFOA agreements
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 ERMS
    Sleep                     10s
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049544\n
    Sleep                     2s
    VerifyText                CON-049544
    Sleep                     1s
    ClickText                 CON-049544
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Owner
    Sleep                     2s