*** Settings ***
Library        AppiumLibrary

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]


Click Sign In Button On Home Screen
    Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]
