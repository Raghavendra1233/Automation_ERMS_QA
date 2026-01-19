# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

JGM Sorting Order
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 ERMS
    Sleep                     10s
    LaunchApp                 Journals
    