# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
2. Remove EPH legal Owner field from journal Page Layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JT-5\n
    Sleep                     2s
    ClickText                 JT-5
    Sleep                     2s
    ScrollTo                  EPH Legal Ownership
    Sleep                     2s
    VerifyText                EPH Ownership Description
    Sleep                     2s
    VerifyText                EPH Legal Ownership Roll-Up
    Sleep                     2s