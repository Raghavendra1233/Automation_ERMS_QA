# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Display the Saved Email component to additional profiles/permission sets
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
    VerifyText                Login
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
    ClickText                 Select a List View: Journals
    ClickText                 All
    Sleep                     1s
    VerifyText                BT
    Sleep                     1s
    ClickText                 BT
    Sleep                     1s
    VerifyText                Track Email
    Sleep                     1s
    ClickText                 Track Email
    VerifyText                This table will display email statistics once emails have been sent. You will see data on the number of emails prepared, how many emails were actually sent and when, as well as the number of emails which resulted in an error.
    Sleep                     3s

    