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
    Sleep                     2s
    VerifyText                If information in this section is incorrect, or incomplete, please return to the onboarding process
    Sleep                     2s
    VerifyText                Contact Name:
    Sleep                     2s
    VerifyText                Role:
    Sleep                     2s
    VerifyText                Affiliation:
    Sleep                     2s
    VerifyText                Address:
    Sleep                     2s
    VerifyText                Editor in UK: 
    Sleep                     2s
    VerifyText                Journal Name:
    Sleep                     2s
    VerifyText                Acronym:
    Sleep                     2s
    VerifyText                Journal EPH Ownership:
    Sleep                     2s
    VerifyText                Journal EPH Ownership Description:
    Sleep                     2s
    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=*Contract Start Date
    Sleep                     2s
    VerifyText                Today
    Sleep                     2s
    ClickText                 Today
    Sleep                     2s
    DropDown                  How long will this contract last?    3
    Sleep                     2s
    ClickText                 Next
    Sleep                     10s
    
    VerifyText                *Please pick a signatory for this contract
    Sleep                     2s
    DropDown                  Please pick a signatory for this contract    Staff ContactNEW
    Sleep                     2s
    ClickText                 Finish
    Sleep                     10s

    VerifyText                Contract Agreement Name
    Sleep                     2s
    VerifyText                Owner
    Sleep                     2s
    VerifyText                Customer Account
    Sleep                     2s
    VerifyText                RecordType Name
    Sleep                     2s
    VerifyText                Contact
    Sleep                     2s
    VerifyText                Status
    Sleep                     2s
    VerifyText                Contract
    Sleep                     2s
    VerifyText                Approval Status
    Sleep                     2s
    VerifyText                Journal Record
    Sleep                     2s
    VerifyText                FileName
    Sleep                     2s
    VerifyText                Type
    Sleep                     2s
    VerifyText                Latest Document Generated Date
    Sleep                     2s
    VerifyText                Effective Date
    Sleep                     2s
    VerifyText                Clause Generation Status
    Sleep                     2s
    VerifyText                Contract duration in years
    Sleep                     2s
    VerifyText                Signatory
    Sleep                     2s
    VerifyText                Expiration Date
    Sleep                     2s
    VerifyText                Previous Contract Agreement
    Sleep                     2s
    VerifyText                Created By
    Sleep                     2s
    VerifyText                Last Modified By
    Sleep                     10s