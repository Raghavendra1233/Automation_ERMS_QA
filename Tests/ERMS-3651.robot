*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Updated Editorial Board member Invitation letter
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 
    
    
    VerifyText                JrlTest
    ClickText                 JrlTest
    ClickText                 Related
    VerifyText                CJR - 1497610
    ClickText                 CJR - 1497610
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


