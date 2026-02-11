# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite

*** Test Cases ***
SOCFOA Interview Flow
    [tags]                    Sources
    Sleep                     4s
    Appstate                  Home
    Sleep                     4s
    LaunchApp                 Accounts
    Sleep                     4s

    ClickText                 Select a List View: Accounts
    ClickText                 All Accounts
    TypeText                  Search this list...    3902Test\n
    ClickText                 3902Test

    VerifyText                Society Full Open Access Contract
    Sleep                     1s
    VerifyText                Begin    anchor=Society Full Open Access Contract
    Sleep                     1s
    ClickText                 Begin
    Sleep                     10s
    
    VerifyText                Journal Title                 
    ${*Journal Title}=        Generate Random String      5-10 
    Sleep                     2s   
    TypeText                  Journal Title               ${*Journal Title}
    VerifyText                *Please enter the SVP for this Journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                *Please enter the Publishing Director for this Journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                *Please enter the Business Controller for this Journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                *Please enter the Publishing Assistant Editorial Contracts & Payments (PA ECP) for this journal:
    ComboBox                  Search Contacts...    Georgina Joyce
    VerifyText                If you are working with a member of the Society Business Development team on this contract, please add their name here: 
    ClickCheckbox             Is the Journal transferring to Elsevier from another publisher?    on
    ClickCheckbox             Is the Journal transferring to Elsevier from another publisher?    off
    VerifyText                Please select the Operating Company for this title:
    VerifyText                Elsevier B.V.
    ClickText                 Select Item 1
    VerifyText                *When will the term of this agreement begin?
    ClickText                 Select a date for When will the term of this agreement begin?
    ClickText                 Today
    VerifyText                *When will the term of this agreement end?
    VerifyText                *In what currency will any amounts due under this agreement payable?
    DropDown                  In what currency will any amounts due under this agreement payable?    GBP - British Pound
    ClickText                 Next



    ClickCheckbox             Society Signee Exists in ERMS    on
    ComboBox                  Search Contacts...    Contact Record3/14/2025-2
    VerifyText                *Society Signee Name
    ClickText                 Next


    VerifyText                Journal Title:
    VerifyText                Journal OpCo: 
    VerifyText                Society Name:
    VerifyText                *What rights is the Journal obtaining from authors for Open Access Articles?
    VerifyText                *Will the Journal be:
    DropDown                  Will the Journal be:    The official Journal of the [Society Name]
    ClickText                 Next


    

    ClickCheckbox             Will there be a maximum number of Editorial Board Members?    on
    VerifyText                *What is the maximum number of members on the Editorial Board?
    TypeText                  What is the maximum number of members on the Editorial Board?    10
    VerifyText                *Does the Editor-in-Chief appoint Editorial Board members or nominate candidates for the Board?
    DropDown                  Does the Editor-in-Chief appoint Editorial Board members or nominate candidates for the Board?    Appoint Editorial Board members
    ClickCheckbox             Will the Society/Publisher also be appointing other Editors in addition to the Editor-in-Chief?    on
    ClickCheckbox             Will the Editor-in-Chief and editorial office use the Publisher's submission system?    on
    VerifyText                *Who will select and/or replace the Editor-in-Chief (and other editors)?
    ClickText                 Next


    VerifyText                *Is this journal page or article based?
    DropDown                  Is this journal page or article based?    Page
    ClickCheckbox             Would you like to include Annual Meeting Abstracts?    on
    ClickCheckbox             Will the publisher be entitled to recoup its direct costs of producing and distributing the annual meeting abstracts?    on
    VerifyText                *The Publisher will produce annual meeting abstracts:
    DropDown                  The Publisher will produce annual meeting abstracts:    At a cost
    VerifyText                *The Publisher will produce annual meeting abstracts:
    VerifyText                What's the cost for each page?
    TypeText                  What's the cost for each page?    23
    VerifyText                *How will APCS be paid?
    DropDown                  How will APCS be paid?    Authors pay all of the APCS
    VerifyText                What types of articles will be published in the Journal?
    ClickCheckbox             full length research papers    on
    ClickCheckbox             Review type articles    on
    ClickCheckbox             short communications    on
    ClickCheckbox             case reports    on
    ClickCheckbox             data    on
    ClickCheckbox             short survey    on
    ClickCheckbox             Other types of article will be published in the Journal    on
    VerifyText                *Enter other article type(s) that will appear in the Journal                
    TypeText                  Enter other article type(s) that will appear in the Journal    QA YT
    VerifyText                *On demand copies...
    DropDown                  On demand copies...    The Society is entitled to purchase print on demand copies at the price schedule provided by the Publisher
    ClickCheckbox             Will the Publisher offer a discount to the Open Access Fee to Members of the Society?    on
    VerifyText                *Discount on the Open Access Fee shall only apply to Articles for which:
    DropDown                  Discount on the Open Access Fee shall only apply to Articles for which:    Corresponding author is a Member
    VerifyText                *What percentage of discount shall be offered to the Members on the Open Access Fee to the Journal for Articles
    TypeText                  What percentage of discount shall be offered to the Members on the Open Access Fee to the Journal for Articles    3
    VerifyText                *How will the Open Access Fees be determined?
    DropDown                  How will the Open Access Fees be determined?    Same fee for all article types
    VerifyText                *What will be the Open Access Fee?
    TypeText                  What will be the Open Access Fee?    5
    VerifyText                *Future Increases to the Open Access Fees. After the first year of the contract term:
    DropDown                  Future Increases to the Open Access Fees. After the first year of the contract term:    Any increase is determined by the Publisher in its sole discretion
    VerifyText                *In what MONTH will increases to the Open Access Fee be suggested for the following year?
    DropDown                  In what MONTH will increases to the Open Access Fee be suggested for the following year?    January
    ClickCheckbox             Will any changes to print size, format, design, etc. be upon mutual agreement of the parties?    on
    ClickCheckbox             The Publisher will consult the Editor-in-Chief in regard to the Production Schedule    on
    ClickCheckbox             Do you want to include a certain number and type of Articles to be published in the Journal each year?    on
    VerifyText                *Enter the number and type of Articles to be published in the Journal each year
    TypeText                  Enter the number and type of Articles to be published in the Journal each year    qa
    ClickCheckbox             Will there be a limit to the number of volumes and issues published each year?    on
    VerifyText                *How many times each year will the Journal be published?
    TypeText                  How many times each year will the Journal be published?    2
    VerifyText                *How many volumes will there be each year?
    TypeText                  How many volumes will there be each year?    2
    ClickCheckbox             Will the Society/Publisher pay/grant APC waivers, for XX number of articles, to be offered to authors as APC waivers, at the Society’s/Publisher’s discretion?    on
    VerifyText                *Who will be entitled to grant waivers?
    ClickCheckbox             Publisher    on
    VerifyText                *How many waivers can be granted?
    TypeText                  How many waivers can be granted?    3
    ClickCheckbox             Will Society Content be published in the Journal at no charge to the Society?    on
    VerifyText                *Up to how many pages of Society Content will we include in the Journal?
    TypeText                  Up to how many pages of Society Content will we include in the Journal?    4
    ClickCheckbox             Will there be placement restrictions for society content?    on
    TypeText                  Please state the placement restrictions:    4
    VerifyText                *Please state the placement restrictions:
    VerifyText                ANY EDITS TO SUPPLEMENTAL ISSUES LANGUAGE THAT ARE COMMERCIAL IN NATURE, SUCH AS RATES, TIMING AND FREQUENCY, REQUIRE PRIOR APPROVAL FROM NICOLE JOHNSON/PROJECT MANAGERS - ANY EDITS OR QUESTIONS RELATED TO COMPLIANCE REQUIRE PRIOR APPROVAL FROM SIMON ADAMS. COMPLIANCE ISSUES MAY BE REVIEWED IN THE RULES OF THE ROAD DOCUMENT AND INCLUDE ISSUES RELATED TO: SPONSOR TRANSPARENCY SUCH AS DISCLOSURE OF SUPPLEMENT ORIGIN, FUNDING, AND CONTENT ORIGIN; CONFLICTS OF INTEREST; EDITORIAL INDEPENDENCE FROM SPONSORS; COMPLIANCE WITH ETHICS LAWS; RULES TO REUSE JOURNAL CONTENT; AND OVERALL THE PROTECTION OF ELSEVIER'S REPUTATION.
    VerifyText                *Select one of the following for the pricing of supplements  
    DropDown                  Select one of the following for the pricing of supplements    The Publisher shall establish the pricing for all supplements
    VerifyText                *Select one of the following for the pricing of supplements
    ClickCheckbox             Will the Publisher establish pricing only for third party supplements?    on
    VerifyText                *What is the charge per Page for supplements sponsored by the Society?
    TypeText                  What is the charge per Page for supplements sponsored by the Society?    5
    ClickCheckbox             In the event of any change in Society’s policies that may have a material negative impact on prospective revenues, including supplements, reprints, advertisements, or other commercial streams, the parties shall meet to negotiate an amendment to share the financial impact of any such changes.    on
    ClickText                 Next