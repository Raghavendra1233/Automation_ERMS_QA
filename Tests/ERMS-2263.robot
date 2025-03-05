# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
ERMS support notification: Editor email update in RH matches other existing contact
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 
    
    

    
    

    
