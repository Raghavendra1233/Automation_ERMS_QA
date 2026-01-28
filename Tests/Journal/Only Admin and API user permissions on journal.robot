# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
6. Only Admin and API user should be able to update Publisher/Publishing Director/Journal Manager/Marketing Communication Manager on a journal record
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s

    LaunchApp                 Journals
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    VerifyText                Publisher
    Sleep                     1s
    VerifyText                Publishing Director
    Sleep                     1s
    VerifyText                Journal Manager
    Sleep                     1s
    VerifyText                Marketing Manager
    Sleep                     1s
    
    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    LaunchApp                 Journals
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    VerifyText                Publisher
    Sleep                     1s
    VerifyText                Publishing Director
    Sleep                     1s
    VerifyText                Journal Manager
    Sleep                     1s
    VerifyText                Marketing Manager
    Sleep                     1s