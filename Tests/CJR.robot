# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
CJR Creation
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations 
    Sleep                     2s
    VerifyText                New
    Sleep                     2s
    ClickText                 New
    Sleep                     10s
    UseModal                  On
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ComboBox                  Search Contacts...    Georgina Joyce
    Sleep                     2s
    PickList                  Role    Accepting Editor
    Sleep                     2s
    ComboBox                  Search Journals...    JrlTest
    Sleep                     2s
    PickList                  Classifications    2
    Sleep                     2s
    ClickText                 Select a date for Start Date
    Sleep                     2s
    ClickText                 Today
    Sleep                     2s
    ClickText                 Save    partial_match=False
    Sleep                     2s
    UseModal                  Off
    Sleep                     10s


*** Test Cases ***
Rename Create relationship button to Create CJR
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Cases

    VerifyText                00124241
    Sleep                     2s
    ClickText                 00124241
    Sleep                     2s
    VerifyText                Review & Action
    Sleep                     2s
    ClickText                 Review & Action
    Sleep                     2s 

    VerifyText                Create Contact
    SLeep                     2s
    VerifyText                Create CJR 
    SLeep                     2s


*** Test Cases ***
Remove Contract Field From CJR Page Layout
    [tags]                    Sources
    Appstate                  Home
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