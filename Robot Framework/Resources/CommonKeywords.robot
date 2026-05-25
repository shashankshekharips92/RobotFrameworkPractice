*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser and goto URL
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Close All Browsers
    Close Browser
Take Screenshot on Failure
    Capture Page Screenshot
    