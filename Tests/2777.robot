# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
LET - timetable field needs to be required
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations

    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    TypeText                  Search this list...    CJR - 1497625\n
    Sleep                     2s
    ClickText                 CJR - 1497625
    Sleep                     2s
    VerifyText                Long Editor Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Long Editor Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     20s

    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=Contract Start Date
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    ClickText                 Next
    Sleep                     5s

    ClickText                 Next
    Sleep                     5s

    ClickText                 Next
    Sleep                     5s

    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The Editor Shall comply with the detailed timetable for handling and refereeing Articles set out in Annex
    Sleep                     3s
    VerifyText                *Describe the detailed timetable for handling and refereeing Articles
    Sleep                     3s