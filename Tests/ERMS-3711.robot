# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

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
    

    ClickText                 JrlTest
    ClickText                 Web Preview
    UseModal                  On
    ClickText                 Cancel and close
    UseModal                  Off
    Sleep                     3s