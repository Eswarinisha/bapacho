*** Settings ***
Library    SeleniumLibrary
Library    pyautogui
Library    ImageHorizonLibrary
   


Default tags     RegressionTest


Resource     Customerkeywords.robot 
Resource     Merchantkeywords.robot
Resource     CMSkeywords.robot

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Merchant Site Screenshots

*** Test Cases ***
  
    # MO017	    Dashboard

MO017TC001	# Merchant must be able to view orders for pickup today
    #Guest user placing a Cash pay order
    Open_Bapachosite
    Login_as_Merchant without online payment
    Capture Page Screenshot    
    View Orders for pickup today
    Capture Page Screenshot    
    Close Browser
        
MO017TC002	# Merchant must be able to view orders for future days  
    
    Open_Bapachosite
    Login_as_Merchant without online payment
    Capture Page Screenshot   
    View Orders for future today     
    Close Browser
         
MO017TC003	# Merchant must be able to click the order and view in separate page
    Open_Bapachosite
    Login_as_Merchant without online payment
    Capture Page Screenshot   
    View Orders for pickup today 
    Scroll to Download Order Confirmation  
         
MO017TC004	# Merchant must be able to Print all orders 
    Guest user placing a Cash pay order
    Open_Bapachosite
    Login_as_Merchant without online payment
    Capture Page Screenshot   
    View Orders for pickup today
    Print all orders
    Capture Page Screenshot    
    
MO018TC001	# Merchant must be able to create new product category
    Open_Bapachosite
    Login_as_Merchant without online payment
    Create new product category
    Close Browser    

MO018TC002	# Merchant must be able to add product details
    Open_Bapachosite
    Login_as_Merchant without online payment
    Create new own product
    
       
    