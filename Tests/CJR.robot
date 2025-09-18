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
