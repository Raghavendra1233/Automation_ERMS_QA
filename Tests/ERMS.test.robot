# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
PRM Welcome Letter template request for Non-Serial records from Conga
    [tags]                    Contacts
    Appstate                  Home