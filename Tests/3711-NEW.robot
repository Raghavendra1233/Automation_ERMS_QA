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
    
    VerifyText                Enable homepage
    VerifyText                Web Preview
    ClickText                 Web Preview
    Sleep                     5s
    VerifyText                Radionuclides, essential and potentially toxic elements metals,speciation ,mercury , environment and health , QA Test ,UAT Test , Final Prod Test,QA PASS
    Sleep                     2s