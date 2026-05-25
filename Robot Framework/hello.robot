*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.google.com
${BROWSER}  chrome
${URL1}     https://the-internet.herokuapp.com/

*** Test Cases ***
TC1
    Open Browser    ${URL}    ${BROWSER}
    goToHomePage
    


*** Keywords ***

goToHomePage
    Go To    ${URL1}
