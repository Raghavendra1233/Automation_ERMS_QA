# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
EMAIL OBJECT 
1. Email campaign template to engage Editorial Board members
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Campaigns

    Sleep                     5s
    ClickText                 Select a List View: Campaigns
    Sleep                     1s
    ClickText                 All
    ClickText                 EAB Engagement January 2025
    Sleep                     1s
    VerifyText                EAB Engagement January 2025
    Sleep                     1s
    VerifyText                Raghu
    VerifyText                Settypalli
    Sleep                     1s
    
    ClickText                 Details
    Sleep                     1s
    ClickText                 Email    anchor=Details
    Sleep                     1s
    VerifyText                Show All
    ClickText                 Show All
    Sleep                     1s
    ClickCheckbox             Select Item 3    on    partial_match=False
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 EAB Engagement Letter January 2025    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     3s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Send    partial_match=False
    Sleep                     2s



*** Test Cases ***
2. New template to support roll out of the Check Integrity tool
    [tags]                    Sources
    Appstate                  Home
    
    ClickText                 Setup
    Sleep                     3s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    linda brooks
    ClickText                 Linda Brooks
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s
    
    LaunchApp                 Journals
    Sleep                     2s
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickText                 Email    anchor=Homepage Management
    Sleep                     2s
    ClickText                 Show All
    Sleep                     2s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 \Check Integrity tool    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Send
    Sleep                     3s

    ClickText                 Log out as Linda Brooks


*** Test Cases ***
3. Display the Saved Email component to additional profiles/permission sets
    [tags]                    Sources
    Appstate                  Home
     
    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Test CAS
    ClickText                 Test CAS
    Sleep                     2s
    ClickText                 Test CAS
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Journals
    Sleep                     1s
    
    ClickText                 Select a List View: Journals
    ClickText                 All
    Sleep                     1s
    VerifyText                JrlTest
    Sleep                     1s
    ClickText                 JrlTest
    Sleep                     1s
    VerifyText                Track Email
    Sleep                     1s
    ClickText                 Track Email
    VerifyText                Emails are sent at different intervals, so it may take some time for the sent emails to appear.
    Sleep                     2s
    VerifyText                Saved Email
    Sleep                     1s
    VerifyText                Number of Emails
    Sleep                     1s
    VerifyText                Sent
    Sleep                     1s
    VerifyText                Send Date
    Sleep                     1s
    VerifyText                Error(s)
    Sleep                     2s

    LaunchApp                 Journals
    Sleep                     2s
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     3s
    TypeText                  Search this list...    TJ-3\n
    Sleep                     2s
    VerifyText                TJ-3
    Sleep                     1s
    ClickText                 TJ-3
    Sleep                     1s
    VerifyText                Track Email
    Sleep                     1s
    ClickText                 Track Email
    VerifyText                This table will display email statistics once emails have been sent. You will see data on the number of emails prepared, how many emails were actually sent and when, as well as the number of emails which resulted in an error.
    Sleep                     3s

    ClickText                 Log out as Test CAS


*** Test Cases ***
4. Populate PAC name in signature of RFI email
    [tags]                    Sources
    Appstate                  Home
    
    ClickText                 Setup
    Sleep                     3s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    linda brooks
    ClickText                 Linda Brooks
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s
    
    LaunchApp                 Journals
    Sleep                     2s
    ClickText                 Select a List View: Journals
    Sleep                     10s
    ClickText                 All
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickText                 Email    anchor=Homepage Management
    Sleep                     2s
    ClickText                 Show All
    Sleep                     2s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 \# PEBL - RFI to level 1, 2 and 3 editors - to be sent by the PAC    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Send
    Sleep                     3s
    
    ClickText                 Log out as Linda Brooks

*** Test Cases ***
5. Populate PAC name in signature of RFI reminder email
    [tags]                    Sources
    Appstate                  Home
    
    ClickText                 Setup
    Sleep                     3s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    Sleep                     2s
    TypeText                  Search Setup    linda brooks
    ClickText                 Linda Brooks
    Sleep                     2s
    ClickText                 Login
    Sleep                     2s
    
    LaunchApp                 Journals
    Sleep                     2s
    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickText                 Email    anchor=Homepage Management
    Sleep                     2s
    ClickText                 Show All
    Sleep                     10s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 \# PEBL- Final Reminder to level 1, 2 and 3 editors sent by PAC    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     2s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Send
    Sleep                     3s

    ClickText                 Log out as Linda Brooks

*** Test Cases ***
6. Template version 1 for Ethics related campaign - B1
    [tags]                    Sources
    Appstate                  Home
    

    LaunchApp                 Campaigns
    Sleep                     1s
    ClickText                 Select a List View: Campaigns
    Sleep                     1s
    ClickText                 All
    ClickText                 EAB Engagement January 2025
    Sleep                     1s
    VerifyText                EAB Engagement January 2025
    Sleep                     1s
    VerifyText                Raghu
    VerifyText                Settypalli
    Sleep                     1s
    

    ClickText                 Details
    Sleep                     1s
    ClickText                 Email    anchor=Details
    Sleep                     1s
    VerifyText                Show All
    ClickText                 Show All
    Sleep                     1s
    ClickCheckbox             Select Item 3    on    partial_match=False
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 Ethics related campaign - B1 “optional” version    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     3s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Send    partial_match=False
    Sleep                     2s

*** Test Cases ***
7. Template version 2 for Ethics related campaign - B2
    [tags]                    Sources
    Appstate                  Home
    

    LaunchApp                 Campaigns
    Sleep                     1s
    ClickText                 Select a List View: Campaigns
    Sleep                     1s
    ClickText                 All
    ClickText                 EAB Engagement January 2025
    Sleep                     1s
    VerifyText                EAB Engagement January 2025
    Sleep                     1s
    VerifyText                Raghu
    VerifyText                Settypalli
    Sleep                     1s
    
    ClickText                 Details
    Sleep                     1s
    ClickText                 Email    anchor=Details
    Sleep                     1s
    VerifyText                Show All
    ClickText                 Show All
    Sleep                     1s
    ClickCheckbox             Select Item 3    on    partial_match=False
    ClickText                 Next
    Sleep                     2s
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     2s
    ClickText                 Ethics related campaign - B2 “mandatory” version    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     3s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     3s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Send    partial_match=False

*** Test Cases ***
8. Updated Editorial Board member Invitation letter
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 
    
    VerifyText                JrlTest
    ClickText                 JrlTest
    ClickText                 Related
    VerifyText                CJR - 1497639
    ClickText                 CJR - 1497639
    Sleep                     2s
    ClickText                 Email
    Sleep                     2s
    
    ClickText                 Insert, create, or update template
    Sleep                     3s
    ClickText                 Insert a template...
    UseModal                  On
    TypeText                  Search templates...    EAB
    ClickText                 EBM (EAB) Invitation letter
    UseModal                  Off
    ClickText                 Send
    Sleep                     3s
    VerifyText                Invitation to join the board of Test Journal


*** Test Cases ***
9. New template to promote upcoming innovations to the publishing journey
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
    ClickText                 Email    anchor=Homepage Management
    Sleep                     2s
    VerifyText                Show All
    Sleep                     2s
    ClickText                 Show All
    Sleep                     2s
    VerifyText                Raghu Settypalli
    Sleep                     2s

    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     4s
    
    ClickText                 Select Template    anchor=Email Templates
    Sleep                     4s
    ClickText                 Upcoming innovations to the publishing journey    anchor=Skip to Navigation
    Sleep                     4s
    ClickText                 Select From Address    anchor=*From Address
    Sleep                     4s
    ClickText                 Elsevier - No Reply    anchor=Skip to Navigation
    Sleep                     4s
    VerifyText                Next
    Sleep                     4s
    ClickText                 Next
    Sleep                     4s
    ClickText                 Send
    Sleep                     4s
    
    
*** Test Cases ***   
10. Add Email tab to Events
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Elsevier Events
    

    ClickText                 Select a List View: Elsevier Events
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    Test Elsevier Event-1\n
    Sleep                     2s
    ClickText                 Test Elsevier Event-1
    Sleep                     2s
    VerifyText                Email                  anchor=Details
    Sleep                     2s
    ClickText                 Email                  anchor=Details
    Sleep                     2s
    VerifyText                Journal_Roles__c
    Sleep                     2s
    VerifyText                Classifications__c
    Sleep                     2s
    VerifyText                Invitee_Response__c
    Sleep                     2s
    VerifyText                Contact Name
    Sleep                     2s
    VerifyText                Contact Email
    Sleep                     2s
    VerifyText                Journal Roles
    Sleep                     2s
    VerifyText                Classifications        anchor=Journal Roles
    Sleep                     2s
    VerifyText                Invitee Response
    Sleep                     2s




