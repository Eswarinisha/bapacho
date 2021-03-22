*** Settings ***
Library    SeleniumLibrary
Library    pyautogui
Library    ImageHorizonLibrary
   


Default tags     RegressionTest

Resource     Bapacho Variables.robot
Resource     Bapacho Credentials.robot
Resource     BasicRegressionKeywords.robot
Resource     Customerkeywords.robot 
Resource     Merchantkeywords.robot
Resource     CMSkeywords.robot

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Merchant Site Screenshots

*** Test Cases ***
  
    # MO017	    Dashboard

MO017TC001_Merchant must be able to view orders for pickup today
    #Guest user placing a Cash pay order
    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment
    Capture Page Screenshot    
    View Orders for pickup today
    Capture Page Screenshot    
    Close Browser
        
MO017TC002_Merchant must be able to view orders for future days  
    
    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment
    Capture Page Screenshot   
    View Orders for future today     
    Close Browser
         
MO017TC003_Merchant must be able to click the order and view in separate page
    
#MO017TC005	#Merchant must be able to click on Order/product details and view it

    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment
    Capture Page Screenshot   
    View Orders for pickup today 
    Scroll to Download Order Confirmation 
    Close Browser 
         
MO017TC004_Merchant must be able to Print all orders 
    #Guest user placing a Cash pay order
    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment
    Capture Page Screenshot   
    View Orders for pickup today
    Print all orders
    Close Browser
        
    
MO018TC001_Merchant must be able to create new product category
    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment
   # Create new product category
    Close Browser    
    
MO020TC004_Merchant must be able to delete product category with no products under them
    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment 
   # Delete product category 
    Close Browser  


MO018TC002_Merchant must be able to add product details
    
#MO019TC001	 #Merchant must be able to view the newly added product and existing products

    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment
    #Create new product category
    #Create new own product
    Close Browser
        

MO018TC003_Merchant must be able to delete product from own category
    
#MO019TC003	 #Merchant must be able to remove the products

    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment    
    #Delete created own category product
    Close Browser

MO020TC005_Merchant must not be able to delete product category with products under them
    Open_Bapachosite
    Click_login
    Login_as_Merchant without online payment  
    #Delete product category Failing
    
    Close Browser  
    
MO020TC002_Merchant must be able to add new zeelandia product
    Open_Bapachosite
    Login_as_Merchant without online payment
    #Add Zeelandia product from library
    Close Browser

MO021TC002_Merchant must be able to edit opening hours  
    Open_Bapachosite   
    Login_as_Merchant without online payment
    Edit opening time in Portal
    Click Mypage
    Click show more information
    Close All Browsers
     
MO022TC002_Merchant must be able to edit delivery times and save
    Open_Bapachosite   
    Login_as_Merchant without online payment
    Edit delivery time in Portal
    Click Mypage
    Click show more information
    Close All Browsers
  
MO024TC003_Merchant must be able to cancel order
    Guest user placing a Cash pay order
    Open_Bapachosite   
    Login_as_Merchant without online payment
    Select an order from Merchant's My order list
    Change order status to Cancel
    Change payment status to Refund
    Close Browser
    
MO024TC005_Merchant can change his order status and payment status   
#O024TC001	#Merchant must be able to view orders for pickup/delivery

    Guest user placing a Cash pay order   
    # Preparing
    Open_Bapachosite   
    Login_as_Merchant without online payment   
    Select an order from Merchant's My order list
    Change order status to Preparing
   # Ready for pickup or delivery
    Change order status to Ready for pickup
    #Change order status to Ready for delivery
    
#Picked up or Delivered
    Change order status to Picked up
    #Change order status to Delivered
    
#Payment status to paid 
    Change payment status to paid   
    Close Browser

  
    