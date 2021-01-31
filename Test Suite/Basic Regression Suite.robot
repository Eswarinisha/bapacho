*** Settings ***
Library    SeleniumLibrary


Default tags     RegressionTest

Resource    Bapacho Variables.robot
Resource    Bapacho Credentials.robot
Resource    Customerkeywords.robot 
Resource    Merchantkeywords.robot
Resource    MerchantOnboardingkeywords.robot
Resource    SalesAgentkeywords.robot
Resource    CMSkeywords.robot
Resource    BasicRegressionKeywords.robot

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Basic Regression Screenshots

*** Test Cases ***


BRC001  #Merchant Onboarding	  # Without Online Payment
#Step 1  # Create merchant in CMS   

        Open_CMS
        Merchant Activation (Without Online payment)
        Open_Bapachosite
        Merchant Onboarding without Online Payment   
        Close Browser   
           
#Step 2    # Created merchant must reflect on Customer Site  
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery_MerchantwithoutOnlinePayment 
        Select a bakery from list
        Close Browser    
    
#Step 2     # Created merchant must reflect on Sales Agent portal
        Open SalesagentPortal
        Login as SalesAgent
        Search Merchant
        Capture Page Screenshot 
        Close Browser   
        
BR003	# Merchant Portal	    # Add products
    
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
        Click_Outlets/Stores
        Search myBakery in CMS_without Payment
        Search products of Merchant
        Close Browser
    
#Step 3    # Added category and products must reflect on Customer Site
        Open_Bapachosite
        Click_bakeries
        Type_To_Search_bakery_MerchantwithoutOnlinePayment
        Select a bakery from list_MerchantwithoutOnlinePayment
        PDP_AddtoCart_MerchantwithoutOnlinePayment
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        # Choose_delivery
        Guestuser_Fill_Checkoutpage  
        Cashpay_OrderNow
        Capture Page Screenshot    
        Close Browser
         
BR004	#Merchant Portal	# Opening information,preparation time and siesta times    
   
#Step1    # Changing opening information,siesta times,preparation times and delivery time
        Open_Bapachosite
        Login_as_Merchant without online payment
        Change Opening information & siesta time
        Change preparation & delivery time
        Close Browser
    
#Step2   # Added information must reflect on Customer Site
        Open_Bapachosite     
        Click_login
        EmailLogin
        Click_bakeries
        Type_To_Search_bakery_MerchantwithoutOnlinePayment
        Select a bakery from list_MerchantwithoutOnlinePayment
        Click show more information
        PDP_AddtoCart_MerchantwithoutOnlinePayment
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        Choose_delivery
        #Guestuser_Fill_Checkoutpage
        User_Fill_Checkoutpage 
        Cardpay_OrderNow 
       # Cashpay_OrderNow
        Capture Page Screenshot      
        Close Browser
    
BR005	#Merchant Portal	# Order cancellation
    
#Step1   #Merchant cancels order from his portal    

        Open_Bapachosite
        Login_as_Merchant without online payment
        Select an order from Merchant's My order list
        Change order status to Cancel
        Close Browser
    
Step2   #Cancelled order must be reflected in Customer My order's list

        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Close Browser
        
#Step3   #Cancelled order must reflect on CMS
        Open_CMS
        CMSAdmin_Login
        View Cancelled Orders under Orders
        Close Browser
        
BR007	#Merchant Portal	# Refund

#Step1  #Customer places an online order using Merchant with Online payment
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_bakeries
        Change_CurrentLoction_BDP
        Select a bakery from list with Online Payment
        PDP_AddtoCart_Merchant with OnlinePayment
        Set Browser Implicit Wait    5
        PDP_Click_Checkout
        #Choose_delivery
        User_Fill_Checkoutpage    
        Onlinepay_Ordernow
        Card_Online_payment_process
        #iDEAL_Online_payment_process
        Close Browser  

#Step2  #Merchant cancels order from his portal    

        Open_Bapachosite
        Login_as_Merchant with online payment
        Select an order from Merchant's My order list
        Change order status to Cancel
        Change payment status to Refund
        
    
#Step3   #Order refund must reflect in Customer's My order list
        Open_Bapachosite
        Click_login
        EmailLogin
        Click_MyAccount
        Click_Myorders
        View_MyOrders
        Click_Myorders
        View_MyOrders_Refunded Order
        
#Step4  #Cancelled order must reflect on CMs
        Open_CMS
        CMSAdmin_Login
        View Cancelled Orders under Orders
        Close Browser
    


