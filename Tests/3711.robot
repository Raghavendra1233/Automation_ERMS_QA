*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Web preview not working for home page disabled journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 

    

    ClickText                 Select a List View: Journals
    ClickText                 All
    VerifyText                JrlTest
    ClickText                 JrlTest
    
    ScrollTo                  Enable homepage
    VerifyText                Web Preview
    ClickText                 Web Preview
    Sleep                     2s
    VerifyText                abc, abc abc, abc abc, abc
    Sleep                     2s

    