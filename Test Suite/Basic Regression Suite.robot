*** Settings ***
Library    SeleniumLibrary
   

Default tags     RegressionTest

Resource    BapachoVariables.robot
Resource    Customerkeywords.robot 
Resource    Merchantkeywords.robot
Resource    SalesAgentkeywords.robot
Resource    CMSkeywords.robot
Resource    BasicRegressionKeywords.robot


*** Test Cases ***

BRC001  # Merchant Onboarding	  Without Online Payment
    
  
    Open_CMS
    Merchant Activation (Without Online payment)
    Open_Bapachosite
    Merchant Onboarding without Online Payment   
    Close Browser 
    
#Step 1 # Created merchant must reflect on Customer Site  

    Open_Bapachosite
    Click_bakeries
    Type_To_Search_bakery_MerchantwithoutOnlinePayment
    Capture Page Screenshot
    Close Browser    
    
#Step 2 # Created merchant must reflect on Sales Agent portal

    Open SalesagentPortal
    Login as SalesAgent
    Search Merchant
    Capture Page Screenshot 
    Close Browser   
    

BR003	# Merchant Portal	    Add products
    
#Step 1    # Created new category and product
   
    Open_Bapachosite
    Login_as_Merchant without online payment
    Create new product category
    Create new own product
    Close Browser
    
#Step 2    # Added category and products must reflect on CMS
    
    Open_CMS
    CMSAdmin_Login
    View Product Category in CMS
    View Product Name in CMS
    Close Browser
    
#Step 3    # Added category and products must reflect on Customer Site
     Open_Bapachosite
     Click_bakeries
     Type_To_Search_bakery_MerchantwithoutOnlinePayment
     Select a bakery from list_MerchantwithoutOnlinePayment
     PDP_AddtoCart_MerchantwithoutOnlinePayment
     Set Browser Implicit Wait    5
     PDP_Click_Checkout
     Choose_delivery
     Guestuser_Fill_Checkoutpage  
     Cashpay_OrderNow
     Capture Page Screenshot    
     
         
        
    





