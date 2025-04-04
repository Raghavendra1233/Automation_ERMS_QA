# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Placement of "SI record unique identifier" field on Details tab of cases with the Case Record Type "Support"
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Cases
    
    ClickText                 Select a List View: Cases
    Sleep                     1s
    ClickText                 Support
    Sleep                     1s
    ClickText                 00124204
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Case Record Type
    Sleep                     2s
    VerifyText                Contact Name
    Sleep                     2s
    VerifyText                Query Type
    Sleep                     2s
    VerifyText                Special Issue
    Sleep                     2s
    

