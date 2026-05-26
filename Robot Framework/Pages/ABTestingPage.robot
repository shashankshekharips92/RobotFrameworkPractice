*** Settings ***
Library    SeleniumLibrary
Resource    ../Locators/ABTestingPageLocators.robot

*** Keywords ***
Verify AB Testing Page Opened
    Element Should Be Visible    ${A/B_Testing_Heading}