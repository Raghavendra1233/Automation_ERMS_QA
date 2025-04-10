# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Contract Agreements Related List not available on contact record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts

    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 Staff
    Sleep                     1s
    ClickText                 Georgina Joyce
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    ClickText                 Related
    Sleep                     1s
    VerifyText                Contract Agreements
    Sleep                     1s

