# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Hide the "Delete" option from a contact record for all users
    [tags]                    Sources
    Appstate                  Home
 
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    ClickText                 Test Editor Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
    VerifyText                Replace Staff Member On Journals
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    ClickText                 Test Author Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
    VerifyText                Replace Staff Member On Journals
    Sleep                     1s
    
    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    ClickText                 Test Network Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
    VerifyText                Replace Staff Member On Journals
    Sleep                     1s  

    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    ClickText                 Sponsor Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Contact Record Type
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
    VerifyText                Replace Staff Member On Journals
    Sleep                     1s  

    LaunchApp                 Contacts
    ClickText                 Select a List View: Contacts
    Sleep                     1s
    ClickText                 All Contacts
    Sleep                     1s
    ClickText                 Suplier Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Enable Customer User
    Sleep                     1s
    VerifyText                Replace Staff Member On Journals
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
    ClickText                 Test Author Contact
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
    ClickText                 Test Network Contact
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
    ClickText                 Sponsor Test Contact
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
    ClickText                 Suplier Test Contact
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Log a Call
    Sleep                     1s
    VerifyText                New Task
    Sleep                     1s
    VerifyText                New Note
    Sleep                     1s 
