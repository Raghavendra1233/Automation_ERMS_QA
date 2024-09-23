# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
SCM users don't have read permission on 'PRM member updated' field
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations

    

    VerifyText    CJR - 1318848
    TypeText    Search this list...    CJR - 1318848
    ClickText    CJR - 1318848
    ClickText    Begin


    UseModal    On
    DropDown    *    Physical Person
    ComboBox    Search Accounts...    QA TESTING1
    ClickText    Select a date for    anchor=*Contract Start Date
    ClickText    Today
    ClickText    Next
   
   

    ClickCheckbox    on
    ClickCheckbox    on
    TypeText    /html[1]/body[1]/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/flowruntime-flow[1]/flowruntime-lwc-body[1]/div[1]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[4]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[2]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[10]/flowruntime-lwc-field[1]/div[1]/c-input-rich-text-fsc[1]/div[1]/lightning-input-rich-text[1]/div[1]/div[1]/div[1]/div[2]/div[1]    QA Testing CRT
    ClickText    Next
    ClickText    Next
    
    

    ClickCheckbox    on
    PickList    Country    Afghanistan
    TypeText    Street    Test
    TypeText    City    oxford
    TypeText    Zip/Postal Code    123456
    ClickText    Next
    
    

    DropDown    *    AED - UAE Dirham
    ClickCheckbox    on
    ClickCheckbox    on
    ClickCheckbox    on
    DropDown    Annual
    ClickCheckbox    January    on
    ClickCheckbox    off
    ClickCheckbox    off
    ClickCheckbox    off
    ClickCheckbox    on
    TypeText    Amount_to_be_paid_to_the_editorNum    1234
    ClickText    Next
    


    TypeText    How_many_months_termination_notice_period_should_the_Editor_give    1
    DropDown    *    QA STAFF
    TypeText    /html[1]/body[1]/div[4]/div[2]/div[1]/div[2]/div[1]/div[2]/div[1]/flowruntime-flow[1]/flowruntime-lwc-body[1]/div[1]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[2]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[2]/flowruntime-list-container[1]/div[1]/flowruntime-base-section[1]/div[1]/flowruntime-screen-field[8]/flowruntime-lwc-field[1]/div[1]/c-input-rich-text-fsc[1]/div[1]/lightning-input-rich-text[1]/div[1]/div[1]/div[1]/div[2]/div[1]    QA Test
    ClickText    Next
    ClickText    Finish
