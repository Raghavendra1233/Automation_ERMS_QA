# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Send with Conga Sign button not available for contracts with value 7-15M
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049609\n
    Sleep                     2s
    ClickText                 CON-049609
    Sleep                     2s
    VerifyText                Record Type
    Sleep                     2s
    VerifyText                Society Full Open Access Agreement
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Ready For Signature
    Sleep                     2s
    VerifyText                Total Contract Value (USD)
    Sleep                     2s
    VerifyText                Total Contract Value Range
    Sleep                     2s
    VerifyText                $7 - $15 Million
    Sleep                     2s
    ScrollTo                  Society Signee #1
    Sleep                     2s
    VerifyText                Society Signee #2
    Sleep                     2s
    VerifyText                Society Signee #3
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s
