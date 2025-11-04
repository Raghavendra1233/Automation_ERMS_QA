# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

CJR Creation and FR-LET Interview Flow 
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
    ComboBox                  Search Journals...    JFNCR04
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

    VerifyText                Masson Unpaid Editor Contract English
    Sleep                     2s
    VerifyText                Begin              anchor=Masson Unpaid Editor Contract English
    Sleep                     2s
    ClickText                 Begin              anchor=Masson Unpaid Editor Contract English
    Sleep                     2s

    VerifyText                ﻿In this section please confirm the editor, journal, and high level agreement details.
    VerifyText                If information in this section is incorrect, or incomplete, please return to the onboarding process
    VerifyText                Contact Name:
    VerifyText                Role:
    VerifyText                Affiliation:
    VerifyText                Address:
    VerifyText                Editor in UK: 
    VerifyText                Journal Name:
    VerifyText                Acronym:
    VerifyText                Journal EPH Ownership:
    VerifyText                Journal EPH Ownership Description:
    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=*Contract Start Date
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    DropDown                  How long will this contract last?    3
    ClickText                 Next
    Sleep                     10s
    
    VerifyText                *Please pick a signatory for this contract
    DropDown                  Please pick a signatory for this contract    Staff ContactNEW
    ClickText                 Finish
