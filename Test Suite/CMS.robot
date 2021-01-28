*** Settings ***
Library    SeleniumLibrary
   

Default tags     RegressionTest

Resource    Bapacho Variables.robot
Resource     Customerkeywords.robot 
Resource    SalesAgentkeywords.robot

Test Setup    Set Screenshot Directory    C:/Users/Nisha/git/ta-bapacho/Bapacho/BapachoScreenshots/Customer Site Screenshots

*** Test Cases ***
# Product 
Product Categories	#CMS006	#Create,edit,duplicate and delete 
    Open_CMS
    CMSAdmin_Login
    View Product Category in CMS
    Close Browser
    
Product Attributes	#CMS007	#Create,edit,duplicate and delete 
    Open_CMS
    CMSAdmin_Login
    View Product Attribute in CMS
    Close Browser
    
Product Nutrition	#CMS008	 #Create,edit,duplicate and delete 
    Open_CMS
    CMSAdmin_Login
    View Product Nutrition in CMS
    Close Browser
    
Products	#CMS009	 #Create,edit,duplicate and delete 
    Open_CMS
    CMSAdmin_Login
    View Product Name in CMS
    Close Browser
    
#OUTLETS/STORES

CMS010	#Search Merchants with filters
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Search myBakery in CMS_without Payment
    Edit Store
    #Delete store
    Close Browser
    
CMS011	#Create,edit,duplicate and delete 
    Open_CMS
    CMSAdmin_Login
    Click_Outlets/Stores
    Create_NewMerchant_without Payment
    Enter email address in CMS
    Search myBakery in CMS_without Payment
    Edit Store
    Send activation mail from CMS to Merchant
    Close Browser
    
Clients	#CMS012	 #View Clients
    Open_CMS
    CMSAdmin_Login
    View Client
    Search Client
    
    
    
Orders	#CMS013	 #View Orders
    Open_CMS
    CMSAdmin_Login
    View Cancelled Orders under Orders
    Close Browser
    
FAQ	#CMS014	FAQ-Create,edit,duplicate and delete 
	# CMS015	FAQ Groups- Create,edit,duplicate and delete 
	# CMS016	FAQ Topics - Create,edit,duplicate and delete 
	#Languages	#CMS017	    #Create,edit,duplicate and delete 
    # Sales Agents	 #CMS018	Create,edit and Delete
    # CMS users	 #CMS019	Create,edit,duplicate and delete 
    # Settings	 #CMS020	Global Settings 
    Open_CMS
    CMSAdmin_Login
    CMS FAQ
    CMS Language
    CMS Sales Agent
    CMS Users
    Settings
    Global Settings
    VAT settings
    Delivery Options
    Payment Methods
    Close Browser
    

Sales Agent portal
    Open SalesagentPortal
    Login as SalesAgent
    Search Merchant
    Close Browser