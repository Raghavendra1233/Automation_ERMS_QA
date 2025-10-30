# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Library    QForce
Resource                      ../resources/common.robot
Suite Setup                   Setup Browser
Suite Teardown                End suite


*** Test Cases ***

CJR Creation and FR-LET Interview Flow 
    [tags]                    Sources
    Appstate                  Home
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
    ComboBox                  Search Journals...    JFNCR04
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
    
    
    VerifyText                Contrat de Rédacteur – Elsevier Masson
    Sleep                     2s
    VerifyText                Begin              anchor=Contrat de Rédacteur – Elsevier Masson
    Sleep                     2s
    ClickText                 Begin              anchor=Contrat de Rédacteur – Elsevier Masson
    Sleep                     2s
    VerifyText                Nom de Rédacteur: 
    Sleep                     2s
    VerifyText                Titre: 
    Sleep                     2s
    VerifyText                Adresse: 
    Sleep                     2s
    Sleep                     2s
    VerifyText                *Quel est le statut juridique du Rédacteur?
    Sleep                     2s
    DropDown                  Quel est le statut juridique du Rédacteur?    Personne physique
    VerifyText                Contrat de Rédacteur – Elsevier Masson
    Sleep                     2s
    VerifyText                Nom de la Revue: 
    Sleep                     2s
    VerifyText                Nom de la Revue: 
    VerifyText                Acronyme: 
    VerifyText                Propriété de la revue: 
    VerifyText                Description de la propriété du journal: 
    ScrollTo                  *Date de début du contrat
    Sleep                     2s
    ClickText                 Select a date for    anchor=Date de début du contrat
    Sleep                     1s
    VerifyText                Today
    Sleep                     1s
    ClickText                 Today
    Sleep                     1s
    ClickText                 Next
    Sleep                     10s
    
    