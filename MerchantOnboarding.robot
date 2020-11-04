*** Settings ***
Library    SeleniumLibrary
   

Default tags     RegressionTest


Resource     Customerkeywords.robot 
Resource     MerchantOnboardingkeywords.robot
Resource     CMSkeywords.robot

*** Test Cases ***

#FMO001	MERCHANT CREATION

MO001TC001	# CMS admin must be able to create Bakery

    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Create_NewMerchant
    Wait Until Page Contains    ${MerchantName}
    Capture Page Screenshot      
    Close Browser
   
MO001TC002	#CMS admin must be able to search the bakery
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Search myBakery in CMS
    Capture Page Screenshot    
    Close Browser
    
MO002TC001	#CMS admin can enter any details of the merchant in CMS
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Search myBakery in CMS
    Enter email address in CMS
    Capture Page Screenshot    
    Close Browser
    
MO003TC001	#CMS admin must be able to send activation email
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Search myBakery in CMS
    Send activation mail from CMS to Merchant       
    Capture Page Screenshot  
    OpenYopMailinchrome
    Check Merchant Activation mail  
    Wait Until Page Contains    Setup your online Shop     
    Close All Browsers
    

     

MO005TC001	# Merchant can register password
    OpenYopMailinchrome
    Check Merchant Activation mail  
    Select Window    NEW 
    Step_1
    Close All Browsers
    
MO005TC002	#Merchant can view details in "Need Help"
    OpenYopMailinchrome
    Check Merchant Activation mail  
    Select Window    NEW 
    Step_1
    Click_Step1 Need Help?
    Close All Browsers
    
MO005TC003	# Merchant can view Terms and conditions
    OpenYopMailinchrome
    Check Merchant Activation mail  
    Select Window    NEW 
    Step_1
    T&C_Merchant Step 1
    Close All Browsers
    

MO006TC001	# Merchant must be able to fill address,email id,phone number for orders, public phone number 
      
    Open_Bapachosite
    Login_as_Merchant
    Step_2
    Capture Page Screenshot
    Close Browser
    
MO006TC002	# Merchant must be able to click on Need Help
    Open_Bapachosite
    Login_as_Merchant
    Step_2
    Capture Page Screenshot
    Close Browser
    
MO007TC001	# Merchant must be able to enter About your company,website,facebook page
    Open_Bapachosite
    Login_as_Merchant
    Step_2
    Step_3
    Capture Page Screenshot
    Close Browser
    
MO008TC001	# Merchant must be able to choose one or more products
    Open_Bapachosite
    Login_as_Merchant
    Step_3
    Step_4
    Capture Page Screenshot
    Close Browser
    
MO009TC001	# Merchant must be able to choose delivery options and preparation time
    Open_Bapachosite
    Login_as_Merchant
    Step_4_click next
    Step_5
    Capture Page Screenshot  
    Close Browser
    
  
    
    