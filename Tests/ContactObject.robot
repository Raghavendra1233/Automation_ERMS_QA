# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. ##CONTACT CREATION##   
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    

    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 Editors
    Sleep                     2s
    VerifyText                New
    Sleep                     2s 
    ClickText                 New
    Sleep                     2s   
    ClickText                 Next
    Sleep                     2s
    ${ContactName}=           Generate Random String      5-10 
    Sleep                     2s   
    TypeText                  First Name               ${ContactName}
    Sleep                     2s
    ${ContactName1}=          Generate Random String      5-10  
    Sleep                     2s 
    TypeText                  Last Name               ${ContactName1}
    Sleep                     2s
    ComboBox                  Search Accounts...    New Account-5
    Sleep                     2s
    ClickText                 Save                    Partial_match=False
    Sleep                     2s
    
    
2. ##CONTACT PAGE LAYOUT FIELDS##
   VerifyText                Details
   Sleep                     2s
   ClickText                 Details
   Sleep                     2s
   VerifyText                Name
   Sleep                     2s
   VerifyText                Display Name
   Sleep                     2s
   VerifyText                Job Title
   Sleep                     2s
   VerifyText                Accreditation
   Sleep                     2s
   VerifyText                CJRs Without End Date
   Sleep                     2s
   VerifyText                Enforce Display Name
   Sleep                     2s
   VerifyText                Most Recent End Date
   Sleep                     2s
   VerifyText                Included in Mendeley Rollout
   Sleep                     2s
   VerifyText                Scopus ID
   Sleep                     2s
   VerifyText                Personhub Registration Status
   Sleep                     2s
   VerifyText                Active Relationships?
   Sleep                     2s
   VerifyText                Last Update Request Received
   Sleep                     2s
   VerifyText                Journal Label
   Sleep                     2s
   VerifyText                Ethics Indicator
   Sleep                     2s
   VerifyText                JCI ECN
   Sleep                     2s
   VerifyText                Ethics Indicator Date
   Sleep                     2s
   VerifyText                GE Validation Status
   Sleep                     2s
   
   VerifyText                ECN
   Sleep                     2s
   VerifyText                Contact Record Type
   Sleep                     2s
   VerifyText                Email
   Sleep                     2s
   VerifyText                Account Name
   Sleep                     2s
   VerifyText                Personal Web Site
   Sleep                     2s
   VerifyText                JCI Department
   Sleep                     2s
   VerifyText                Gender
   Sleep                     2s
   VerifyText                Home Based Contact
   Sleep                     2s
   VerifyText                Is Deceased
   Sleep                     2s
   VerifyText                Phone
   Sleep                     2s

   VerifyText                Personal Address
   Sleep                     2s
   VerifyText                Additional Address Info
   Sleep                     2s
   VerifyText                Fields of Interest 
   Sleep                     2s
   VerifyText                Remarks
   Sleep                     2s
   VerifyText                Biography
   Sleep                     2s
   VerifyText                KOL
   Sleep                     2s
   VerifyText                Value Perception
   Sleep                     2s
   VerifyText                KOL Role
   Sleep                     2s
   VerifyText                Open Access (OA) Sentiment
   Sleep                     2s
   VerifyText                KOL Weblink to BIO
   Sleep                     2s
   VerifyText                General Sentiment in Interactions
   Sleep                     2s
   VerifyText                Influencer Role
   Sleep                     2s
   VerifyText                Additional Info
   Sleep                     2s  


3. ##CONTACT DELETION##
   VerifyText                Delete
   Sleep                     2s  
   ClickText                 Delete 
   Sleep                     2s
   VerifyText                Are you sure to delete this contact?
   Sleep                     2s
   VerifyText                Delete    anchor=Are you sure to delete this contact?
   Sleep                     2s
   ClickText                 Delete     anchor=Cancel
   Sleep                     2s
   VerifyText                Okay
   Sleep                     2s
   ClickText                 Okay
   Sleep                     2s


    
    



