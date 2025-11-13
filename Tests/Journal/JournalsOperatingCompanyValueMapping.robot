# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. Journals Operating Company Value Mapping
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
    Appstate                  Home
    LaunchApp                 Journals


    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    JT-1\n
    Sleep                     1s
    ClickText                 JT-1
    Sleep                     2s
    ClickText                 JT-1
    Sleep                     1s
    ClickText                 Edit Operating Company
    Sleep                     2s
    PickList                  Operating Company    Elsevier BV
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Operating Company
    Sleep                     2s
    PickList                  Operating Company    Elsevier Ltd
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s