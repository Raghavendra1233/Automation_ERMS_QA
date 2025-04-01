# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Journals: Operating Company Value not Mapped
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals


    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
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
