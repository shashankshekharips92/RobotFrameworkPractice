*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonKeywords.robot
Resource    ../Pages/HomePage.robot
Resource    ../Pages/ABTestingPage.robot

*** Variables ***
${URL}    https://the-internet.herokuapp.com/
${Browser}    chrome

*** Test Cases ***

TC1 - Verify Welcome Page
    [Documentation]    Verify the-internet homepage loads correctly
    [Tags]    Smoke    Homepage
    Open Browser and goto URL    ${URL}    ${Browser}
    Verify Homepage is Loaded
    Close All Browsers
TC2 - Verify All Links Present
    [Documentation]    Verify All links are Present in Homepage
    [Tags]    Regression    Navigation
    Open Browser and goto URL    ${URL}    ${Browser}
    Verify All links are Visible
    Close All Browsers
TC3 - Test A/B Testing
    [Documentation]    Test A/B Testing Page
    [Tags]    Regression
    TRY
        Open Browser and goto URL    ${URL}    ${Browser}
        Navigate To A/B Testing
        Element Should Be Visible    ${A/B_Testing_Heading}
    EXCEPT    AS    ${error_message}
        Log    Error was ${error_message}
        Take Screenshot on Failure
    END
