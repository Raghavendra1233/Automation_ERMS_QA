# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Modify report type
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Reports

    
    ClickText                 All Reports
    Sleep                     2s
    TypeText                  Search all reports...    v2\n
    Sleep                     2s
    VerifyText                CJR Duplicates v2
    Sleep                     2s
    ClickText                 CJR Duplicates v2 
    Sleep                     2s
    VerifyText                Edit nav items
    Sleep                     2s                     

    ClickText                 Edit    partial_match=False
    Sleep                     2s
    VerifyText                Publisher Display Name
    Sleep                     2s
    VerifyText                Journal: PMG: PMG Name
    Sleep                     2s
    VerifyText                Journal: PMG Number
    Sleep                     2s
    VerifyText                Journal: PMC: PMC Name
    Sleep                     2s
    VerifyText                Journal: PMC Number
    Sleep                     2s
    

    
