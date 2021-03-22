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
Merchant onboarding
  
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Create_NewMultishopMerchant
    Search MultishopBakery in CMS  
    Send activation mail from CMS to Merchant  
    Capture Page Screenshot
    Sleep    2
    OpenGmail
    Step1 : Account
    Close All Browsers
    Open MultishopHomePage
    Login as MultishopMerchant
    TEMP:Step1
    Step 2: Business information
    Step 4 : Shop  
    Step 5 : Products
    Step 6 : Done
    Close Browser
    
Customer placing order by cash
    
    Open_Bapachosite
    Click_login
    EmailLogin
    Click_bakeries
    Change_CurrentLoction_BDP
    Type_To_Search_bakery with Online payment
    Select a bakery from list
    PDP_AddtoCart
    BuiltIn.Sleep    2  
    PDP_Click_Checkout
    Choose_delivery
    User_Fill_Checkoutpage   
    Cashpay_OrderNow
    Close Browser
    
Customer placing order by Card
    Open_Bapachosite
    Click_login
    EmailLogin
    Click_bakeries
    Change_CurrentLoction_BDP
    Type_To_Search_bakery with Online payment
    Select a bakery from list
    PDP_AddtoCart
    BuiltIn.Sleep    2  
    PDP_Click_Checkout
    Choose_delivery
    User_Fill_Checkoutpage 
    Cardpay_OrderNow
    Close Browser
    
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