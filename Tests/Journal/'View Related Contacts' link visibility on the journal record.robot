# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
3. 'View Related Contacts' link visibility on the journal record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickFieldValue           View Related Contacts
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    SwitchWindow              2
    Sleep                     2s
    VerifyText                View Related Contacts 