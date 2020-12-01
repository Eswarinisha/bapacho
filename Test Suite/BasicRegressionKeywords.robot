*** Settings ***
Library    SeleniumLibrary
   

Resource    BapachoVariables.robot
Resource    Customerkeywords.robot 
Resource    Merchantkeywords.robot
Resource    CMSkeywords.robot
Resource    BasicRegressionKeywords.robot

***Keywords***

Type_To_Search_bakery_MerchantwithoutOnlinePayment
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']     ${MerchantName without payment}
        Click Element          //button[2]/i
        
Select a bakery from list_MerchantwithoutOnlinePayment
         BuiltIn.Sleep    2       
         Click Element    (//div[@class='text-success'])[1]
        
PDP_AddtoCart_MerchantwithoutOnlinePayment
        Scroll Element Into View    (//div[@class='productCard'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        
Type_To_Search_bakery_Merchant with Online Payment
        Click_bakeries
        Click Element    //button[2]/i
        SeleniumLibrary.Input Text    //input[@name='keywordInput']     ${MerchantName}
        Click Element          //button[2]/i
    
Select a bakery from list with Online Payment
         BuiltIn.Sleep    2       
         Click Element    (//div[@class='text-success'])[1]
         
PDP_AddtoCart_Merchant with OnlinePayment
        Scroll Element Into View    (//div[@class='productCard'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        Click Element    (//i[@class='fas fa-plus fa-fw'])[1]  
        
        