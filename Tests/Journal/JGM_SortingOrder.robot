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
    Sleep                     10s
    LaunchApp                 Journals

    ClickText                 Select a List View: Journals
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    JrlTest\n
    Sleep                     2s
    ClickText                 JrlTest
    Sleep                     2s
    ClickText                 Homepage Management
    Sleep                     2s
    ClickText                 Testing1
    Sleep                     2s
    SwitchWindow              NEW
    Sleep                     2s
    SwitchWindow              2
    Sleep                     2s
    ClickText                 Journal Group Members
    Sleep                     2s
    ClickText                 Sort Alphabetically
    Sleep                     2s
    ClickText                 Up
    Sleep                     2s
    ClickText                 Up
    Sleep                     2s
    ClickText                 Up
    Sleep                     2s
    ClickText                 Sort Alphabetically
    Sleep                     2s
