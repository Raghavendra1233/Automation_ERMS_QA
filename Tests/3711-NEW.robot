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
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    Sleep                     2s
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
    VerifyText                Radionuclides, essential and potentially toxic elements metals, speciation, mercury, environment and health, QA Test, UAT Test, Final Prod Test, QA PASS
    Sleep                     2s