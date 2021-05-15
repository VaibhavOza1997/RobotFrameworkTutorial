*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    From Test Suite Setup
Suite Teardown    Log    From Test Suite Teardown
Test Setup    Log    From Test Setup
Test Teardown    Log    From Test Teardown

Default Tags    Sanity

*** Test Cases ***
FirstTC
    [Tags]    Smoke
    Log    From 1st
SecondTC
    Log    From 2nd
    Set Tags    Regression 1
    Remove Tags    Regression 1
ThirdTC
    Log    From 3rd













