*** Settings ***
Documentation    Test case pour expliquer les sections
...              sous Robot Framework
Library  SeleniumLibrary

*** Variables ***
${browser1}    chrome
${browser2}    firefox
${URL_SIM}     https://sim.97.preprod.instant-system.com/fr/
*** Keywords ***
Open navigateurChrome
    open browser     ${URL_SIM}   ${browser1}
    maximize browser window

*** Test Cases ***
Acceder a la page d accueil
    Open navigateurChrome
    Set Browser Implicit Wait                      5
    click element                                  is-TabLink_Schedule
    page should contain element                    is-SchedulesInput
    click element                                  is-SchedulesInput
    input text                                     is-SchedulesInput    a
    Sleep                                          2    
    



