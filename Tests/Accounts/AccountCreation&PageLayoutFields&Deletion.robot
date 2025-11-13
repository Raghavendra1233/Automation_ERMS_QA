# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. ACCOUNT CREATION  
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
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
    Sleep                     5s
    ClickText                 Search    partial_match=False
    Sleep                     5s
    ClickText                 Create New Account
    Sleep                     5s
    UseModal                  On
    Sleep                     5s
    
    ${AccountName}=          Generate Random String      5-10 
    Sleep                     2s   
    TypeText                  Account Name               ${AccountName}
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
    ClickText                 Save    partial_match=False
    Sleep                     2s

*** Test Cases ***
2. ACCOUNT PAGE LAYOUT FIELDS
    VerifyText                Details
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    VerifyText                Account Name
    Sleep                     2s
    VerifyText                Account Record Type
    Sleep                     2s
    VerifyText                Name (Acronym)
    Sleep                     2s
    VerifyText                Is Consortium
    Sleep                     2s
    VerifyText                Name (Local Language)
    Sleep                     2s
    VerifyText                Phone
    Sleep                     2s
    VerifyText                Parent Account
    Sleep                     2s
    VerifyText                Website
    Sleep                     2s
    VerifyText                Jurisdiction
    Sleep                     2s
    VerifyText                Registration Number
    Sleep                     2s
    VerifyText                Society in China
    Sleep                     2s
    VerifyText                Account Name (TR)
    Sleep                     2s
    VerifyText                Chinese City
    Sleep                     2s
    VerifyText                Chinese Country
    Sleep                     2s
    VerifyText                Chinese State
    Sleep                     2s
    VerifyText                Chinese Street
    Sleep                     2s
    VerifyText                Chinese Zip/ Postal Code
    Sleep                     2s
    VerifyText                Organisation Address
    Sleep                     2s

    VerifyText                ECH Actual Start Date
    Sleep                     2s
    VerifyText                ECR Id
    Sleep                     2s
    VerifyText                ECH Classification
    Sleep                     2s
    VerifyText                Parent ECR Id
    Sleep                     2s
    VerifyText                ECH City
    Sleep                     2s
    VerifyText                ECH Postcode
    Sleep                     2s
    VerifyText                ECH Region
    Sleep                     2s
    VerifyText                ECH Registration State
    Sleep                     2s
    VerifyText                ECH Country
    Sleep                     2s
    VerifyText                ECH Business Division
    Sleep                     2s
    VerifyText                ECH Customer Set
    Sleep                     2s
    VerifyText                ECH Sales Division
    Sleep                     2s
    VerifyText                ECH End Date
    Sleep                     2s
    VerifyText                ECH Send Date 
    Sleep                     2s               
    VerifyText                ECH Last Modified Date
    Sleep                     2s
    VerifyText                ECH Update Date
    Sleep                     2s
    VerifyText                ECH Send Error
    Sleep                     2s
    VerifyText                ECH Created Date
    Sleep                     2s
    VerifyText                ECH Send To
    Sleep                     2s
    VerifyText                External Reference
    Sleep                     2s

    VerifyText                Description
    Sleep                     2s
    VerifyText                OPCO Representative 
    Sleep                     2s
    VerifyText                Signature Image
    Sleep                     2s
    VerifyText                OpCo Role 
    Sleep                     2s
    VerifyText                Operating Company Number
    Sleep                     2s


*** Test Cases ***
3. ACCOUNT DELETION
    VerifyText                Delete
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s



    