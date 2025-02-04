# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
ERMS support notification: Editor email update in RH matches other existing contact
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 
    
    

    ClickText                 Setup
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 API User
    ClickText                 Login
    

    ClickText                 Contacts
    ClickText                 New
    UseModal                  On
    ClickText                 Next
    TypeText                  First Name    contact
    TypeText                  Last Name    five
    ComboBox                  Search Accounts...    Account1
    TypeText                  Email    contactfive@gmail.com
    ClickText                 Save    partial_match=False
    UseModal                  Off
    ClickText                 Contacts
    ClickText                 New
    UseModal                  On
    ClickText                 Next
    TypeText                  First Name    contact
    TypeText                  Last Name    six
    ComboBox                  Search Accounts...    Account1
    TypeText                  Email    contactsix@gmail.com
    ClickText                 Save    partial_match=False
    UseModal                  Off
    ClickText                 Details
    ClickText                 Edit Email
    VerifyText                contactsix@gmail.com
    TypeText                  Email    contactfive@gmail.com
    ClickText                 Save
