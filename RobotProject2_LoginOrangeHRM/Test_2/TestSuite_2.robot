*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
SampleLoginTest
    [Documentation]    This is a simple login test
    Open Browser    https://opensource-demo.orangehrmlive.com/    chrome
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    Admin  
    Input Text    id=txtPassword    admin123   
    Click Button    id=btnLogin    
    Click Element    id=welcome   
    Click Element    link=Logout
    Sleep    2  
    Log    Login Test Completed  
    Close Browser
    Log    Browser closed