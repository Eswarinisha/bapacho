*** Settings ***
Library    SeleniumLibrary
   

Default tags     RegressionTest


Resource     Customerkeywords.robot 
Resource     MerchantOnboardingkeywords.robot
Resource     CMSkeywords.robot

*** Test Cases ***

#DASHBOARD

MO016TC001	# Merchant must be able to login via Bapacho site
    
    Open_Bapachosite
    Login_as_Merchant
    Capture Page Screenshot    
    Close Browser
    
MO017TC001	# Merchant must be able to view orders for pickup today
    
    Open_Bapachosite
    Login_as_Merchant
     
