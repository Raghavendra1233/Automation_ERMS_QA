# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
3. ChinaSoc- Page layout: make "Generate Agreement" button visible
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Chinese Society Full OA Agreements
    Sleep                     2s
    TypeText                  Search this list...    CON-049541\n
    Sleep                     2s
    VerifyText                CON-049541
    Sleep                     1s
    ClickText                 CON-049541
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    
    VerifyText                Is Draft
    Sleep                     1s
    VerifyText                Status
    Sleep                     1s
    VerifyText                Generate Agreement
    Sleep                     1s