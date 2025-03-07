*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Display contract data (if it exists) in the GDPR app for a SAR request
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contacts
    
    

    
    Sleep                     1s
    ClickText                 Raghu Settypalli
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    VerifyText                Raghu Settypalli
    VerifyText                r.settypalli@elsevier.com
    Sleep                     2s
    ScrollTo                  Phone
    Sleep                     1s

    
    LaunchApp                 GDPR App
    Sleep                     1s
    TypeText                  Name:    Raghu Settypalli
    Sleep                     1s
    TypeText                  example@xyz.com    r.settypalli@elsevier.com
    Sleep                     1s
    TypeText                  Phone number:    12345
    Sleep                     1s
    ClickText                 Search    anchor=Next
    Sleep                     2s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Next
    Sleep                     1s
    ClickText                 Contract
    Sleep                     1s
    VerifyText                Contract Number
    Sleep                     1s
    VerifyText                Contract Start Date
    Sleep                     1s
    VerifyText                Contract End Date
    Sleep                     1s
    VerifyText                Status
    Sleep                     1s
    VerifyText                Contract Term
    Sleep                     1s
    

    ClickText                 Next
    Sleep                     2s
    ClickText                 Export All
    Sleep                     2s
    LaunchApp                 ERMS
    Sleep                     2s
