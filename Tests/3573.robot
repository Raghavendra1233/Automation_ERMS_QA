# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Update the registered address for the Elsevier Spain account due to office relocation.
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
