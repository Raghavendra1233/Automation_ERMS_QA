# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

LET Generate Document Workflow
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
    Sleep                     3s
    VerifyText                If information in this section is incorrect, or incomplete, please return to the onboarding process
    Sleep                     3s
    VerifyText                Contact Name: Georgina Joyce
    Sleep                     3s
    VerifyText                Role: Accepting Editor 
    Sleep                     3s              
    VerifyText                Affiliation: Elsevier
    Sleep                     3s
    VerifyText                Address: ,
    Sleep                     3s
    VerifyText                Editor in UK: false
    Sleep                     3s
    VerifyText                Is the editor employed by an Institution that is requesting to be a party to this editor's contract?
    Sleep                     3s
    
    VerifyText                Journal Name: Test Journal 
    Sleep                     3s                  
    VerifyText                Acronym: JrlTest
    Sleep                     3s               
    VerifyText                Journal EPH Ownership:
    Sleep                     3s
    VerifyText                Journal EPH Ownership Description:
    Sleep                     3s 
    VerifyText                Journal Operating Company:
    Sleep                     3s 

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
    Sleep                     3s                 
    VerifyText                Text included in the blank box below is OPTIONAL and can be used for either of two reasons:
    Sleep                     3s
    VerifyText                If the Editor under this agreement shares his/her role with other co-editors, as for example when there are 2 co-Editors-in-Chief for this Journal, then you can list the responsibilities of each co-Editor-in-Chief in order to clearly distinguish/separate their responsibilities; or
    Sleep                     3s
    VerifyText                When there are Other Editors that support this journal and you wish to list them all, for example, you may list them to describe their specialty and/or individual areas of responsibility. All editors listed in this Annex will have their own separate agreements with Elsevier and we list them on this Annex only for reference. Text included in this blank box will appear as “Editor’s/Other Editors’ Responsibilities” as Annex either 1.5/1.6/1.7 depending on the type of editor agreement you generate.
    Sleep                     3s
    ClickText                 Next
    Sleep                     3s
    
    VerifyText                This section is for who has the editorial responsibility
    Sleep                     3s  
    VerifyText                *Who has ultimate editorial responsibility?
    Sleep                     3s               
    VerifyText                Editor has ultimate editorial responsibility
    Sleep                     3s 
    VerifyText                Ultimate editorial responsibility lies with the Editor in Chief and not with the Editor
    Sleep                     3s
    ClickText                 Next
    Sleep                     3s   

    VerifyText                *Is the production schedule determined by the Publisher, in consultation with Editor
    Sleep                     3s 
    DropDown                  Is the production schedule determined by the Publisher, in consultation with Editor?    Yes, in consultation with Editor
    Sleep                     3s
    DropDown                  Is the production schedule determined by the Publisher, in consultation with Editor?    No, Publisher only
    Sleep                     3s
    VerifyText                *What are the editor’s obligations relating to the timing of peer review?
    Sleep                     3s
    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The total time of refereeing and handling by the Editor and the Editorial Board should not exceed a period of XX weeks
    Sleep                     3s
    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The Editor Shall comply with the detailed timetable for handling and refereeing Articles set out in Annex
    Sleep                     3s
    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The Editor shall use his/her best efforts to handle and referee Articles in an expeditious manner
    Sleep                     3s
    ClickText                 Next
    Sleep                     3s 

    VerifyText                *Agreement Currency
    Sleep                     3s 
    DropDown                  Agreement Currency    AUD - Australian Dollar
    Sleep                     3s  
    ClickCheckbox             Is the editor a US Government Employee?    on
    Sleep                     3s
    ClickCheckbox             Does the editor have a valid exemption certificate?    on
    Sleep                     3s
    ClickCheckbox             Do you wish to include Automatic Honorarium?    on
    Sleep                     3s
    ClickCheckbox             Do you wish to include Automatic Honorarium?    off
    Sleep                     3s
    ClickCheckbox             Do you wish to include Claimed Expenses?    on
    Sleep                     3s
    ClickCheckbox             Do you wish to include Claimed Expenses?    off
    Sleep                     3s
    ClickCheckbox             Is there a royalty payment?    on
    Sleep                     3s
    ClickText                 Next
    Sleep                     3s

    VerifyText                *What is the maximum total cumulative term that the Editor may serve? [Elsevier policy is for a maximum of ten years, but shorter terms are possible.]
    Sleep                     3s
    VerifyText                For Elsevier Inc.
    Sleep                     3s
    VerifyText                *Please pick a signatory for this contract
    Sleep                     3s
    DropDown                  Please pick a signatory for this contract    Georgina Joyce
    Sleep                     3s
    VerifyText                Include Aims & Scope in the text box below
    Sleep                     3s
    ClickText                 Next
    Sleep                     3s

    ClickText                 Cancel and close
    Sleep                     20s


    ClickText                Related
    Sleep                    3s
    ClickText                06
    Sleep                    3s
    VerifyText               CON-
    Sleep                    3s
    ClickText                CON-
    
    VerifyText               Contract Agreement Name
    Sleep                    2s
    VerifyText               Owner
    Sleep                    2s
    VerifyText               Customer Account
    Sleep                    2s
    VerifyText               Contact
    Sleep                    2s
    VerifyText               Status 
    Sleep                    2s             
    VerifyText               Agreement Type  
    Sleep                    2s           
    VerifyText               Type  
    Sleep                    2s            
    VerifyText               Contract  
    Sleep                    2s          
    VerifyText               Previous Contract Agreement
    Sleep                    2s
    VerifyText               Exception
    Sleep                    2s
    VerifyText               First Contracted Date
    Sleep                    2s
    VerifyText               Amended  
    Sleep                    2s             
    VerifyText               Total Contract Value 
    Sleep                    2s              
    VerifyText               Total Contract Value (USD) 
    Sleep                    2s             
    VerifyText               Approval Status  
    Sleep                    2s           
    VerifyText               Signatory  
    Sleep                    2s            
    VerifyText               Currency   
    Sleep                    2s         
    VerifyText               Society  
    Sleep                    2s                       
    VerifyText               External Id  
    Sleep                    2s           
    VerifyText               Clause Generation Status
    Sleep                    2s    

    ScrollTo                 Include Request Changes To Aims & Scope 
    Sleep                    2s     
    VerifyText               Include who can appoint editorial board 
    Sleep                    2s 
    VerifyText               Who Appoints The Board 
    Sleep                    2s            
    VerifyText               Include Editor Responsibilities 
    Sleep                    2s             
    VerifyText               Include Other Editor Responsibilities
    Sleep                    2s 
    VerifyText               Who Appoints Board Alternative
    Sleep                    2s 
    VerifyText               Institution Requesting to be Party
    Sleep                    2s 
    VerifyText               Authorised Signatory
    Sleep                    2s 

    VerifyText               Who has ultimate editorial responsibilit
    Sleep                    2s

    VerifyText               Editorial Office
    Sleep                    2s
    VerifyText               Editorial Office Address 
    Sleep                    2s
    VerifyText               Describe Timetable 
    Sleep                    2s              
    VerifyText               Is Submission Fee Contract? 
    Sleep                    2s
    VerifyText               Production Schedule Editor Consulted
    Sleep                    2s 
    VerifyText               Editor's Obligations
    Sleep                    2s
    VerifyText               Refereeing Weeks
    Sleep                    2s

    ScrollTo                 Fixed fee for Editorial Office
    Sleep                    2s 
    VerifyText               Royalty payment
    Sleep                    2s
    VerifyText               Is the editor a US Government Employee?
    Sleep                    2s
    VerifyText               Valid exemption certificate
    Sleep                    2s
    VerifyText               SD and Scopus access
    Sleep                    2s

    VerifyText               Automatic Honorarium
    Sleep                    2s
    VerifyText               In what installments will you pay the ho
    Sleep                    2s
    VerifyText               Honorarium pro rata
    Sleep                    2s
    VerifyText               Honorarium Months
    Sleep                    2s
    VerifyText               Honorarium Installments
    Sleep                    2s
    VerifyText               Honorarium Months Repeat
    Sleep                    2s
    VerifyText               Honorarium Value
    Sleep                    2s
    VerifyText               Honorarium Annual Increase
    Sleep                    2s
    VerifyText               Honorarium increase each year
    Sleep                    2s
    VerifyText               Honorarium Increase Value
    Sleep                    2s
    VerifyText               Automatic Honorarium Repeat
    Sleep                    2s
    VerifyText               Claimed Expenses
    Sleep                    2s

    ScrollTo                 Maxiumum Terms
    Sleep                    2s 
    VerifyText               If Editor Leaves
    Sleep                    2s
    VerifyText               Aims and Scope
    Sleep                    2s
    VerifyText               Months Termination
    Sleep                    2s              
    VerifyText               Editor Notice 
    Sleep                    2s

    VerifyText               Effective Date
    Sleep                    2s  
    VerifyText               Expiration Date
    Sleep                    2s 
    VerifyText               Term Type 
    Sleep                    2s
    VerifyText               First Contracted Date 
    Sleep                    2s
    VerifyText               Renewal Interval (months)  
    Sleep                    2s
    VerifyText               Notice Period (days) 
    Sleep                    2s 
    VerifyText               Notice Date 
    Sleep                    2s 
    VerifyText               Date of current agreement 
    Sleep                    2s

    VerifyText               Created By
    Sleep                    2s
    VerifyText               Last Modified By
    Sleep                    2s           