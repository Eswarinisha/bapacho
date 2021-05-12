*** Settings ***
Library    SeleniumLibrary

Default tags     RegressionTest


Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
Resource    Customerkeywords.robot 
Resource    MultishopMerchantPortalkeywords.robot
Resource    MultishopOnboardingkeywords.robot
Resource    SalesAgentkeywords.robot
Resource    CMSkeywords.robot

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Multishop Merchant Onboarding Screenshots


*** Test Cases ***

    
Multishop Merchant Onboarding_without Online Payment
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Create_NewMultishopMerchant
    Click_Outlets/Stores
    Search MultishopBakery in CMS  
    Send activation mail from CMS to Merchant  
    Capture Page Screenshot
    Sleep    2
    OpenGmail
    Step1 : Account
    Close All Browsers
    Open MultishopHomePage
    Login as MultishopMerchant
    #TEMP:Step1
    Step 2: Business information
    Step 4 : Shop  
    Step 5 : Products
    Step 6 : Done
    Close Browser
    Check onboarded mail received
    Close Browser
    

    
    