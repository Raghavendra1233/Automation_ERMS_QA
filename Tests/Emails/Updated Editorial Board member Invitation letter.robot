# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
8. Updated Editorial Board member Invitation letter
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
    LaunchApp                 Journals

    Sleep                     2s
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JFNCR04\n
    Sleep                     2s
    ClickText                 JFNCR04
    Sleep                     2s
    ClickText                 Related
    Sleep                     2s
    VerifyText                CJR - 152
    Sleep                     2s
    ClickText                 CJR - 152
    Sleep                     2s
    ClickText                 Email
    Sleep                     2s
    
    ClickText                 Insert, create, or update template
    Sleep                     3s
    ClickText                 Insert a template...
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    TypeText                  Search templates...    EAB
    Sleep                     2s
    ClickText                 EBM (EAB) Invitation letter
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s
    ClickText                 Send
    Sleep                     3s
