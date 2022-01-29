*** Settings ***
Library  SeleniumLibrary

Resource  ../Ressources/common.robot
Resource  ../Ressources/PageObject/PageAccueil.robot

Suite Setup  common.Begin Web Test

Suite Teardown  common.End Web Test



*** Test Cases ***
Voir Produits Disponibles
  PageAccueil.Charger La Page Web
  PageAccueil.Chercher Sur Site Web
  PageAccueil.Naviguer Vers Site Amazon
  PageAccueil.Rechercher la produit

