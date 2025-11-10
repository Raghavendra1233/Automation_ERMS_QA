# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
4. Update formula field to ensure that Relation_is_Active__c =True if the CJR status equals "Display only"
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations

    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    CJR - 1497659\n
    Sleep                     2s
    ClickText                 CJR - 1497659
    Sleep                     2s
    
    VerifyText                Status
    Sleep                     2s
    VerifyText                Display Only
    Sleep                     2s
    VerifyText                Relation is Active?
    Sleep                     2s