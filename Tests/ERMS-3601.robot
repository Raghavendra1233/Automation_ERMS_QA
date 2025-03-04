# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Rendering Issue with Editorial Board Members' Fields of Interest
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 


    ClickText                 TJ-2
    ClickText                 Homepage Management
    Sleep                     3s
    ClickText                 JG-2/6/2025
    Sleep                     3s
    SwitchWindow              NEW

    ClickText                 Journal Group Members
    ClickText                 JGM - 0269673
    Sleep                     3s
    SwitchWindow              NEW

    ClickFieldValue           Editor
    Sleep                     3s
    ClickText                 Details
    Sleep                     3s
    VerifyText                Fields of Interest
    Sleep                     3s
    
    ClickText                 Journals
    ClickText                 TJ-2
    ClickText                 Web Preview
    Sleep                     6s
    UseModal                  On
