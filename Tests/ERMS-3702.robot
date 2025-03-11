# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Make the Editorial Manager and Review paper manager fields visible on Journal records for all users
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 
    

    ClickText                 JrlTest
    VerifyText                Review Paper Manager
    VerifyText                Editorial Manager
    Sleep                     3s

