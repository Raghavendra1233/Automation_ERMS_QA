# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
LET Interview flow for Non-Masson Journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 


    

    ClickText    T1
    ClickText    Homepage Management
    ClickText    Testing1
    SwitchWindow    NEW

    ClickText    Journal Group Members
    ClickText    JGM - 0269666
    SwitchWindow    NEW

    ClickFieldValue    Editor
    ClickText    Details
    VerifyText         Fields of Interest
    
    ClickText    Journals
    ClickText    T1
    ClickText    Web Preview
    UseModal    On
