# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
3. SOCFOA- Page layout: make "Generate Agreement" button visible
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 SOCFOA
    Sleep                     2s
    TypeText                  Search this list...    CON-049519\n
    Sleep                     2s
    VerifyText                CON-049519
    Sleep                     1s
    ClickText                 CON-049519
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    
    VerifyText                Is Draft
    Sleep                     1s
    VerifyText                Status
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s