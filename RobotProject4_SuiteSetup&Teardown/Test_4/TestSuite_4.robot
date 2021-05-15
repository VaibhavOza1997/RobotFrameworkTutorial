*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    From Test Suite Setup
Suite Teardown    Log    From Test Suite Teardown
Test Setup    Log    From Test Setup
Test Teardown    Log    From Test Teardown

*** Test Cases ***
SampleLoginTest
    [Documentation]    This is a simple login test
    Open Browser    ${URL}    chrome
    Set Browser Implicit Wait    5
    LoginKW    
    Click Element    id=welcome   
    Click Element    link=Logout
    Sleep    2  
    Log    Login Test Completed  
    Log    Test was executed by %{username} on %{os}
    Close Browser
    Log    Browser closed
    
*** Variables ***
${URL}   https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button    id=btnLogin 














