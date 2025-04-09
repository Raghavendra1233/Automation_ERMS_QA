# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Contract Agreements related list to be visible on Society Account record
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
    
