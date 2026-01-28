# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

1. CJR Creation and SET Interview Flow 
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
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
    
    VerifyText                Short Editor Contract
    Sleep                     2s
    VerifyText                Begin              anchor=Short Editor Contract
    Sleep                     2s
    ClickText                 Begin              anchor=Short Editor Contract
    Verify Text               Editor and Journal Details
    Sleep                     2s
    VerifyText                In this section please confirm the editor, journal, and high-level agreement details.
    Sleep                     2s
    VerifyText                If the information in this section is incorrect, or incomplete, please return to the onboarding process
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
    VerifyText                EPH Legal Ownership:
    Sleep                     2s
    VerifyText                EPH Ownership Description:
    Sleep                     2s
    VerifyText                Legal Entity:
    Sleep                     2s
    VerifyText                Date of editor's first term:
    Sleep                     2s
    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=Contract Start Date
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    ClickText                 Next
    Sleep                     10s
    
    ClickText                 Help    anchor=Is this for an Economics Editor who receives payment on a per manuscript basis?
    Sleep                     2s
    VerifyText                This is only applicable for Economics Journals with Submission Fees, please leave unchecked if this is not the case for your journal
    Sleep                     2s
    VerifyText                This is only applicable for Economics Journals with Submission Fees, please leave unchecked if this is not the case for your journal
    Sleep                     2s
    ClickText                 Close
    Sleep                     2s
    ClickText                 Help    anchor=Besides the Editor-in-Chief, will the Editor be coordinating with anyone else?
    Sleep                     2s
    ClickText                 Close
    Sleep                     2s
    VerifyText                Next
    ClickText                 Next
    Sleep                     2s

    ClickText                 Help    anchor=During the term of this Agreement, will the Publisher cover expenses?    partial_match=False
    Sleep                     2s
    VerifyText                Expenses should not be offered proactively to an Editor as a standard clause but should only be agreed as part of the overall negotiations
    Sleep                     2s
    ClickText                 Close
    Sleep                     2s  
    ClickCheckbox             Will the Editor be paid Honorarium?    off
    Sleep                     2s
    ClickCheckbox             Will the Editor be paid Honorarium?    on
    Sleep                     2s
    VerifyText                In which currency will the Editor be paid?
    Sleep                     2s
    DropDown                  In which currency will the Editor be paid?    EUR - Euro
    Sleep                     2s
    TypeText                  How much is the Editor’s Honorarium?    1234
    Sleep                     2s
    DropDown                  In what installments will you pay the honorarium?    Annual
    Sleep                     2s
    VerifyText                Please select the months in which the honorarium payments will be made
    ClickCheckbox             January    on
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s

    VerifyText                For more information about termination issues please see Termination Issues in Journal Editor Agreements
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s

    ClickCheckbox             Are the Aims and Scope set forth in the Annex?    on
    Sleep                     2s
    TypeText                  Include Aims & Scope in the text box below (copy information from journal home page)    QA Testing
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    
    VerifyText                Please ensure the Publisher selected as the signatory for this contract is employed by Elsevier Inc.
    Sleep                     2s
    VerifyText                Please pick a signatory for this contract
    Sleep                     2s
    DropDown                  Please pick a signatory for this contract    Georgina Joyce
    Sleep                     2s
    VerifyText                Please pick a signatory for this contract
    Sleep                     2s
    VerifyText                Next
    Sleep                     2s
    ClickText                 Next
    Sleep                     10s
    ClickText                 Finish                        anchor=Previous
    Sleep                     20s