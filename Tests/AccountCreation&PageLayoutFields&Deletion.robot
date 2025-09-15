# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
# 1. **ACCOUNT CREATION**   
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Accounts
    

    ClickText                 Select a List View: Accounts
    Sleep                     2s
    ClickText                 All Accounts
    Sleep                     2s
    VerifyText                New
    Sleep                     2s 
    ClickText                 New
    Sleep                     2s   
    ClickText                 Next

    TypeText                  Enter Keyword To Search For An Organisation...    test
    ClickText                 Search    partial_match=False
    ClickText                 Create New Account
    UseModal                  On
    
    Sleep                     2s
    ${AccountName1}=          Generate Random String      5-10 
    Sleep                     2s   
    TypeText                  *Account Name               ${AccountName}
    Sleep                     2s

    PickList                  Organisation Country    Afghanistan
    Sleep                     2s
    ${AccountStreet}=         Generate Random String      5-10  
    Sleep                     2s 
    TypeText                  Organisation Street               ${AccountStreet}
    Sleep                     2s
    
    ${AccountCity}=           Generate Random String      5-10  
    Sleep                     2s 
    TypeText                  Organisation City               ${AccountCity}
    Sleep                     2s

    ${AccountCode}=           Generate Random String      5-10  
    Sleep                     2s 
    TypeText                  Organisation Zip/Postal Code               ${AccountCode}
    Sleep                     2s
    
    VerifyText                Save                        anchor=Save & New 
    Sleep                     2s                     
    ClickText                 Save                        anchor=Save & New
    Sleep                     2s  