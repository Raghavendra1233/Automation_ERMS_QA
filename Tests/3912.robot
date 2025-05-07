*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Line breaks in biography are not being reflected
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 

    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
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