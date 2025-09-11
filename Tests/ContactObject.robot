# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
# 1. **CONTACT CREATION**   
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

 
    
# 2. **CONTACT PAGE LAYOUT FIELDS**
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



# 3. **CONTACT DELETION**
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



# 4. **Make the webuser id field visible on the Editor Contact record page layout only for SysAdmin User with Edit access(Not for Publisher user)**
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    

    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    VerifyText                Test Editor Contact
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ScrollTo                  Web User Id
    Sleep                     2s

    Sleep                     3s
    ClickText                 Edit Web User Id
    Sleep                     3s
    ${WebUserId}=             Generate Random String      5-10  
    Sleep                     4s  
    TypeText                  Web User Id               ${Web User Id}
    Sleep                     4s
    ClickText                 Save
    Sleep                     2s
    
    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    VerifyText                Test Editor Contact
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ScrollTo                  Created By
    Sleep                     2s
    VerifyText                Last Modified By
    Sleep                     2s
    VerifyText                External Reference
    Sleep                     2s
    VerifyText                Salesforce Update Date
    Sleep                     2s
    VerifyText                Key
    Sleep                     2s
    VerifyText                Update Homepage Entries
    Sleep                     2s


# 5. **Hide the "Delete" option on contact list view for all record & for all users**
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts

    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Test Author Contact\n
    Sleep                     2s
    ClickText                 Test Author Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s  
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Test Network Contact\n
    Sleep                     2s
    ClickText                 Test Network Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
      
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Sponsor Test Contact\n
    Sleep                     2s
    ClickText                 Sponsor Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
     
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Suplier Test Contact\n
    Sleep                     2s
    ClickText                 Suplier Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
     

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Test Editor Contact\n
    Sleep                     2s
    ClickText                 Test Editor Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Log a Call
    Sleep                     1s
    VerifyText                New Task
    Sleep                     1s
    VerifyText                New Note
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Test Author Contact\n
    Sleep                     2s
    ClickText                 Test Author Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Log a Call
    Sleep                     1s
    VerifyText                New Task
    Sleep                     1s
    VerifyText                New Note
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Test Network Contact\n
    Sleep                     2s
    ClickText                 Test Network Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Log a Call
    Sleep                     1s
    VerifyText                New Task
    Sleep                     1s
    VerifyText                New Note
    Sleep                     1s 

    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Sponsor Test Contact\n
    Sleep                     2s
    ClickText                 Sponsor Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Log a Call
    Sleep                     1s
    VerifyText                New Task
    Sleep                     1s
    VerifyText                New Note
    Sleep                     1s  

    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    TypeText                  Search this list...    Suplier Test Contact\n
    Sleep                     2s
    ClickText                 Suplier Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Log a Call
    Sleep                     1s
    VerifyText                New Task
    Sleep                     1s    
    

# 6. **Block an Admin user from deleting an editor contact with active relationships**
     [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    

    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    New Editor TEST-1\n
    Sleep                     2s
    VerifyText                New Editor TEST-1
    Sleep                     2s
    ClickText                 New Editor TEST-1
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    VerifyText                Your attempt to delete New Editor TEST-1 could not be completed because it is associated with the following records:
    Sleep                     2s
    VerifyText                Contact Special Issue Relationship Records: CSR-96239
    Sleep                     2s
    ClickText                 Finish
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s

    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    New Editor TEST-2\n
    Sleep                     2s
    VerifyText                New Editor TEST-2
    Sleep                     2s
    ClickText                 New Editor TEST-2
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    VerifyText                Your attempt to delete New Editor TEST-2 could not be completed because it is associated with the following records:
    Sleep                     10s
    VerifyText                Author Relationship Records: AR-00011541
    Sleep                     10s
    ClickText                 Finish
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s

    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    New Editor TEST-3\n
    Sleep                     2s
    VerifyText                New Editor TEST-3
    Sleep                     2s
    ClickText                 New Editor TEST-3
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    VerifyText                Your attempt to delete New Editor TEST-3 could not be completed because it is associated with the following records:
    Sleep                     2s
    VerifyText                Journal Group Member Records: JGM - 0269685
    Sleep                     2s
    ClickText                 Finish
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s


    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    New Editor TEST-5\n
    Sleep                     2s
    VerifyText                New Editor TEST-5
    Sleep                     2s
    ClickText                 New Editor TEST-5
    Sleep                     2s
    ClickText                 Details
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    VerifyText                Your attempt to delete New Editor TEST-5 could not be completed because it is associated with the following records:
    Sleep                     2s
    VerifyText                Portal User Records: New Editor TEST-5
    Sleep                     2s
    ClickText                 Finish
    Sleep                     2s
    UseModal                  Off
    Sleep                     2s


    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Susanne Steiginga
    ClickText                 Susanne Steiginga
    Sleep                     2s
    VerifyText                Login
    ClickText                 Login
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 All Contacts
    Sleep                     2s
    TypeText                  Search this list...    New Editor TEST-1\n
    Sleep                     2s
    VerifyText                New Editor TEST-1
    Sleep                     2s
    ClickText                 New Editor TEST-1
    Sleep                     2s
    VerifyText                Contact Record Type
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    VerifyText                Log a Call
    Sleep                     2s
    VerifyText                New Task
    Sleep                     2s
    VerifyText                New Note
    Sleep                     2s


# 7. **Replace Staff Member" button should only appear on Staff Contact records**
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
    
    LaunchApp                 Contacts
    Sleep                     2s
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 Staff
    Sleep                     2s
    ClickText                 Details
    VerifyText                Contact Record Type
    Sleep                     2s
    VerifyText                Replace Staff Member On Journals
    LaunchApp                 Contacts
    Sleep                     2s
    ClickText                 Select a List View: Contacts
    Sleep                     2s
    ClickText                 Editors
    Sleep                     2s
    ClickText                 Abhi Kanan
    Sleep                     2s
    VerifyText                Follow
    VerifyText                Edit
    VerifyText                Log a Call
    VerifyText                New Task
    Sleep                     2s

