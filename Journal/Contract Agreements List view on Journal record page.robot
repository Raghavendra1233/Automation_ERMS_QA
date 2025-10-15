# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

5. Contract Agreements List view on Journal record page
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Journals 


    ClickText                 JrlTest
    Sleep                     1s
    ClickText                 Related
    Sleep                     1s
    VerifyText                Contract Agreements
    Sleep                     1s
    VerifyText                Contract Agreement Name
    Sleep                     1s
    VerifyText                Effective Date
    Sleep                     1s
    VerifyText                Expiration Date
    Sleep                     1s