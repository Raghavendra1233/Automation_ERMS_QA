# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
2. Rename Create relationship button to Create CJR
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Cases

    VerifyText                00124241
    Sleep                     2s
    ClickText                 00124241
    Sleep                     2s
    VerifyText                Review & Action
    Sleep                     2s
    ClickText                 Review & Action
    Sleep                     2s 

    VerifyText                Create Contact
    SLeep                     2s
    VerifyText                Create CJR 
    SLeep                     2s