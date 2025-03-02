*** Settings ***
Resource        ../pageObjects/base.robot
Resource        ../pageObjects/homePage/homePage.robot
Resource        ../pageObjects/loginPage/loginPage.robot
Test Setup        Run Keyword    Open Flight Application
Test Teardown                   Close Flight Application


*** Test Cases ***
User should be able to login with valid data
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Success Login

User should not be able to login with invalid username
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${INVALID_USERNAME}
    Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Error Login

User should not be able to login with invalid password
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    Input Password    password=${INVALID_PASSWORD}
    Click Sign In Button
    Verify Error Login

User should not be able to login with an empty Enter username field
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Password    password=${VALID_PASSWORD}
    Click Sign In Button
    Verify Error Login

User should not be able to login with an empty Enter password field
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}
    Click Sign In Button
    Verify Error Login

User should not be able to login with all fields empty
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Click Sign In Button
    Verify Error Login