# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Updates to text on ERMS homepage re: Conga
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Home

    VerifyText                ERMS/Conga Training:
    Sleep                     1s
    VerifyText                Conga – Contracts in ERMS
    Sleep                     1s
    VerifyText                Training Recordings
    Sleep                     1s
    VerifyText                Training Decks
    Sleep                     1s
    VerifyText                Publisher How to Guides
    Sleep                     1s
    VerifyText                ECP How to Guides
    Sleep                     1s
    VerifyText                FAQs
    Sleep                     1s