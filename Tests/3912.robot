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
    ClickText                 All
    VerifyText                JrlTest
    ClickText                 JrlTest
    
    VerifyText                Enable homepage
    VerifyText                Web Preview
    ClickText                 Web Preview
    Sleep                     5s
    VerifyText                Line 1
    VerifyText                Line 2
    VerifyText                Line 3
    VerifyText                Line 4
    VerifyText                Line 5
    Sleep                     2s