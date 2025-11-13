# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

2. CJR Creation and GEA Interview Flow 
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
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


    VerifyText                Guest Editor Contract
    Sleep                     2s
    VerifyText                Begin              anchor=Guest Editor Contract
    Sleep                     2s
    ClickText                 Begin              anchor=Guest Editor Contract
    Sleep                     10s
    
    VerifyText                In this section please confirm the editor, journal, and high-level agreement details.
    Sleep                     2s
    VerifyText                If the information in this section is incorrect, or incomplete, please return to the onboarding process
    Sleep                     2s
    VerifyText                *What type of Guest Editor agreement is this?
    Sleep                     2s
    DropDown                  What type of Guest Editor agreement is this?    Supplement
    Sleep                     2s
    VerifyText                *Please select the name of the Journal Editor who is overseeing the issue?
    Sleep                     2s
    DropDown                  Please select the name of the Journal Editor who is overseeing the issue?    Clive Dennis
    Sleep                     2s
    VerifyText                Journal Name:
    Sleep                     2s
    VerifyText                Acronym:
    Sleep                     2s
    VerifyText                Journal Manager Name:
    Sleep                     2s
    VerifyText                Journal Manager Email:
    Sleep                     2s
    VerifyText                Contact Name:
    Sleep                     2s
    VerifyText                Role:
    Sleep                     2s
    VerifyText                Accreditation:
    Sleep                     2s
    VerifyText                Affiliation:  
    Sleep                     2s
    VerifyText                Next 
    Sleep                     2s
    ClickText                 Next
    Sleep                     10s

    VerifyText                *What is the title of the Article Collection/Special Issue/Supplement?
    Sleep                     2s                              
    TypeText                  What is the title of the Article Collection/Special Issue/Supplement?    5
    Sleep                     2s
    VerifyText                *How many reviews are required to make a decision on a manuscript?
    Sleep                     2s
    TypeText                  *How many reviews are required to make a decision on a manuscript?    5
    Sleep                     2s  
    VerifyText                *How many articles is the issue expected to include?
    Sleep                     2s
    TypeText                  *How many articles is the issue expected to include?    5
    Sleep                     2s
    VerifyText                *What is the Journal website address (Eg: www.[urladdress].com)?
    Sleep                     2s
    VerifyText                Next
    Sleep                     2s
    ClickText                 Next
    Sleep                     10s
    
    VerifyText                *Please pick a signatory for this contract
    Sleep                     2s
    DropDown                  Please pick a signatory for this contract    Georgina Joyce
    Sleep                     2s
    ClickText                 Finish
    Sleep                     20s
