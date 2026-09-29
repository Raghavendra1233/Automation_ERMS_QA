# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
8. LET - timetable field needs to be required
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
    LaunchApp                 Contact Journal Relations

    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 Recently Viewed
    TypeText                  Search this list...    CJR - 1497625\n
    Sleep                     2s
    ClickText                 CJR - 1497625
    Sleep                     2s
    VerifyText                Long Editor Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Long Editor Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     30s                    

    

    ClickElement              /html[1]/body[1]/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/flowruntime-flow[1]/flowruntime-lwc-body[1]/div[1]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[4]/flowruntime-list-container[1]/div[1]/flowruntime-section-with-header[1]/lightning-accordion[1]/div[1]/slot[1]/lightning-accordion-section[1]/div[1]/section[1]/div[2]/slot[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[2]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[2]/flowruntime-lwc-field[1]/div[1]/flowruntime-lookup[1]/lightning-lookup[1]/lightning-lookup-desktop[1]/lightning-grouped-combobox[1]/div[1]/div[1]/lightning-base-combobox[1]/div[1]/div[1]/div[1]
    ComboBox                  Search Accounts...    3902Test
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
    
    

    ClickCheckbox             Supersede Existing Agreement    off
    Sleep                     2s
    ClickText                 Next
    Sleep                     5s

    ClickText                 Next
    Sleep                     5s

    DropDown                  What are the editor’s obligations relating to the timing of peer review?    The Editor Shall comply with the detailed timetable for handling and refereeing Articles set out in Annex
    Sleep                     3s
    VerifyText                *Describe the detailed timetable for handling and refereeing Articles
    Sleep                     3s