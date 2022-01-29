*** Settings ***
Library  SeleniumLibrary
Resource  ../Variables.robot

*** Keywords ***
Charger La Page Web

   Go To  ${GOOGLE_URL}
   Wait Until Page Contains  Google
Chercher Sur Site Web

   click element  xpath=//*[@id="L2AGLb"]/div
   clear Element Text  name=q
   Input Text  name=q  amazon
   CLICK Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
   Wait Until Page Contains  Images
Naviguer Vers Site Amazon
  click element  xpath=//*[@id="rso"]/div[1]/div/div/div/div/div/div/div[1]/a/h3
  Wait Until Page Contains  Commandes
Rechercher la produit
    clear Element Text  xpath=//*[@id="twotabsearchtextbox"]
    input text  xpath=//*[@id="twotabsearchtextbox"]  ordinateur
     Wait Until Page Contains  ordinateur