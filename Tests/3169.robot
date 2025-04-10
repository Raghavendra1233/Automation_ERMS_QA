# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite



*** Test Cases **
Editor in UK field not populating although the editor is based in UK
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations
    

    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    ClickText                 CJR - 1497648
    Sleep                     1s
    ClickFieldValue           Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Personal Address
    Sleep                     1s
    VerifyText                United Kingdom
    Sleep                     1s

    LaunchApp                 Contact Journal Relations
    Sleep                     1s
    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    ClickText                 CJR - 1497648
    Sleep                     1s
    VerifyText                Long Editor Contract
    Sleep                     1s
    ClickText                 Begin    anchor=Long Editor Contract
    Sleep                     4s
    VerifyText                Editor in UK: true
    Sleep                     1s
    

