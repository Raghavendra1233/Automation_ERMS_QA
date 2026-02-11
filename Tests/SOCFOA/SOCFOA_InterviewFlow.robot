# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
SOCFOA Interview Flow
    [tags]                    Sources
    Sleep                     4s
    Appstate                  Home
    Sleep                     4s
    LaunchApp                 Accounts
    Sleep                     4s

    ClickText                 Select a List View: Accounts
    ClickText                 All Accounts
    TypeText                  Search this list...    3902Test\n
    ClickText                 3902Test
