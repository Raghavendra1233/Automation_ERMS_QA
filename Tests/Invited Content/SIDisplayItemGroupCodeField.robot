# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***

1. Display the "Item Group Code" field on the page layout of a CO SI record
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Test CAS
    ClickText                 Test CAS
    Sleep                     2s
    ClickText                 Test CAS
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    LaunchApp                 Invited Content
    
    ClickText                 Select a List View: Invited Content
    Sleep                     1s
    ClickText                 My Current Opinions
    Sleep                     1s
    ClickText                 BT_2030_SECTION1
    Sleep                     1s
    VerifyText                Item Group Code
    Sleep                     1s
    