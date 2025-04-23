 NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
Ensure the gender data pie chart is visible on the Editor Insights tab again
    [tags]                    Sources
    Appstate                  Home

    LaunchApp                 Journals
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    
    VerifyText                Editor Insights
    Sleep                     1s
    ClickText                 Editor Insights
    Sleep                     1s

    VerifyText                Editor Breakdown
    Sleep                     1s
    VerifyText                Editors By Country
    Sleep                     1s
    VerifyText                Editors By Gender
    Sleep                     1s
    ScrollTo                  Contracts With Relations
    Sleep                     1s
    VerifyText                L1+2 Relationships and Contracts
    Sleep                     1s

    
    VerifyText                Data Quality
    ClickText                 Data Quality
    Sleep                     1s
    VerifyText                Bounced Emails on Contacts per Journal
    Sleep                     1s
    VerifyText                Contact Journal Relationships Without Homepage Entries
    Sleep                     1s
    ScrollTo                  Contracts With Relations
    Sleep                     1s
    VerifyText                L1+2 Relationships and Contracts
    Sleep                     1s

    
    VerifyText                Contracts    anchor=Data Quality
    ClickText                 Contracts    anchor=Data Quality
    Sleep                     1s
    VerifyText                Contracts With Journal
    Sleep                     1s
    VerifyText                Contracts Without Relations
    Sleep                     1s
    ScrollTo                  Contracts With Relations
    Sleep                     1s
    VerifyText                L1+2 Relationships and Contracts
    Sleep                     1s