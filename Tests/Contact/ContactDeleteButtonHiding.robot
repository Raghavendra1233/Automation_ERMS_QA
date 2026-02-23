# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
1. Hide the "Delete" option on contact list view for all record & for all users
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
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