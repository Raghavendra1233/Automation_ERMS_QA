# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Typo in country list provided needs to be corrected
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Accounts

    
    ClickText                 Select a List View: Accounts
    Sleep                     2s
    ClickText                 My Accounts
    Sleep                     2s
    ClickText                 ECH Test account
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    VerifyText                South Georgia and the South Sandwich Islands
    Sleep                     2s