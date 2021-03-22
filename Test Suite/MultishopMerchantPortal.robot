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


*** Test Cases ***

Merchant Portal End to End 
        
    Open MultishopHomePage
    Login as MultishopMerchant
    Connect to Online payment
    Print all Orders for TODAY
    Order/Product Details TODAY
    Create new product category    
    Create new Product Category
    Delete product category
    Create new Product Category
    Create new own product
    Delete product category Failing
    Delete created own category product
    Delete product category
    Add Zeelandia product from library
    Choose Plan
    Add New Location
    Open Location1 - my page 
    Close All Browsers
    Open MultishopHomePage
    Login as MultishopMerchant
    View My locations
    My Orders
    My Teams
    Online payment Settings
    

    
     
    
    

    