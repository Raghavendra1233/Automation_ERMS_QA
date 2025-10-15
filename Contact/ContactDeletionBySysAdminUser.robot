# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
1. Block an Admin user from deleting an editor contact with active relationships
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
    VerifyText                Journal Group Member Records: JGM - 0269821
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
    
    ClickText                 Log out as Susanne Steiginga