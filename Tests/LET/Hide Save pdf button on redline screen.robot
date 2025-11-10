# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
7. Hide 'Save pdf' button on redline screen
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements


    ClickText                 Select a List View: Contract Agreements
    Sleep                     1s
    ClickText                 Long Editor Contracts
    Sleep                     1s
    TypeText                  Search this list...    CON-049556\n
    Sleep                     3s
    VerifyText                CON-049556
    Sleep                     3s
    ClickText                 CON-049556
    Sleep                     1s
    VerifyText                LET
    Sleep                     1s
    VerifyText                View Redline
    Sleep                     1s
    ClickText                 View Redline
    Sleep                     20s

    VerifyText                Open in Word
    Sleep                     30s
    VerifyText                Negotiate
    Sleep                     2s
    VerifyText                True-Up
    Sleep                     2s