# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Change to role translation value for Associate Editor in Chief
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    ClickText                 FR-LET
    Sleep                     4s
    ClickText                 Created Date
    ClickText                 CON-049505
    Sleep                     4s
    
    
    ClickElement              /html[1]/body[1]/div[8]/div[1]/img[1]
    Sleep                     2s
    VerifyText                Show all data 
    Sleep                     2s
    ClickText                 Show all data
    Sleep                     2s
    VerifyText                Label
    Sleep                     2s
    ClickText                 TR Role
    Sleep                     2s
    VerifyText                Rédacteur en chef-adjoint
    Sleep                     3s




