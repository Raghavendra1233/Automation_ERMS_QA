# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***
Special Issue Functionality
    [tags]                    Sources
    LaunchApp                 ERMS
    Sleep                     10s
    Sleep                     3s
    Appstate                  Home
    Sleep                     3s
    LaunchApp                 Invited Content

1. Special Issue Creation
    VerifyText                Create Special Issue                
    Sleep                     2s
    ClickText                 Create Special Issue
    Sleep                     2s
    TypeText                  New Special Issue Name    Special Issue Testing-2\n
    Sleep                     2s
    TypeText                  Short Special Issue Name    SITEST-2\n
    Sleep                     2s
    DropDown                  Expected Publication Year    2029
    Sleep                     2s
    DropDown                  Origins of Idea    CAS
    Sleep                     2s
    ClickText                 Next               
    Sleep                     2s
    ComboBox                  Search Journals...    JT-1
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s                            
    ClickText                 Next               anchor=No items to display.
    Sleep                     2s
    VerifyText                JSR
    Sleep                     2s
    ClickCheckbox             Select Item 1    on    partial_match=False
    Sleep                     2s
    ClickText                 Finish
    Sleep                     2s
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-2\n
    Sleep                     2s
    ClickText                 SITEST-2
    Sleep                     2s

*** Test Cases ***
2. Special Issue Fields
        # A. Synopsis
    VerifyText                Special Issue Name
    Sleep                     1s
    VerifyText                Record Type
    Sleep                     1s
    VerifyText                Short Special Issue Name
    Sleep                     1s
    VerifyText                Special Issue Keywords
    Sleep                     1s
    VerifyText                SI record unique identifier
    Sleep                     1s
    VerifyText                ASJC Codes
    Sleep                     1s
    VerifyText                Scope of the Special Issue
    Sleep                     1s
    VerifyText                Send Author Outreach Messages on Behalf
    Sleep                     1s
    VerifyText                Journal
    Sleep                     1s
    VerifyText                Editorial Manager URL
    Sleep                     1s 
    VerifyText                Other Issue Information
    Sleep                     1s
    VerifyText                Related PMCs
    Sleep                     1s
    VerifyText                Potential competing interests
    Sleep                     1s
    VerifyText                Related PMGs
    Sleep                     1s
    VerifyText                Potential competing interests info
    Sleep                     1s
    VerifyText                Project Code
    Sleep                     1s
    VerifyText                Acquire Date/Contracted Date
    Sleep                     1s
    VerifyText                Remarks
    Sleep                     1s
    VerifyText                Origins of idea
    Sleep                     1s
    VerifyText                Expected Publication Year
    Sleep                     1s
    VerifyText                CAS Owner
    Sleep                     1s
    VerifyText                Expected Publication Date
    Sleep                     1s
    VerifyText                CAS Assigned to
    Sleep                     1s
    VerifyText                Landing page request ID
    Sleep                     1s
    VerifyText                CAL Owner
    Sleep                     1s
    VerifyText                Landing Page URL
    Sleep                     1s
    VerifyText                CAL Assigned to
    Sleep                     1s
    VerifyText                CAS support level
    Sleep                     1s
    VerifyText                Issue/section ID
    Sleep                     1s
    VerifyText                Item Group Code
    Sleep                     1s
    VerifyText                Call for Papers Required
    Sleep                     1s
    VerifyText                Expected Publication Month
    Sleep                     1s

        # B. GE Information
    ScrollTo                  Primary Guest Editor
    Sleep                     1s
    VerifyText                Guest Editor Saved Date
    Sleep                     1s
    VerifyText                Overseeing Editor 
    Sleep                     1s
    VerifyText                Guest Editor Submitted Date 
    Sleep                     1s

        # C. Editorial Set Up
    VerifyText                Remarks for JM
    Sleep                     1s
    VerifyText                Anticipated article types
    Sleep                     1s
    VerifyText                Special Issue Type
    Sleep                     1s
    VerifyText                Special Issue Preferred Workflow
    Sleep                     1s
    VerifyText                Content Type
    Sleep                     1s
    VerifyText                Introductory text for websites
    Sleep                     1s
    VerifyText                Expected # Articles
    Sleep                     1s
    VerifyText                Full scope of the Special Issue
    Sleep                     1s
    VerifyText                Original Research Articles
    Sleep                     1s
    VerifyText                Multiple GE Flow
    Sleep                     1s
    VerifyText                Review Articles
    Sleep                     1s
    VerifyText                Article Waiver %
    Sleep                     1s
    VerifyText                prospective author invites by GE
    Sleep                     1s
    VerifyText                Short description (Science Direct)
    Sleep                     1s
    VerifyText                prospective author invites by CAS
    Sleep                     1s
    VerifyText                Subject area(s) of Special Issue
    Sleep                     1s
    VerifyText                Submission Open Date
    Sleep                     1s
    VerifyText                Editorial Service Level
    Sleep                     1s
    VerifyText                Final Date For Submission
    Sleep                     1s
    VerifyText                Final Manuscript Submission Deadline
    Sleep                     1s
    VerifyText                Editorial Acceptance Deadline
    Sleep                     1s

        # D. Commercial Details
    ScrollTo                  Production Type
    Sleep                     1s
    VerifyText                Signed Contract Necessary?
    Sleep                     1s
    VerifyText                Open Access Agreement
    Sleep                     1s
    VerifyText                Complimentary GE copies
    Sleep                     1s

        # E. Conferences
    VerifyText                Conference Venue Name
    Sleep                     1s 
    VerifyText                Conference Start Date 
    Sleep                     1s
    VerifyText                Conference Name 
    Sleep                     1s
    VerifyText                Conference Venue
    Sleep                     1s        
    VerifyText                Venue Name 
    Sleep                     1s

       # F. Publication Details
    ScrollTo                  Year of publication
    Sleep                     1s
    VerifyText                Article Collection SD URL
    Sleep                     1s
    VerifyText                Actual publication date
    Sleep                     1s
    VerifyText                Volume / Issue Number
    Sleep                     1s
    VerifyText                Actual number of articles
    Sleep                     1s
    VerifyText                Actual number of pages (for TSI)
    Sleep                     1s

        # G. Supplements(non commercial)
    ScrollTo                  Sponsor for Special Issue
    Sleep                     1s
    VerifyText                Sponsor Address Text
    Sleep                     1s
    VerifyText                Sponsored SI licence type
    Sleep                     1s
    VerifyText                Sponsor Country
    Sleep                     1s
    VerifyText                Sponsor Name Text
    Sleep                     1s
    VerifyText                Sponsor Name
    Sleep                     1s
    VerifyText                Sponsor Contact First Name Text
    Sleep                     1s
    VerifyText                Sponsor Contact Last Name Text
    Sleep                     1s
    VerifyText                Sponsor Contact Email 
    Sleep                     1s

        # H. Approvals
    ScrollTo                  Publisher Approval
    Sleep                     1s
    VerifyText                Editor-in-Chief Approval
    Sleep                     1s
    VerifyText                Society Approval 
    Sleep                     1s                                 

*** Test Cases ***    
3. SI DELETION CODE
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-2\n
    Sleep                     2s
    ClickText                 SITEST-2
    Sleep                     2s
    ClickText                 Related
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    UseModal                  On
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    LaunchApp                 Invited Content
    SLeep                     2s
    ClickText                 Select a List View: Invited Content
    Sleep                     2s
    ClickText                 All
    Sleep                     2s
    TypeText                  Search this list...    SITEST-2\n
    Sleep                     2s
    ClickText                 Show Actions
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s
    ClickText                 Delete
    Sleep                     2s