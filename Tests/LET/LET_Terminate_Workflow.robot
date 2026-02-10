# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

LET Terminate Workflow
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
    
    VerifyText                Long Editor Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Long Editor Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     10s
    

    VerifyText                In this section please confirm the editor, journal, and high level agreement details.
    VerifyText                If information in this section is incorrect, or incomplete, please return to the onboarding process
    VerifyText                Contact Name: Georgina Joyce
    VerifyText                Role: Accepting Editor               
    VerifyText                Affiliation: Elsevier
    VerifyText                Address: ,
    VerifyText                Editor in UK: false
    VerifyText                Is the editor employed by an Institution that is requesting to be a party to this editor's contract?
    
    VerifyText                Journal Name: Test Journal                   
    VerifyText                Acronym: JrlTest               
    VerifyText                Journal EPH Ownership:
    VerifyText                Journal EPH Ownership Description: 
    VerifyText                Journal Operating Company: 

    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=Contract Start Date
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    ClickText                 Next
    Sleep                     1s        

    VerifyText                Do you wish to include the following clause?                 
    VerifyText                Text included in the blank box below is OPTIONAL and can be used for either of two reasons:
    VerifyText                If the Editor under this agreement shares his/her role with other co-editors, as for example when there are 2 co-Editors-in-Chief for this Journal, then you can list the responsibilities of each co-Editor-in-Chief in order to clearly distinguish/separate their responsibilities; or
    VerifyText                When there are Other Editors that support this journal and you wish to list them all, for example, you may list them to describe their specialty and/or individual areas of responsibility. All editors listed in this Annex will have their own separate agreements with Elsevier and we list them on this Annex only for reference. Text included in this blank box will appear as “Editor’s/Other Editors’ Responsibilities” as Annex either 1.5/1.6/1.7 depending on the type of editor agreement you generate.
    ClickText                 Next
    
    VerifyText                This section is for who has the editorial responsibility  
    VerifyText                *Who has ultimate editorial responsibility?               
    VerifyText                Editor has ultimate editorial responsibility 
    VerifyText                Ultimate editorial responsibility lies with the Editor in Chief and not with the Editor
    ClickText                 Next   

    VerifyText                *Is the production schedule determined by the Publisher, in consultation with Editor 
    DropDown                  Is the production schedule determined by the Publisher, in consultation with Editor?    Yes, in consultation with Editor
    DropDown                  Is the production schedule determined by the Publisher, in consultation with Editor?    No, Publisher only
    VerifyText                *What are the editor’s obligations relating to the timing of peer review?
    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The total time of refereeing and handling by the Editor and the Editorial Board should not exceed a period of XX weeks
    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The Editor Shall comply with the detailed timetable for handling and refereeing Articles set out in Annex
    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The Editor shall use his/her best efforts to handle and referee Articles in an expeditious manner
    ClickText                 Next 

    VerifyText                *Agreement Currency 
    DropDown                  Agreement Currency    AUD - Australian Dollar  
    ClickCheckbox             Is the editor a US Government Employee?    on
    ClickCheckbox             Does the editor have a valid exemption certificate?    on
    ClickCheckbox             Do you wish to include Automatic Honorarium?    on
    ClickCheckbox             Do you wish to include Automatic Honorarium?    off
    ClickCheckbox             Do you wish to include Claimed Expenses?    on
    ClickCheckbox             Do you wish to include Claimed Expenses?    off
    ClickCheckbox             Is there a royalty payment?    on
    ClickText                 Next

    VerifyText                *What is the maximum total cumulative term that the Editor may serve? [Elsevier policy is for a maximum of ten years, but shorter terms are possible.]
    VerifyText                For Elsevier Inc.
    VerifyText                *Please pick a signatory for this contract
    DropDown                  Please pick a signatory for this contract    Georgina Joyce
    VerifyText                Include Aims & Scope in the text box below
    ClickText                 Next

    ClickText                Cancel and close
    Sleep                    20s