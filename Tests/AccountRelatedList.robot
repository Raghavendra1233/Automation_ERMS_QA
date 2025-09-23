# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
1. Contract Agreements related list to be visible on Society Account record
    [tags]                    Sources
    Appstate                  Home
    
    LaunchApp                 Accounts
    Sleep                     1s
    ClickText                 Select a List View: Accounts
    Sleep                     1s
    ClickText                 Societies
    Sleep                     1s
    ClickText                 Academic Pediatric Association
    Sleep                     1s
    ClickText                 Details
    Sleep                     1s
    ClickText                 Related
    Sleep                     1s
    VerifyText                Contract Agreements
    Sleep                     1s
    VerifyText                CON-049306
    Sleep                     1s
    VerifyText                CON-049307
    Sleep                     1s
    VerifyText                CON-049316
    Sleep                     1s
    VerifyText                CON-049315
    Sleep                     1s
    VerifyText                CON-049317
    Sleep                     1s
    VerifyText                CON-049321
    Sleep                     1s
    
*** Test Cases ***
2. Update the registered address for the Elsevier Spain account due to office relocation.
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Accounts

    ClickText                 Select a List View: Accounts
    Sleep                     2s
    ClickText                 Elsevier_accounts
    Sleep                     2s
    ClickText                 Elsevier España S.L.U
    Sleep                     2s
    VerifyText                Organisation Address
    Sleep                     2s
    VerifyText                Carrer Tarragona N. 161, 15th Floor
    Sleep                     2s
    VerifyText                Barcelona
    Sleep                     2s
    VerifyText                08029
    Sleep                     2s
    VerifyText                Spain
    Sleep                     2s  


*** Test Cases ***
3. Typo in country list provided needs to be corrected
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Accounts

    ClickText                 Select a List View: Accounts
    Sleep                     2s
    ClickText                 My Accounts
    Sleep                     2s
    ClickText                 ECH Test account
    Sleep                     2s
    ClickText                 Details
    Sleep                     2s
    VerifyText                South Georgia and the South Sandwich Islands
    Sleep                     2s  
    
