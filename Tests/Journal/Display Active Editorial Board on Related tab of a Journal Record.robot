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
    
    Sleep                     2s
    VerifyText                Filtered by Contact Journal Relation: Relation is Active?, Contact Journal Relation: Record Type
    Sleep                     3s
    VerifyText                Contact Journal Relation: Contact Journal Relation Name
    Sleep                     3s
    VerifyText                Contact Journal Relation: Contact Name
    Sleep                     3s
    VerifyText                Contact Journal Relation: Role
    Sleep                     3s
    VerifyText                Contact Journal Relation: Classifications
    Sleep                     3s
    VerifyText                Contact Journal Relation: Start Date
    Sleep                     3s