# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
9. Display Active Editorial Board on Related tab of a Journal Record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 ERMS
    Sleep                     10s
    LaunchApp                 Journals
   
    VerifyText                JrlTest
    ClickText                 JrlTest
    ClickText                 Related
    VerifyText                Active Editorial Board
    ClickText                 Active Editorial Board
    
    Sleep                     3s
    VerifyText                Contact Journal Relation: Contact Journal Relation Name
    Sleep                     3s
    VerifyText                Contact Name
    Sleep                     3s
    VerifyText                Role
    Sleep                     3s
    VerifyText                Classifications
    Sleep                     3s
    VerifyText                Contact Journal Relation: Start Date
    Sleep                     3s