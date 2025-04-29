# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Make the webuser id field visible on the Editor Contact record page layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    

    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    VerifyText                Test Editor Contact
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s