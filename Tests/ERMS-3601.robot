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
    ClickText                 JG-2/6/2025
    SwitchWindow              NEW

    ClickText                 Journal Group Members
    ClickText                 JGM - 0269673
    SwitchWindow              NEW

    ClickFieldValue           Editor
    ClickText                 Details
    VerifyText                Fields of Interest
    
    ClickText                 Journals
    ClickText                 TJ-2
    ClickText                 Web Preview
    UseModal                  On
