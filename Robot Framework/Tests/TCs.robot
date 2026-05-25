*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonKeywords.robot
Resource    ../Pages/HomePage.robot

*** Variables ***
${URL}    https://the-internet.herokuapp.com/
${Browser}    chrome

*** Test Cases ***

TC1 - Verify Welcome Page
    [Documentation]    Verify the-internet homepage loads correctly
    [Tags]    Smoke    Homepage
    Open Browser and goto URL    ${URL}    ${Browser}
    Go To Home Page
    Verify Homepage is Loaded
    Close All Browsers
TC2 - Verify All Links Present
    [Documentation]    Verify All links are Present in Homepage
    [Tags]    Regression    Navigation
    Open Browser and goto URL    ${URL}    ${Browser}
    Go To Home Page
    Verify All links are Visible
    Close All Browsers
