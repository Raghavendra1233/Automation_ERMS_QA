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

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    
    VerifyText               Agreement Currency
    Sleep                    1s
    DropDown                 Agreement Currency    AUD - Australian Dollar
    Sleep                    1s
    ClickText                Next
    Sleep                    1s

    VerifyText               *Please pick a signatory for this contract  
    Sleep                    1s
    DropDown                 Please pick a signatory for this contract    Georgina Joyce
    Sleep                    1s
    ClickText                Next
    Sleep                    1s
    ClickText                Finish  
    ClickText                Cancel and close
    Sleep                    20s


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
