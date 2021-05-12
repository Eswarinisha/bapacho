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

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Multishop Merchant Site Screenshots

*** Test Cases ***

Merchant Portal End to End 
#PART 1        
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
    Open Location - my page 
    Close All Browsers

PART 2
    
    Open MultishopHomePage
    Login as MultishopMerchant
    View My locations
    My Orders
    Accept and view Order
    My Teams
    OpenGmailManager
    Activate Manager
    Online payment Settings
    View Multishop plan
    Close Browser
     
Decline order 
    Open MultishopHomePage
    Login as MultishopMerchant   
    My Orders
    Decline the new order
    Close Browser

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
    Partial Order Refund
    Close Browser
    
Filter Location and Orders
    Open MultishopHomePage
    Login as Manager
    Filter location by Name
    Go Back
    Filter location by Option
    My Orders
    Filter Orders by Period
    Filter Orders by Location
    Filter Orders by Status
    Accept and view Order
    Close Browser


Manager End to End
    
    Open MultishopHomePage
    Login as Manager
    Manager View My locations
    Filter location by Name
    Go Back
    Filter location by Option
    Manager My Orders
    Filter Orders by Period
    Filter Orders by Location
    Filter Orders by Status
    Accept and view Order
    Close Browser
    
    
    