*** Settings ***
Library     SeleniumLibrary
Resource    ../Locators/HomePageLocators.robot

*** Keywords ***
Go To Home Page
    Go To    ${HOME_URL}
    Wait Until Element Is Visible    ${HEADING}
    
Verify Homepage is Loaded
    Element Should Be Visible    ${HEADING}
    Element Should Be Visible    ${SUBHEADING}
    Page Should Contain    Welcome to the-internet
Verify All links are Visible
    Element Should Be Visible    ${A/B Testing}
    Element Should Be Visible    ${Add/Remove Elements}
    Element Should Be Visible    ${Basic Auth}
    Element Should Be Visible    ${Broken Images}
    Element Should Be Visible    ${Challenging DOM}
    Element Should Be Visible    ${Checkboxes}
    Element Should Be Visible    ${Context Menu}
    Element Should Be Visible    ${Digest Authentication}
Navigate To A/B Testing
    Click Element    ${A/B Testing}
    Wait Until Page Contains    A/B Test Variation 1
Navigate To Add/Remove Elements
    Click Element    ${A/B Testing}
    Wait Until Page Contains    Add/Remove Elements
Navigate To Broken Images
    Click Element    ${Broken Images}
    Wait Until Page Contains    Broken Images
Navigate To Basic Auth
    Click Element    ${Basic Auth}
Navigate To Challenging DOM
    Click Element    ${Challenging DOM}
    Wait Until Page Contains    Challenging DOM
Navigate To Checkboxes
    Click Element    ${Checkboxes}
    Wait Until Page Contains    Checkboxes
Navigate To Context Menu
    Click Element    ${Context Menu}
    Wait Until Page Contains    Context Menu
Navigate To Digest Authentication
    Click Element    ${Digest Authentication}
