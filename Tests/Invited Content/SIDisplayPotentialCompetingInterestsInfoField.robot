# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***

1. Make the "Potential competing interests info" field visible on the page layout of a SI record
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s

    ClickText                 Setup
    Sleep                     1s
    ClickText                 Opens in a new tab
    SwitchWindow              NEW
    ClickText                 User
    TypeText                  Search Setup    Test CAS
    ClickText                 Test CAS
    Sleep                     2s
    ClickText                 Test CAS
    Sleep                     2s
    VerifyText                Login
    Sleep                     2s
    ClickText                 Login
    Sleep                     1s
    LaunchApp                 Invited Content

    ClickText                 Select a List View: Invited Content
    Sleep                     1s
    ClickText                 My Special Issues
    Sleep                     1s
    VerifyText                abc
    Sleep                     1s
    ClickText                 abc

    VerifyText                Potential competing interests
    Sleep                     1s
    VerifyText                Potential competing interests info
    Sleep                     1s
    VerifyText                Other Active Special Issues
    Sleep                     1s
    

    ClickText                 Edit Potential competing interests info
    Sleep                     2s
    TypeText                  Potential competing interests info    Automation Testing
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s

    ClickText                 Edit Potential competing interests info
    Sleep                     2s
    TypeText                  Potential competing interests info    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s