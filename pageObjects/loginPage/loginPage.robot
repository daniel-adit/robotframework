*** Settings ***
Library        AppiumLibrary

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${INVALID_USERNAME}      adit@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_PASSWORD}        123abc


*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]

Input Username
    [Arguments]       ${username}
    Input Text        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]        text=${username}

Input Password
    [Arguments]       ${password}
    Input Text        locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]        text=${password}

Click Sign In Button
    Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]

Verify Success Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]

Verify Error Login
    Wait Until Page Contains Element    locator=//android.widget.Toast[@text="Invalid username/password"]