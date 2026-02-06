# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

LET Approvals Workflow
    [tags]                    Sources
    Appstate                  Home
    Sleep                     10s
    LaunchApp                 Contact Journal Relations 
    Sleep                     2s
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
    ClickText                Cancel and close
    Sleep                    20s


    ClickText                Related
    Sleep                    3s
    ClickText                06
    Sleep                    3s
    VerifyText               CON-
    Sleep                    3s
    ClickText                CON-

    

    ClickText                Edit Status
    Sleep                    3s
    PickList                 *Status    In Process
    Sleep                    3s
    ClickText                Save
    Sleep                    10s
    ClickText                Edit Clause Generation Status
    Sleep                    3s
    PickList                 Clause Generation Status    Generating
    Sleep                    3s
    ClickText                Save
    Sleep                    30s
    ClickText                Related
    Sleep                    3s
    VerifyText               MC-369
    Sleep                    3s
    ClickText                MC-369
    Sleep                    3s
    

    ClickText                Edit Latest Revision Text (Rich)
    Sleep                    3s
    TypeText                 Latest Revision Text (Rich)    For the purpose of performing the editorial activities under this Agreement (including all editorial communications) the Editor shall use the Publisher’s preferred electronic submission system. The Editor shall use all functionality provided by that system in order to ensure that the review and publication process for the Journal operates on a timely and transparent basis and shall in addition regularly update the Publisher’s database of reviewers for the Journal contained in the submission system. The Editor acknowledges and agrees that certain automated messages and/or messages from staff working on the Journal may be sent out on behalf of the Editor and/or Journal via that system in order to facilitate the editorial review process and assist the Editor in managing the overall editorial workload.QA TEST
    Sleep                    3s
    ClickText                Save
    Sleep                    3s
    VerifyText               CON-
    Sleep                    3s
    ClickText                CON-
    Sleep                    3s
    VerifyText               Generate Agreement
    Sleep                    3s
    ClickText                Generate Agreement
    Sleep                    90s
    VerifyText               Return to Contract Agreement
    Sleep                    3s
    ClickText                Return to Contract Agreement
    Sleep                    3s
    VerifyText               Preview & Submit Approvals
    Sleep                    3s
    ClickText                Preview & Submit Approvals
    Sleep                    90s
    VerifyText               Utkarsh Tiwary  
    Sleep                    3s           
    
