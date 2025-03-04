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

    Sleep                     3s
    ClickText                 JrlTest
    Sleep                     3s
    ClickText                 Homepage Management
    Sleep                     3s
    ClickText                 Testing1
    Sleep                     3s
    SwitchWindow              NEW
    Sleep                     3s

    ClickText                 Journal Group Members
    Sleep                     3s
    ClickText                 JGM - 0269666
    Sleep                     3s
    SwitchWindow              NEW
    Sleep                     3s

    ClickFieldValue           Editor
    Sleep                     3s
    ClickText                 Details
    Sleep                     3s
    VerifyText                Fields of Interest
    Sleep                     3s
    
    ClickText                 Journals
    Sleep                     3s
    ClickText                 JrlTest
    Sleep                     3s
    ClickText                 Web Preview
    Sleep                     6s
    UseModal                  On
