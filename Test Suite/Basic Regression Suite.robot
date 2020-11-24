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

Merchant Onboarding	  #Without Online Payment
    
  
    Open_CMS
    Merchant Activation (Without Online payment)
    Open_Bapachosite
    Merchant Onboarding without Online Payment   
    Close Browser 
    
#Step 1 Created merchant must reflect on Customer Site  

    Open_Bapachosite
    Click_bakeries
    Type_To_Search_bakery_MerchantwithoutOnlinePayment
    Capture Page Screenshot
    Close Browser    
    
#Step 2 Created merchant must reflect on Sales Agent portal

    Open SalesagentPortal
    Login as SalesAgent
    Search Merchant
    Capture Page Screenshot 
    Close Browser   
    

Merchant Portal	  #Add products
    Open_Bapachosite
    Login_as_Merchant without online payment
    



