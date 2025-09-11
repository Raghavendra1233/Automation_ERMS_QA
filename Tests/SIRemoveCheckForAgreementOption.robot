# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***

Remove option 'Check for agreement' from potential competing interest field
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Invited Content


    ClickText                 Select a List View: Invited Content
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    SP-1\n
    Sleep                     1s
    ClickText                 SP-1
    Sleep                     1s
    ClickText                 Edit Potential competing interests
    Sleep                     1s
    PickList                  Potential competing interests    Yes
    Sleep                     1s
    PickList                  Potential competing interests    No
    Sleep                     1s
    ClickText                 Cancel
    Sleep                     1s
