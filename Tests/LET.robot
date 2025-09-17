# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
********LET Interview Flow-1*******
     
    ## 1. CJR Creation ##

    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations 
    Sleep                     1s
    VerifyText                New
    Sleep                     2s
    ClickText                 New
    Sleep                     10s
    UseModal                  On
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ComboBox                  Search Contacts...    Georgina Joyce
    Sleep                     2s
    PickList                  Role    Accepting Editor
    Sleep                     2s
    ComboBox                  Search Journals...    JrlTest
    Sleep                     2s
    PickList                  Classifications    2
    Sleep                     2s
    ClickText                 Select a date for Start Date
    Sleep                     2s
    ClickText                 Today
    Sleep                     2s
    ClickText                 Save    partial_match=False
    Sleep                     2s
    UseModal                  Off
    Sleep                     10s
    
    ## 2. LET Flow ##

    VerifyText                Long Editor Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Long Editor Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     10s

    ScrollTo                  *Contract Start Date
    Sleep                     2s
    ClickText                 Select a date for    anchor=Contract Start Date
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    
    VerifyText               Agreement Currency
    Sleep                    1s
    DropDown                 Agreement Currency    AUD - Australian Dollar
    Sleep                    1s
    ClickText                Next
    Sleep                    1s

    VerifyText               *Please pick a signatory for this contract  
    Sleep                    1s
    DropDown                 Please pick a signatory for this contract    Georgina Joyce
    Sleep                    1s
    ClickText                Next
    Sleep                    1s
    ClickText                Finish



# 2. Generate Document button visibility-LET
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    

    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049451\n
    Sleep                     2s
    ClickText                 CON-049451
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  *Status    Expired
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Renew Long Editor Contract
    Sleep                     2s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                My Approvals
    Sleep                     2s
    VerifyText                Sharing
    Sleep                     2s

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049451\n
    Sleep                     2s
    ClickText                 CON-049451
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  *Status    Ready For Signature
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    VerifyText                Send with CongaSign
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     4s
    VerifyText                My Approvals
    Sleep                     2s
    VerifyText                Sharing
    Sleep                     2s

    LaunchApp                 Contract Agreements
    ClickText                 Select a List View: Contract Agreements
    Sleep                     2s
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049451\n
    Sleep                     2s
    ClickText                 CON-049451
    Sleep                     2s
    ClickText                 Edit Status
    Sleep                     2s
    PickList                  *Status    In Signatures
    Sleep                     2s
    ClickText                 Save
    Sleep                     2s
    VerifyText                File Delete
    Sleep                     2s
    VerifyText                Send for Negotiations
    Sleep                     2s
    VerifyText                View Redline
    Sleep                     2s
    ClickText                 Show more actions
    Sleep                     2s
    VerifyText                My Approvals
    Sleep                     2s
    VerifyText                Sharing
    Sleep                     2s


# 3. Currency field is mandatory on LET Interview flow
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contact Journal Relations

    ClickText                 Select a List View: Contact Journal Relations
    Sleep                     1s
    ClickText                 All
    Sleep                     1s
    TypeText                  Search this list...    CJR - 1497648\n
    Sleep                     1s
    ClickText                 CJR - 1497648
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
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    ClickText                 Next
    Sleep                     1s

    VerifyText               Agreement Currency
    Sleep                    1s
    ClickText                Next
    Sleep                    1s
    VerifyText               Please select a choice.


# 4. First contracted date in LET no longer being prepopulated in Renewal Flow
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     1s
    
    ClickText                 Select a List View: Contract Agreements
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049560\n
    Sleep                     1s
    ClickText                 CON-049560
    Sleep                     1s
    VerifyText                LET
    Sleep                     1s

    VerifyText                Renew Long Editor Contract
    Sleep                     2s
    ClickText                 Renew Long Editor Contract
    Sleep                     10s
    ScrollTo                  Date of Editor's First Term 
    Sleep                     1s


# 5. 'Managed Clauseses' Typo on the Contract Agreement page layout
    [tags]                    Sources
    Appstate                  Home
    LaunchApp                 Contract Agreements
    Sleep                     4s
    

    ClickText                 Select a List View: Contract Agreements
    ClickText                 Long Editor Contracts
    Sleep                     2s
    TypeText                  Search this list...    CON-049549\n
    Sleep                     2s
    VerifyText                CON-049549
    Sleep                     1s
    ClickText                 CON-049549
    Sleep                     1s
    VerifyText                LET
    Sleep                     1s
    VerifyText                Managed Clauses
    ClickText                 Managed Clauses