# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
7. Line breaks in biography field in Journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 ERMS
    Sleep                     10s
    LaunchApp                 Journals 

    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    TOJrnl\n
    Sleep                     2s
    ClickText                 TOJrnl
    Sleep                     2s
    
    VerifyText                Enable homepage
    Sleep                     2s
    VerifyText                Web Preview
    Sleep                     2s
    ClickText                 Web Preview
    Sleep                     2s
    Sleep                     5s
    VerifyText                Line 1
    Sleep                     2s
    VerifyText                Line 2
    Sleep                     2s
    VerifyText                Line 3
    Sleep                     2s
    VerifyText                Line 4
    Sleep                     2s
    VerifyText                Line 5
    Sleep                     2s