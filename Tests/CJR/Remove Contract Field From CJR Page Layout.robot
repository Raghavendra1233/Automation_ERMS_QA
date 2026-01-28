# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
3. Remove Contract Field From CJR Page Layout
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
    LaunchApp                 Contact Journal Relations
    
    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    CJR - 1497657\n
    Sleep                     2s
    ClickText                 CJR - 1497657
    Sleep                     1s
    VerifyText                Contact
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Journal
    Sleep                     1s
    VerifyText                Role
    Sleep                     1s
    VerifyText                Classifications
    Sleep                     1s
    VerifyText                Current
    Sleep                     1s
    VerifyText                Contact Account Name
    Sleep                     1s
    VerifyText                Primary
    Sleep                     1s
    VerifyText                Contact Account Street
    Sleep                     1s
    VerifyText                Status
    Sleep                     1s
    VerifyText                Contact Account City
    Sleep                     1s
    VerifyText                Access Requested Date/Time
    Sleep                     1s
    VerifyText                Contact Account Post Code
    Sleep                     1s
    VerifyText                Relation is Active?
    Sleep                     1s
    VerifyText                Contact Account State
    Sleep                     1s
    VerifyText                Contact Account Country
    Sleep                     1s
    VerifyText                JNL PTS Acronym
    Sleep                     1s
    VerifyText                Comments
    Sleep                     1s