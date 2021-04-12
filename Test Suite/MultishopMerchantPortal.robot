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
    Accept and view Order
    My Teams
    Online payment Settings
    View Multishop plan
    Close Browser
     
Decline order 
    Open MultishopHomePage
    Login as MultishopMerchant   
    My Orders
    Decline the new order
    

Edit Zeelandia product from library
    Open MultishopHomePage
    Login as MultishopMerchant
    Edit Zeelandia product from library
    Close Browser
    
Check Deleted product reflects in CMS
    Open MultishopHomePage
    Login as MultishopMerchant   
    Create new product category   
    Create new own product
    Delete created own category product
    Open_CMS
    View Product Name in CMS

Create new own product without choosing location
    Open MultishopHomePage
    Login as MultishopMerchant 
    Create new own product without choosing location
    Close Browser

Check deleted category appears again
    Open MultishopHomePage
    Login as MultishopMerchant
    Create new Product Category
    Delete product category
    Create new own product
    Close Browser
    
Refund and Partial Order
    Open MultishopHomePage
    Login as MultishopMerchant
    My Orders
    Refund order
    Partial Order
    Close Browser
    

    