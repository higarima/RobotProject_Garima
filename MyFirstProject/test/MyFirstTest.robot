*** Settings ***
Library    SeleniumLibrary    
Suite Setup    Log    this will run before suite one time    
Suite Teardown    Log    this will run one time after suite    
Test Setup    Log    this will run for every test    
Test Teardown    Log    this will run after every test    

Default Tags    Sanity

*** Test Cases ***
MyFirstTest1
    [Tags]    Smoke
    Log    HelloWorld... 
    
MySecondTest
    Log    In second test
    Set Tags    Regression1 
    Remove Tags    Regression1
    
MyThirdTest
    Log    in third test

MyFourthTest
    Log    in fourth test 
    
# MyFirstSeleniumTest
    # Open Browser   https://www.google.com    chrome  
    # Set Browser Implicit Wait                5    
    # Maximize Browser Window
    # Input Text    name=q                     selenium Automation
    # Press Keys    name=q    ENTER
    # Sleep         2   
    # # Click Button    name=btnK     
    # Close Browser 
    # Log    test is completed
    
# TestOrangeHrmLogin
    # [Documentation]    login for orange hrm
    # Open Browser   ${URL}     gc
    # Set Browser Implicit Wait    5
    # Maximize Browser Window
    # LoginKW
    # Sleep    4    
    # Click Element    id=welcome    
    # Click Element    link=Logout    
    # Close Browser       
    
# *** Variables ***
# ${URL}        https://opensource-demo.orangehrmlive.com/    
# @{credentials}    Admin    admin123
# &{LogiData}    username=Admin    Password=admin123

# *** Keywords ***
# LoginKW
    # Input Text    id=txtUsername    @{credentials}[0]
    # Input Password    id=txtPassword   &{LogiData}[Password]
    # Click Button    id=btnLogin