# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Journals: Operating Company Value Mapping
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals


    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    JT-1\n
    Sleep                     1s
    ClickText                 JT-1
    Sleep                     2s
    ClickText                 JT-1
    Sleep                     1s
    ClickText                 Edit Operating Company
    Sleep                     2s
    PickList                  Operating Company    Elsevier BV
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Operating Company
    Sleep                     2s
    PickList                  Operating Company    Elsevier Ltd
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s


*** Test Cases ***
Remove EPH legal Owner field from journal Page Layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    ClickText                 Select a List View: Journals
    Sleep                     1s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JT-5\n
    Sleep                     2s
    ClickText                 JT-5
    Sleep                     2s
    ScrollTo                  EPH Legal Ownership
    Sleep                     2s
    VerifyText                EPH Ownership Description
    Sleep                     2s
    VerifyText                EPH Legal Ownership Roll-Up
    Sleep                     2s


*** Test Cases ***
'View Related Contacts' link visibility on the journal record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickFieldValue           View Related Contacts
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    SwitchWindow              2
    Sleep                     2s
    VerifyText                View Related Contacts 


*** Test Cases ***
Add new Journal Mailbox field to the Journal record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals

    
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JT-1\n
    Sleep                     2s
    ClickText                 JT-1
    Sleep                     2s
    ScrollTo                  Journal Mailbox 
    Sleep                     2s
            
    ClickText                 Edit Journal Mailbox
    Sleep                     2s
    TypeText                  Journal Mailbox    r.settypalli@elsevier.com
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    ClickText                 Edit Journal Mailbox
    Sleep                     2s
    TypeText                  Journal Mailbox    satya@elsevier.com
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s

    LaunchApp                 Journals
    VerifyText                JrlTest
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ScrollTo                  Journal Mailbox 
    Sleep                     2s


*** Test Cases ***
Contract Agreements List view on Journal record page
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 


    ClickText                 JrlTest
    Sleep                     1s
    ClickText                 Related
    Sleep                     1s
    VerifyText                Contract Agreements
    Sleep                     1s
    VerifyText                Contract Agreement Name
    Sleep                     1s
    VerifyText                Effective Date
    Sleep                     1s
    VerifyText                Expiration Date
    Sleep                     1s


*** Test Cases ***
Only Admin and API user should be able to update Publisher/Publishing Director/Journal Manager/Marketing Communication Manager on a journal record
    [tags]                    Sources
    Appstate                  Home

    LaunchApp                 Journals
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    VerifyText                Publisher
    Sleep                     1s
    VerifyText                Publishing Director
    Sleep                     1s
    VerifyText                Journal Manager
    Sleep                     1s
    VerifyText                Marketing Manager
    Sleep                     1s
    
    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    LaunchApp                 Journals
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    VerifyText                Publisher
    Sleep                     1s
    VerifyText                Publishing Director
    Sleep                     1s
    VerifyText                Journal Manager
    Sleep                     1s
    VerifyText                Marketing Manager
    Sleep                     1s


*** Test Cases ***
Web preview home page journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 

    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s  
    
    VerifyText                Enable homepage
    Sleep                     2s
    VerifyText                Web Preview
    Sleep                     2s
    ClickText                 Web Preview
    Sleep                     2s
    Sleep                     5s
    VerifyText                Radionuclides, essential and potentially toxic elements metals, speciation, mercury, environment and health, QA Test, UAT Test, Final Prod Test, QA PASS
    Sleep                     2s


*** Test Cases ***
Line breaks in biography field in Journal
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 

    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    
    VerifyText                Enable homepage
    Sleep                     2s
    VerifyText                Web Preview
    Sleep                     2s
    ClickText                 Web Preview
    Sleep                     2s
    Sleep                     5s
    VerifyText                Line 1
    Sleep                     2s
    VerifyText                Line 2
    Sleep                     2s
    VerifyText                Line 3
    Sleep                     2s
    VerifyText                Line 4
    Sleep                     2s
    VerifyText                Line 5
    Sleep                     2s


*** Test Cases ***
Gender data pie chart is visibility on the Editor Insights tab
    [tags]                    Sources
    Appstate                  Home

    LaunchApp                 Journals
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    
    VerifyText                Editor Insights
    Sleep                     1s
    ClickText                 Editor Insights
    Sleep                     1s

    VerifyText                Editor Breakdown
    Sleep                     1s
    VerifyText                Editors By Country
    Sleep                     1s
    VerifyText                Level 1/2 Editors By Gender
    Sleep                     1s
    ScrollTo                  Level 3 Editors By Gender
    Sleep                     1s
    VerifyText                Editors By Gender
    Sleep                     1s
   
    VerifyText                Data Quality
    ClickText                 Data Quality
    Sleep                     1s
    VerifyText                Bounced Email Addresses by Contact
    Sleep                     1s
    VerifyText                Contact Journal Relationships Without Homepage Entries
    Sleep                     1s
    ScrollTo                  Homepage Entries Without Contact Journal Relationship
    Sleep                     1s
  
    VerifyText                Contracts    anchor=Data Quality
    ClickText                 Contracts    anchor=Data Quality
    Sleep                     1s
    VerifyText                Contracts With Journal
    Sleep                     1s
    VerifyText                Contracts Without Relations
    Sleep                     1s
    ScrollTo                  Contracts With Relations
    Sleep                     1s
    VerifyText                L1+2 Relationships and Contracts
    Sleep                     1s


*** Test Cases ***
Display Active Editorial Board on Related tab of a Journal Record
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals
   
    VerifyText                JrlTest
    ClickText                 JrlTest
    ClickText                 Related
    VerifyText                Active Editorial Board
    ClickText                 Active Editorial Board
    
    Sleep                     2s
    VerifyText                Filtered by Contact Journal Relation: Relation is Active?, Contact Journal Relation: Record Type
    Sleep                     3s
    VerifyText                Contact Journal Relation: Contact Journal Relation Name
    Sleep                     3s
    VerifyText                Contact Journal Relation: Contact Name
    Sleep                     3s
    VerifyText                Contact Journal Relation: Role
    Sleep                     3s
    VerifyText                Contact Journal Relation: Classifications
    Sleep                     3s
    VerifyText                Contact Journal Relation: Start Date
    Sleep                     3s







