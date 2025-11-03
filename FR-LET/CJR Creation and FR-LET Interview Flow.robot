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

    VerifyText                *Quels types d'articles contient cette Revue?
    Sleep                     2s
    VerifyText                des travaux de recherche complets
    Sleep                     2s
    VerifyText                des communications courtes
    Sleep                     2s
    VerifyText                des articles de revue
    Sleep                     2s
    VerifyText                des communiqués
    Sleep                     2s
    VerifyText                des correspondances
    Sleep                     2s
    ClickCheckbox             des travaux de recherche complets    on
    Sleep                     2s
    VerifyText                *Qui est habilité à nommer le Comité de Rédaction ? Choisissez une alternative
    Sleep                     2s
    DropDown                  Qui est habilité à nommer le Comité de Rédaction ? Choisissez une alternative    L'Editeur, en consultation avec le Rédacteur, nommera le Comité de rédaction, l'éditeur ayant le droit final de décision
    Sleep                     2s
    VerifyText                Le texte inclus dans la case vide ci-dessous est FACULTATIF et peut être utilisé pour l'une ou l'autre des deux raisons suivantes :
    Sleep                     2s
    VerifyText                1) Si dans le cadre de ce contrat, le rédacteur en chef en partage son rôle avec d'autres corédacteurs, par exemple lorsqu'il y a deux corédacteurs en chef pour cette revue, vous pouvez énumérer les responsabilités de chaque corédacteur en chef afin de bien distinguer ou séparer leurs responsabilités ; 
    Sleep                     2s
    ClickCheckbox             Souhaitez-vous décrire en Annexe 1.5/1.6/1.7 les responsabilités du Rédacteurs de cette Revue?    on
    Sleep                     2s
    ClickCheckbox             Souhaitez-vous décrire en Annexe 1.5/1.6/1.7 les responsabilités des autres Rédacteurs de cette Revue?    on
    Sleep                     2s
    TypeText                  Annexe 1.5/1.6/1.7    QA TESTING-1
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s


    VerifyText                *Qui a la responsabilité éditoriale finale?
    Sleep                     2s
    DropDown                  Qui a la responsabilité éditoriale finale?    Le Rédacteur a la responsabilité éditoriale finale
    Sleep                     2s
    VerifyText                *Qui a la responsabilité éditoriale finale?
    Sleep                     2s   
    ClickCheckbox             Est-ce qu'une clause de non-concurrence doit être insérée pour le Rédacteur ?    on
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s

    VerifyText                *Est-ce que les modalités de production seront déterminées par l'Editeur en consultation avec le Rédacteur ?
    Sleep                     2s
    DropDown                  Est-ce que les modalités de production seront déterminées par l'Editeur en consultation avec le Rédacteur ?    Oui, en consultation avec le Rédacteur
    Sleep                     2s    
    ClickCheckbox             Est-ce que le Rédacteur mettra en place un Comité de Rédaction pour la Revue ?    on
    Sleep                     2s   
    PickList                  Country    Afghanistan
    Sleep                     2s
    TypeText                  Street    Street-1
    Sleep                     2s
    TypeText                  City    City-1
    Sleep                     2s
    TypeText                  Zip/Postal Code    12345
    Sleep                     2s
    VerifyText                *Quelles sont les obligations du Rédacteur en ce qui concerne le calendrier de l'examen par les pairs?
    Sleep                     2s
    VerifyText                La durée totale du processus d'approbation et de gestion par le Rédacteur et par le Comité de Rédaction ne doit normalement...
    Sleep                     2s
    VerifyText                Le Rédacteur se conformera au calendrier détaillé relatif à la gestion et à la sélection des Articles mentionné en Annexe 3.5.
    Sleep                     2s
    VerifyText                Le Rédacteur fera ses meilleurs efforts pour prendre en charge et sélectionner des Articles de façon rapide  
    Sleep                     2s
    ClickText                 La durée totale du processus d'approbation et de gestion par le Rédacteur et par le Comité de Rédaction ne doit normalement...
    Sleep                     2s
    VerifyText                *Combien de semaines au total pour le processus d'approbation et de gestion par le Rédacteur et le Comité de rédaction ?
    Sleep                     2s
    TypeText                  Combien de semaines au total pour le processus d'approbation et de gestion par le Rédacteur et le Comité de rédaction ?    2
    Sleep                     2s
    ClickCheckbox             Souhaitez-vous inclure une clause pour que le Rédacteur réponde aux Sondages de Rétroaction des Rédacteurs ?    on
    Sleep                     2s
    ClickCheckbox             Souhaitez-vous inclure une clause obligeant le Rédacteur à collaborer avec l'Editeur pour obtenir la cession des droits d'auteur ?    on
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s

    VerifyText                *En quelle devise le Rédacteur va-t-il être payé?
    Sleep                     2s   
    ClickCheckbox             Est-ce que le Rédacteur sera payé sur factures?    on
    Sleep                     2s
    VerifyText                *Quel est le montant annuel dû au Rédacteur ?
    Sleep                     2s
    TypeText                  Quel est le montant annuel dû au Rédacteur ?    5
    Sleep                     2s
    VerifyText                *Quelle est la fréquence du paiement de la rémunération ?
    Sleep                     2s
    DropDown                  Quelle est la fréquence du paiement de la rémunération ?    Annuel
    Sleep                     2s
    VerifyText                *Veuillez sélectionner le mois. au cours duquel les paiements d'honoraires seront effectués
    Sleep                     2s
    ClickCheckbox             Janvier    on
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s

    VerifyText                *Quelle durée de préavis souhaitez-vous donner en cas de résiliation avec motifs du contrat par l'éditeur?
    Sleep                     2s
    VerifyText                *Quelle durée de préavis le Rédacteur devra-t-il donner s'il souhaite rompre le contrat?
    Sleep                     2s
    VerifyText                *Veuillez sélectionner le signataire
    Sleep                     2s
    DropDown                  Veuillez sélectionner le signataire    Staff ContactNEW
    Sleep                     2s
    VerifyText                Incluez Objectifs et Domaines dans la case ci-dessous (copiez l'information depuis la page d'accueil de la Revue)
    Sleep                     2s
    ClickText                 Next
    Sleep                     2s
    ClickText                 Finish
    Sleep                     2s
    ClickText                 Finish
    Sleep                     10s




   
